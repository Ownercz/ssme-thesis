---
layout: post
title: Designing Secure Mining Environment
subtitle: Miners and Mining Operations
tags: [mining,xmr-stak,monero]
gh-badge: [star, fork, follow]
---

The goal of this Chapter is to design and develop secure and reason-
ably easy way how to set up and run mining operations on any scale.
Inspired by both results from the Monero Miners Research as well as
industry standards of large scale IT operations, the main emphasis is
placed on the automation and security aspect of the whole system.
Repository containing all the code from this Chapter is publicly
available in the GitHub repository mentioned in the Appendix Figure
A. Video showing the implementation of the system can be found in
the Section 9.5.

### 9.1 Automation

Automation is a key aspect for designing and running IT operations
that are secure, up-to-date, scalable and easy to maintain. To do that,
the proposed mining node provisioning scheme is divided into two
parts, first being OS installation with early configuration and second
is the automated configuration of provisioned nodes using Ansible.
Workflow is described in the Figure 9.1.

## 9.1 Deployment nodes workflow.

### 9.2 Ansible introduction


Ansible is an IT automation engine that in this case is used for config-
uration and application management of local mining nodes [69].
Playbook is a YAML formatted file that provides the declaration of
hosts and plays that are executed when running the playbook.
Hosts file declares connection information about hosts, e.g., IP and
login credentials.

**ansible-playbook -i hosts xmr01.yml** is a CLI command that exe-
cutesxmr01.ymlplaybook file and takes connection information about
hosts and groups involved from thehostsfile.

### 9.3 Linux-based solution

**9.3.1 Kickstart installation media**

To easily scale the mining operation, every bit of the software provi-
sioning has to be automated. This part describes a process of creating
automated CentOS 7 or RHEL 7 installation media with minimal pack-
age installation without GUI.

The first step is to obtain installation media at https://www.ce
ntos.org/download/. After downloading the Minimal ISO version,
extract the iso file into a separate folder. From there navigate to the
isolinuxfolder and editisolinux.cfgconfiguration file.
For reference,CentOS-7-x8664-Minimal-1804.isowas used in
the following steps.

Isolinux.cfg file

Four changes are needed to get the installation process working:

- timeoutproperty changed from 600 to 50 (seconds * 10).
- Change the boot menu to go straight for the install.
- Edit paths for the custom ISO image.
- Add kickstart file entry.
<pre>
<@\textcolor{blue}{timeout 50}@>
# only relevant part of the file is displayed
label linux
menu_label ^Install CentOS 7
<@\textcolor{blue}{menu_default}@>
kernel vmlinuz
append initrd=initrd.img <@\textcolor{blue}{inst.ks=hd:LABEL=CENTOS:/
ks/ks.cfg inst.stage2=hd:LABEL=CENTOS}@> quiet
</pre>

## 9.2 Customised installator entry.

The kickstart file is a single file that contains all OS installation param-
eters for RHEL based operating systems [70]. This installation method
enables automated provisioning of machines without the need for
the administrator input. When the file is presented to the installer, it
reads the required parameters resulting in the unattended installation
process [71].

The created kickstart file for CentOS 7 mining installation media
is available in the Appendix Figure F.1.

**9.3.3 Generating ISO**

The specific process of packaging extracted CentOS installation media
back into the iso file varies by the used operating system. In both
mentioned scenarios, few specific parameters have to be set:

- Boot image file/isolinux/isolinux.bin
- Updated boot information table
- Volume label for ISO9660 and UDF set toCENTOS(depends on
    the configuration that is set in theisolinux.cfgfile).

Once files are prepared, packaging into the iso at Linux is done by
one-liner command:
mkisofs -o centos7.iso -b isolinux.bin -c boot.cat
-no-emul-boot -V CENTOS -boot-load-size 4 -boot-info-table
-R -J -v -T isolinux/.

After installation from the ISO that was prepared with the kickstart file,
the target machine is accepting SSH connections under root account
using password-based authentification. Without proper configuration,
this would leave machine open to brute force attempts for the root
account.
Ansible uses following set of files to provision mining nodes with
software and configuration:
<pre>
/
xmr01.yml
hosts
ansible.cfg
roles/
ansible-sw-common-apps
ansible-sw-firewalld
ansible-sw-ntp
ansible-sw-postfix
ansible-sw-sshsec
ansible-sw-xmrstak
ansible-sys-hostname
ansible-user-add
ansible-yum-cron
ansible-yum-update
</pre>
## 9.4 Ansible prepared roles.

- Xmr01.ymlrepresents a playbook file that defines what group
    of nodes will be provisioned together with the list of roles that
will be applied to them.
Hostsfile contains groups of hosts with information on how
Ansible can connect to them.
- Ansible.cfgwas used only in the testing environment where
    host key checking was disabled.
- Rolesfolder contains roles that are applied when running the
    playbook.

To make Linux mining nodes updated and secure, following roles
were written:

ansible-sw-common-apps

The common baseline for all mining nodes that consists of the follow-
ing tasks:

1. Ensure EPEL (Extra Packages for Enterprise Linux) repository
    is configured or install it.
2. Install the following packages:htop, rsync, screen, tmux,
    iftop, iotop, nano, git, wget, unzip, mc.

ansible-sw-firewalld

Installs and enables the firewalld service that has default policy for
connections set to thepublic networkand accepts incoming connec-
tions only for SSH service.

ansible-sw-ntp

To report correct information through the web interface of the mining
software, the target machine has to be in sync with NTP servers to do
that role establishes the following:

1. Packagentpdateinstalled from the CentOS repository.
2. Ensures correct timezone usingtimedatectlinterface.
3. Creates daily cronjob for synchronization of system time.

ansible-sw-postfix

Sets up email gateway for correct email delivery together with internal
mail aliases mapped to a single outbound address. Email gateway can
deliver email on its own to the recipient’s server or can also act as a
relay to Gmail account that is used for sending out emails.

Using Gmail account is preferred as this solution is an Internet
Service Provider (ISP) agnostic (blocked SMTP and SSMTP commu-
nication for outbound connections at the ISP level would be a problem
for the gateway mode).

Separate Gmail account for sending out email alerts is recom-
mended as Postfix has login credentials saved in/etc/postfix/sasl
passwdfile in plaintext [70]. This can be made more secure if the
credentials file has appropriate permissions, e.g., ownership set to
root, the group to wheel and chmod changed to 0600.

ansible-sw-sshsec

Takes care about incoming SSH connections in case somebody wants
to try brute force attack on the mining machine. After a predefined
amount of failed login attempts, the incoming IP address is put into
"jail".

Under the hood, fail2ban monitors sshd log for incoming failed
attempts and after certain threshold creates a firewalld rule to block
the IP for a predefined amount of time. The default setting for this
rule is relatively strict, 3 failed attempts in 10-hour window result in a
10-hour ban for incoming connections from the IP address.
This role is a fork ofansible-role-fail2banthat is available at
https://github.com/resmo/ansible-role-fail2ban.


ansible-sw-xmrstak

Installs software collectionscentos-release-sclpackage for CentOS
together withcmake3, devtoolset-4-gcc*, hwloc-devel, make,
libmicrohttpd-devel, openssl-develpackages used for compiling
XMR-Stak from source code.

After that, the folder structure inside the non-privileged user ac-
count is created, and XMR-Stak repository is cloned into the user di-
rectory. With appropriate permissions set, cmake compiles the source
code with following flags:cmake3 .. -DCPUENABLE=ON -DCUDA ENABLE=
OFF -DOpen CLENABLE=OFFresulting in CPU only miner for CentOS
[72].

If the mining node would use GPU, appropriate drivers from AMD
or Nvidia website are a prior requirement for running the miner. As
GPU feature is only a flag, it can be enabled on demand in the play-
book file as cmake3 flags are set as variables in the tasks file of the
ansible-sw-xmrstakrole in the Jinja2 format:
cmake3 .. -DCPUENABLE={{ DCPUENABLE }} -DCUDA ENABLE={{
DCUDAENABLE }} -DOpenCLENABLE={{ DOpenCLENABLE }}
As next step, role copies over to the node CPU, pool and miner
configuration and creates a crontab entry for automatic miner start.
For the final touch, HugePages are set tovm.nrhugepages=128in/
etc/sysctl.conffor CPU mining memory allocation, and sysctl is
reloaded.

ansible-sys-hostname
Changes system hostname to inventory hostname set inhostsfile
usinghostnamectlAnsible module.

ansible-user-add
User-add-roleis used for creating the mining user that is not within
the wheel group (unprivileged user).

ansible-yum-cron
Installs and configures automatic security updates for CentOS that
are daily checked against the online repository. If packages marked
for security update are found, email notification to root is sent [73].

ansible-yum-update
All packages including kernel are updated so that mining node is ready
to use and won’t send update notification on the next day (unless there
are new updates in the meantime).

Additional notes
Roles are installed in the order specified in thexmr01.ymlfile as sys-
tem update is done as first to prevent any problems with XMR-Stak
compilation.
Using root account login on SSH is not recommended as the proper
way would be to disable root login in/etc/sshdconfigand login to
SSH using created non-privileged user account (ideally using ssh-key
based authentification).
Later if the user needs to login as user, this can be done bysu root
command. To minimize the chance of success brute force attack of the
root account using SSH, fail2ban is set to strict mode. Although this is
not the most secure way to access the system, with above settings this
acts as a middle ground between security and usability of the mining
operation.

### 9.4 Windows-based solution

9.4.1 Installation media
For Windows scenario, Windows 10 image from autumn 2018 was
used. As installation is intended to run unattended, custom media has
to be created.

There are many ways how to provision changes to original Win-
dows media, most straightforward is generating anautounattend.xml
file that covers all installation steps for Windows 10 installer.
This process of Windows image customization can be done using
Windows Assessment and Deployment Kit (Windows ADK) as it
includes Windows System Image Manager (Windows SIM) that is
an authoring tool forautounattend.xmlfiles. Using Windows ADK,
more complex Windows deployment can be achieved as the adminis-
trator can bundle applications and drivers in the image [74].
For this guide, generatingautounattend.xmlfile is based on on-
line autounattend generator tool located atwindowsafg.com. After
generating the file, a block of commands that is executed after the first
logon was added.

<pre>
<SynchronousCommand wcm:action=add>
<CommandLine>powershell−Command Set−ItemProperty−Path
HKLM:\SOFTWARE\Wow6432Node\Microsoft\ .NetFramework\v4.0.30319
−Name SchUseStrongCrypto−Value 1−Type DWord</CommandLine>
<Description>Set PowerShell ExecutionPolicy</Description>
<Order>42</Order>
<RequiresUserInput>true</RequiresUserInput>
</SynchronousCommand>
</pre>
## 9.5 .NetFramework adjustments in the Autounattend file.


For example, .NetFramework in Windows 10 doesn’t have strong
cryptography enabled for all .Net applications. Due to this, in the
default state, Powershell can’t be used for downloading updated code
that is required for setting up the environment for Ansible. To fix that,
one of the commands after the first logon is dedicated to this issue as
shown in the Figure 9.5.

After finishing the installation process and provisioning the Win-
dows environment with<FirstLogonCommands>included in the unat-
tended file, Ansible can connect to the Windows machine and set up
thing properly.

Note that installer opens RDP, WinRM, temporarily disables Win-
dows Firewall (which will be properly configured by Ansible later)
and sets up self-signed WinRM HTTPS certificate using Ansible Power-
shell fileConfigureRemotingForAnsible.ps1[75]. Mining node has
to be connected to the network to download all required files properly.

9.4.2 Ansible at Windows

Before applying roles in Ansible for Windows, unlike in Ansible with
Linux machines, environment for both Windows and Linux controller
has to be prepared [76].
**Windows** needs to have WinRM setup. This is already done as it
was part of the installation process where Ansible Powershell script
set up HTTPS WinRM environment [77].
**Linux** doesn’t have Ansible modules for Windows in default An-
sible install. Those can be installed using the package manager, e.g.:

- Ubuntu:
    **-** Python 2: apt-get install python-winrm
    **-** Python 3: apt-get install python3-winrm
- CentOS:
    **-** With EPEL enabled: yum install python2-winrm
- Or using PIP:
    **-** pip install pywinrm


9.4.3 Ansible roles

Once Ansible is ready to launchxmratwin.ymlplaybook, the following
roles are played:


9. Designing Secure Mining Environment
<pre>
/
xmratwin.yml
hosts
ansible.cfg
roles/
ansible-win-sec
ansible-win-updates
ansible-win-xmrstak
</pre>
## 9.6 Ansible roles for Windows.


ansible-win-sec

Sets up firewall rules for RDP, WinRM and XMR-Stak web interface,
enables Windows firewall for all zones.

ansible-win-updates

Windows update policy is set to download and notify for install as
Windows updates are managed by this Ansible role.
The administrator can configure which updates category will be in-
cluded in the updates, in default role install updates fromSecurityUpdates
andCriticalUpdatescategory [77]. This can be changed using vari-
ableUpdateEverythingin the playbook.


ansible-win-xmrstak

Downloads latest release of XMR-Stak from developers GitHub page,
configures mining software and downloads required libraries from
Microsoft site. It also creates scheduled task under the mining user
to run with elevated permissions after login so that UAC can be kept
enabled and the miner is running without UAC prompts.
Also adds the exception in Windows Defender to ignore Desktop
folder as a binary XMR-Stak file is considered as a malicious file for
being a mining software.


9. Designing Secure Mining Environment

### 9.5 Automated installation process

In order to show automated installation process for both Windows
and Linux miners, both installation processes were recorded using
HDMI capture card and Open Broadcaster Software (OBS). Timeline
detailing installation process is available in the Figures 9.7 and 9.9.
Video is available athttps://github.com/Ownercz/ssme-thesi
s/blob/master/video.md.

<pre>
00:20 ······• Start of unattended Windows installation using the
autounattend file.
05:35 ······• Install part complete, OS first boot.
```
```
11:07 ······• Windows 10 installation complete.
```
```
11:15 ······• Running Ansible playbook on the Windows machine.
```
```
13:38 ······• Ansible completes miner deployment and reboots
the machine.
```
#### 15:17 ······•

```
Ansible sets up firewall, Windows environment and
reboots the machine. Miner is already running
because of scheduled task after reboot.
```
```
17:18 ······• Ansible updates the OS using Windows update
module.
```
```
55:24 ······•
Ansible reboots the machine to complete the
updates.
```
#### 57:25 ······•

```
Ansible completes the playbook and mining machine
is ready.
```
</pre>
## 9.7 Automated deployment of Windows mining machine.


## 9.8 Windows miner deployment.

Both installations were done using USB drive as installation source.
Hardware specifications of the installation computer were CPU Intel
i5 4460, 24GB of DDR3 RAM and target installation drive was 60GB
Intel 330 SATA SSD.
<pre>
#### 00:46 ······•

```
Start of unattended Linux CentOS 7 installation
using the kickstart file.
```
```
05:06 ······• Install part complete, OS first boot.
```
```
05:06 ······• Running Ansible playbook on the Linux machine.
```
#### 11:29 ······•

```
Ansible completes the playbook and mining machine
is ready.
```
</pre>
## 9.9 Automated deployment of Linux mining machine.


## 10 Conclusion

Monero cryptocurrency is a large and active project that offers a wide
range of applications for both users and miners. For its open-source
nature, everyone can build their own wallet software, miner or even
a website that provides wallet and key management. Because of this,
many good, but also potentially malicious applications are released to
the public.

The goal of this thesis is to map usage habits of Monero cryptocur-
rency users and miners from both technological as well as security
view. Another goal is to create a detailed user guideline for user-
friendly and secure usage of the Monero cryptocurrency including
key management and backup strategy. For miners, the goal is to im-
plement an automated deployment of mining rigs using one of the
popular configuration management tools.

To address this issue, the thesis provides a detailed overview of
Monero environment, comparison of wallet client software and ex-
changes, comparison of mining software and list of malicious events
and software connected with Monero cryptocurrency.

For a deeper investigation of the listed issues, I have conducted
surveys aimed at Monero users and miners. With 173 (113 in users
and 60 in miners survey) respondents in total, this provides a real
Monero users sample upon which two guidelines were proposed.

Results of Monero User Research follow the way how participants
were selected (by self-selection) as well as the sites they came from
(Reddit, Facebook cryptocurrency groups). That meant that the ma-
jority of users said they prefer Linux OS with official wallet software
and also that they tend to use open-source more than closed-source
software. Only a few of them used closed-source apps or website por-
tals that can be labeled as dangerous for the user. Contrary to popular
belief, respondents revealed that they use Monero for darknet markets
only in 18% (20 out of 113), in case of drugs in 10% (11 out of 113)
and for other illegal use cases in 5% (6 out of 113).

Based on the results of the research, I formulated Monero usage
and storage best practices part of the thesis, which gives users detailed
steps on how to work with the Monero cryptocurrency.

Monero Miners Research revealed that both Windows and Linux
mining operations are set up using manual deployment and updates
are usually disabled or delayed. Mining software was in almost all
cases open-source with XMR Stak being used the most.

Based on the results from the Monero Miners Research, I imple-
mented an automated deployment system for both major platforms
using unattended/kickstart installation media and Ansible. By using
application deployment and configuration management tool like An-
sible, miners can deploy large mining operations with correct security
settings that are both secure and easy to maintain.

As for the future work on this topic, it would be appropriate
to extend current research to include other cryptocurrencies (Dash,
Ethereum or Bitcoin) as well as the deployment of their miners.
To make results from this thesis more open to the public, every-
thing is published under the GitHub repository and GitHub pages
website. Website links are available in the Appendix Figure A.

