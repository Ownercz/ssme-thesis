---
layout: post
title: Monero Usage and Storage Best Practices
subtitle: Monero best practice
tags: [usage, storage, guideline]
gh-badge: [star, fork, follow]
---

## 6 Monero Usage and Storage Best Practices

Ease of use is one of the critical aspects of every cryptocurrency and
although Monero can offer a wide range of privacy features it has to be
usable and user-friendly to be used by a substantial margin of people.
Usability in Monero is a long-term topic that sparks discussion [55].
While significant number of users reported that they perform back-
ups of their wallet keys, many of them use hot wallet on their mobile
phones which presents a security threat for their wallet.
Following scenarios represent secure and easy to use instructions
for a new Monero user, based on results from Monero user research
in the Chapter 5.

### 6.1 Generating the keys and accessing the wallet

The first challenge for Monero users is generating key pairs and access-
ing the wallet. This process varies from the user’s platform of choice
and used wallet software. As the choice of client wallet software is
important for Monero users in terms of user experience and security,
the following Sections are dedicated to available wallet software.

**6.1.1 Windows and Linux platform**

The official client offers CLI and GUI wallet management and is avail-
able athttps://getmonero.org/downloads/. Using this client users
can generate wallet keys. Created keys are after generation saved
directly into the memory of the device unless specified otherwise.
<pre>
.\monero−wallet−cli.exe
Monero Lithium Luna (v0.12.3.0−release)
Logging to C:\Users\radim\Nextcloud\ssme−thesis\cli\monero−wallet−cli.log
Specify wallet file name (e.g., MyWallet). If the wallet
file is not present, it will be created.
Wallet file name (or Ctrl−C to exit): ssme−thesis
No wallet found with that name. Confirm creation of new
wallet named: ssme−thesis
(Y/Yes/N/No): Y
Generating new wallet...
</pre>

Security of this task depends on the origin of the software, delivery
chain trust, and the users’ operating system. Monero CLI and GUI
binaries can be edited, and the application itself does not call any
internal checking to alert the user of the unauthorized change.
Code injection was successfully tested on GUI binary of the official
Monero wallet as seen in the Figure 9.2. Although SHA256 hash is pro-
vided on the website, the user is not specifically instructed to check the
hashes of the downloaded software with tools like PowerShell using
Get-FileHash ./monero-wallet-gui.exe | Format-Listcommand
[56]. GPG-signed list of the hashes is available on the website although
there are no instructions on how to verify PGP signature itself.

Algorithm : SHA256
Hash : AF9324151909AC7B9BC6D622210EADFBAE5E66...
Path : ./monero−wallet−gui−original.exe

Algorithm : SHA256
Hash : DF4EC49E088284ECC78DBBD8B9CEFF00A78085...
Path : ./monero−wallet−gui−injected.exe


## 6 Monero Usage and Storage Best Practices

There are also alternative approaches to key generation like an
offline JavaScript based monero-wallet-generator that is available at
github.com/moneromooo-monero/monero-wallet-generator.

Hardware way is considered to be in the development, but Monero
compatible devices like Ledger Nano S are already on the market. The
way how keys are generated in hardware wallets varies on firmware
included in each device.
In general, the wallet is required to have Monero application in-
stalled from vendors application catalog. Keys are generated on the
hardware device within the application itself, and the user can only
export private view key from the device to view the balance in full
CLI/GUI client.
This way, the user has private spend key always on the device,
and the client PC has only private view key. To sign a transaction,
the user has to confirm the transaction on the device itself meaning
the hardware wallet will sign the transaction and then sends it to
the Monero client. By this, in case of a security breach on the host
computer, there is no Monero to steal.


#### 6.1.3 Wallet software for mobile devices

Monero has wallet software available for Android as well as the iOS
platform. Community recommends to use the open source ones for
both platforms, as their codebase is published on GitHub and everyone
can inspect the code. Another common fact for the recommended
solutions is that the keypairs for the wallet are stored exclusively on
the user’s device and restore can be done without third-party technical
support.

**Monerojuro** is an open source Android wallet application that is
available on Google Play as well as APK release at Github. By this,
users can install the application from the Google Play directly, man-
ually download the APK or compile it from source code themselves.
Wallet keys storage is based on the device only, and the application
encourages users to back up their seed [57].

**Monero Wallet** is an application released by Freewallet.org that
provides Monero wallets for both Android and iOS. Regarding overall
usability, this application is easier for an average user as it does not
present any cryptocurrency wallet terms as key, seed, etc. The user is
instead instructed to create a Freewallet account which acts as a wallet
[58].
By this, the user does not need to save the seed, wallet keys or
make any backups as key management is completely on the side of
the service provider, Freewallet.org. This fact is often emphasized in
Monero community as the user that does not control the keys does
not control the wallet. Also, the source code is not publicly available
for the community to review.

**Cake Wallet** represents open source Monero wallet for iOS that
provides wallet generation and local key pair storage with remote
node connection and synchronization [59].
Guideline for secure wallet access is described in the Chapter 4.1.1.

### 6.2 Secure storage system

Wallet keys are everything when it comes to cryptocurrency usage.
Who has the keys, controls the wallet and can view or transfer the
balance to another address. If a user loses wallet keys, Monero wallet
can still be recovered using mnemonic seed that should be saved on
another storage medium.
This Section describes possible ways of backing-up wallet keys.
Primary storage media security is compared in the Figure 4.1.3.

Data characteristics

As described in the Section 4.1, Monero wallet consists of an encrypted
wallet.keysfile that contains private spend and view keys. Size of
this file is less than a few kilobytes.
Another type of data that is presented to the user is mnemonic
seed. Seed can be used for recovery when wallet file is lost and consists
of 25 words with the last one being used for checksum.
In total, Monero wallet requires less than 8 kilobytes for key and
seed storage. This results in minimal space requirements for backup
storage media.

Backup strategy

Best practice for backups that isn’t too demanding on the user side is
the 3-2-1 strategy that is considered in the industry as a bare minimum
for keeping the data safe [60].

- 3 means having at least 3 copies of your data in total.
- 2 of them are local but stored on different media types.
    **-** This can be represented as a combination of SSD and tape.
- 1 is an offsite, geographically different location.
    **-** E.g., in the next building, a different facility, another city.

In short, this means when your building with external drive burns
down and your notebook gets cryptolocker on the same day, you still
have your data safe as you have them in the offsite location.

Data that users need to backup are not changing in the day to
day usage, but only when the user creates a new or an additional
wallet. Meaning that backing up the wallet does not need to be made
frequently unlike other user data that are changed frequently, e.g.,
documents. Verification, on the other hand, is more important as not
only users should back up the data, they should also be able to restore
them. For ease of use, users can verify the integrity of the backup by
actually recovering the wallet from the backup media.


6. Monero Usage and Storage Best Practices


Recommended scheme

Following cost effectivity of individual media types together with
common backup strategy:

- Total number of copies of data: 5
- The primary data source is on the client device with wallet soft-
    ware. This source is then copied downstream to backup media.
- All copies of the data should be encrypted using file-level encryp-
    tion regardless of the security of the device, e.g., by a popular
    open-source tool like VeraCrypt.
- Local copy
    **-** Located on disk with full volume encryption, e.g., by Bit-
       Locker.
    **-** Paper backup in a secure container at a hidden place.
- Offsite copy
    **-** Located on the flash drive with full volume encryption.
    **-** Located on the DVD as an encrypted file.
Secure Monero usage portal


As a result of this Chapter and Monero user research in the Chapter 5,
all recommendations for secure Monero usage are compiled within
one websitehttps://ownercz.github.io/ssme-thesis.

### 6.3 Study limitations

When interpreting Monero user and miners research results, the fol-
lowing study limitations should be taken into account:

- Self-selection bias of respondents in the dataset, which results
    in a non-representative sample of the population.
- Reporting bias of responses in the dataset, as study gathers
    rather sensitive questions towards security habits and backups.
- Limited time and reach of the questionnaires in the community
    that has participated in this research leading to non-representative
    population sample.

