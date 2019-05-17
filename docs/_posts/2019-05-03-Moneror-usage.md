---
layout: post
title: Monero usage
subtitle: From wallets to multisig
gh-repo: daattali/beautiful-jekyll
gh-badge: [star, fork, follow]
tags: [wallet, storage, portals]
---

## 4 Monero Usage

As pointed out in the Chapter 3.3, Monero is one of the cryptocurren-
cies that aim to implement as complex anonymity system as possible.
Moreover, because of that not only the underlying technology of the
network is different from other cryptocurrency projects but the user
side as well.

### 4.1 Wallets

The essential part of every currency is the user’s ability to access stored
funds. In cryptocurrency, this is represented by the wallet and associ-
ated software. Overview of the wallet storage methods is described in
the Table 4.1.
Monero wallet contains information that is necessary to send and
receive Monero currency. Each wallet is encrypted by the password set
in the creation process. Typical wallet created using Monero software
named _example-wallet_ consists of:

- **example-wallet.keys file**
    **-** Is an encrypted file containing private **spend key** and **view**
       **key** together with **wallet address**.
    **-** Keys file also contains user preferences related to transac-
       tions and wallet creation height, so wallet software will
       only read blockchain from the wallet creation point.
    **-** Using this file, the user can restore the wallet by using the
       monero-wallet-cli command:
       monero-wallet-cli –generate-from-keys
- **example-wallet file**
    **-** Acts as an encrypted cache for wallet software that contains:
       ∗ List of outputs of transactions that are associated with
          the wallet, so it does not need to scan the blockchain
          every time after startup.
       ∗ History of transactions with metadata containing trans-
          action (TX) keys.

- **example-wallet.address.txt file**
    **-** Stores **unencrypted** information containing generated wal-
       let address.
    **-** With recent address-based attacks that swap wallet ad-
       dresses found in clipboard or files on the hard drive for the
       attacker’s wallet address, this poses a security risk [37].
- **Mnemonic seed**
    **-** Mnemonic seed is a 25-word phrase which the last word is
       being used as a checksum. Together they represent a 256-bit
       integer that is the accounts private spend key.
    **-** By having accounts private spend key, wallet software can
       derive private view key by hashing private key with Keccak-
       256. That produces another 256-bit integer that represents
       private view key.
    **-** Both public keys are then derived from newly recovered
       private keys.

Example of Monero wallet address and mnemonic seed:

- **Wallet address**
    **-** 461TWLQhsxrR9dD4CXk4p1RRxAAQ3YCEDhNiGCQjj5
       QA33ohhZPnCX6346EyEwC7TiRSB3XB8KgNaJ4vThd5N
       pQqRkGab66
- **Mnemonic seed**
    **-** serving odometer nifty flippant worry sphere were thorn
       putty bogeys lyrics feast fawns input biscuit hobby outbreak
       rash tucks dwelt liquid azure inexact isolated liquid

**4.1.1 Wallet types**

As Monero wallet can be represented as little as one file or 25 words,
it is rather a small piece of information which the user needs to store
in the safe place to keep account under own control. To do that, there
exist two main types of wallets:

- **Hot wallet
-** Refers to wallet software running on a computer that is
connected to the Internet, thus Monero network. By being
online, the user can verify incoming transactions, spend
from the wallet and check balance as well.
**-** As this type of wallet is not air-gapped (not connected to
the Internet), this poses an external intrusion risk.
**-** The hot wallet can also refer to web-based or exchange-
based wallet that is explained further in this Chapter.
- **View-only wallet
-** Is a wallet containing only private view key pair to see
transactions associated with the wallet.
**-** As this is a view-only wallet, the user can see incoming
transactions but is not able to spend, sign or view outgoing
transactions. That results in incorrect balance when the
wallet is used for sending funds.
- **Cold wallet
-** Is an offline solution to storing wallet seed or private keys
on storage media. Using method, media storing wallet in-
formation have no direct access to the Internet. The storage
medium can be represented by an external hard drive, air-
gapped computer as well as paper with wallet seed written
on it.
**-** That comes with increased security from the IT standpoint,
but the usability of the cryptocurrency suffers. That is mainly
due to the hassle of working with funds when the user
wants to spend them as it requires:
∗ Cold wallet imported into wallet software in the air-
gapped computer.
∗ A view-only wallet connected to the Internet.
**-** This way, the user can generate an unsigned transaction
on the view-only wallet, transfer it for signing to the air-
gapped computer and then back to submit transfer to the
Monero network.

- **Exchange hosted wallet
-** In the exchange wallet, users funds are stored under an
online account in an online exchange.
**-** As opposed to a regular wallet, there is no wallet soft-
ware or seed required as the whole balance and transaction
system is run by the third party. Funds can be controlled
through users online account that accessible by traditional
username and password.
**-** This poses a risk as the third party has complete access to
users funds and the account’s security is directly depen-
dent on exchanges security measures as Two Factor Au-
thentication (2FA) implementation, IP restriction or email
verification.
- **Web-based wallet
-** Web wallet represents server based Monero client that is
served to the user in the browser. By using a web wallet, the
user can access funds from any Internet-connected device
by sharing:
∗ Mnemonic seed or private spend and view key to send
and receive funds.
∗ Public view key and wallet address to view incoming
transactions to the wallet.
- **Hardware wallet
-** Dedicated hardware solution like Ledger Nano S is still in
its beta phase [38].
**-** Due to lack of real hardware wallet, the community around
Monero recommends as the alternative a USB drive with a
live distribution of Linux coupled with persistent storage
where Monero client and users private key pairs are stored.
**-** Although this alternate solution effectively rules out host
operating system, there is still a way to capture viable in-
formation. Especially when interacting with an untrusted
machine, where attacker captures GPU output or uses a
hardware keylogger to log the users activity.


### 4.1.2 Attacking the wallet
With the rapid expansion of cryptocurrencies from 2014 to 2018, this
area became a significant spot for malware development [39]. As there
are many attack vectors, this Section aims to give info about malicious
activities on users wallets.


Wallet thieves

Aim to compromise the system in a way that malware finds wallet
files and steals cryptographic keys or seed belonging to the wallet.
Although in Monero, keys are encrypted while stored on the disk.
When running wallet software, keys can be obtained from memory.
This attack can also be performed by distributing malicious wallet
client software.


Cloud storage


Cloud storage provides an easy way of sharing files between devices
as well as users. As the user does not need to set up the infrastructure
and the majority of the services provide free tier, it is usual for people
to take this for granted as a safe place to store files [40].
This way, the user’s security depends on the following factors:

- Wallet encryption on the file level, user password habits.
- Account security – login implementation, 2FA.
- Client application implementation for caching and data transfer.
- Vendors storage system security.


Delivery chain


Hardware wallets like Ledger are built to ensure the safety of users
coins. Therefore the owner of such a device should be pretty con-
fident when using this device that came with original undisrupted
packaging.
For this attack, malicious vendor puts pre-generated mnemonic
seed on a scratchpad. This piece of paper is made to look like an official
one-time generated secret key to the wallet for the user. This way when


Malicious seed generation

Similar to Delivery chain attack, the attacker in this scenario provides
service that offers secure seed generation to obtain seed information
belonging to the wallet. That is usually done by running a malicious
web service that offers secure seed generation for cryptocurrencies or
developing a standalone software for download.
After the user generates the seed, a package with seed data is
automatically sent to the attackers listening service and then saved
to the database. Both parties know the private information and can
spend funds from the wallet.



### 4.2 Local and remote node

To spend or view the balance in the wallet, the user is required to have
a wallet client software or use third party services to access the Monero
network. This Section covers the most common type of accessing the
funds, hot wallet in combination with official Monero client software
available athttps://getmonero.org/downloads/.
Monero client requires to be in synchronization with the network
to show the correct balance as well as to work with the funds. That is
done by either running a full local node or connecting to the remote
node.

**The node** is a part of the cryptocurrency network that keeps a
synced copy of blockchain in the local storage and provides a service
that enables clients to access the information from the blockchain file.
In Monero client software, this is represented bymonerod, a separate
daemon which synchronizes with the network.

**The local node** is the default option when running wallet soft-
ware, using monerod client downloads from Monero network the
blockchain and stores it in local storage. As of July 2018, blockchain
size is about 44.3 GB. By running local node, client can independently
verify transactions as well as blockchain state.

**The remote node** , on the other hand, represents a lighter ver-
sion with slightly less privacy when it comes to working with the
wallet. By either choosing in GUI to connect to the remote node
or running cli with parameter _.\monero-wallet-cli.exe –daemon-address
node.address:port_ , the client connects to the remote node and starts
scanning the blockchain as if it was a local one.
Comparison of the node types can be found in the Table 4.2.

**Local node Remote node**
Blockchain stored on locally Blockchain stored remotely
Observable traffic between
nodes

### 4.3 Multisig implementation

Monero started to support multisignature transactions and addresses
by 17th of December 2017 when codebase for this feature was merged
into master by Fluffypony [41]. Multisig became available in the
Lithium Luna release that was released 23rd of July 2018 [42].
Multisig in a cryptocurrency is a feature that requires the multisig
transaction to be signed by all keys that are required. For multisig, one
can create a multisig wallet that is designed as follow:

- 1-of-2
    **-** Requires one of two participating parties to sign a transac-
       tion.
    **-** This scheme acts as a shared wallet where each of the key
       holders can spend funds without the other party signing
       the transaction.
- 2-of-2
    **-** Requires both parties to sign a transaction.
    **-** Each side has to agree to spend funds and sign the transac-
       tion.
- M-of-N
    **-** Requires M keys of N to sign a transaction, note that M is a
       subset of N.

**4.3.1 Multisig usage**

After Lithium Luna release, only Monero wallet CLI software is ready
for processing multisig transactions. In the Figures 4.2 and 4.3 example
scheme of 2-of-2 is presented with user A as blue and user B as green
for wallet generation and transaction using Monero multisig feature.


### 4.4 Problems in Monero environment

Monero privacy features are appreciated not only by privacy savvy
users but malware, phishing, and other malicious software creators
as well.
The main reason to use Monero over other cryptocurrencies for
them is that Monero is not only harder to trace but when the attack is
implemented well, after moving funds in separate batches to multiple
wallets an over more extended period, no one will be able to associate
the coins with the malicious activity.
There are four main problems concerning Monero environment:


1) Ransomware

Malware that encrypts user files and then demands a ransom in the
form of cryptocurrency, computer and files are no longer accessible
unless the user pays the required amount. During its peak time, all
popular ransomware demanded payment in Bitcoin.
As malware developers started to get their coins targeted by projects
such as one from Netherlands’ police called No More Ransom available
atnomoreransom.org[43, 44]. Because of this targeting, they had to
choose another cryptocurrency to solve this problem, and the solu-
tion was Monero [45]. Kirk is an example of Monero malware that is
included in the Figure 4.5 [46].

Figure 4.4: Kirk ransomware that demands payment in Monero.

2) Scam portals

As mentioned in the Section Wallets 4.1, online wallets usage is a risky
thing due to entrusting user’s private keys to the third party. Users
often choose them as they are not required to have any additional
software. Due to this fact, there are more than ten domains that copy
the design, functionality, and name ofmymonero.comofficial online
wallet with added code that steals the user’s wallet data. Detailed list
of domains is available at https://www.reddit.com/r/Monero/wiki
/avoid.
Aside from direct scams, there are also services offering wallet
services which have their codebase closed and store all wallet infor-
mation. The best-known example of such service is freewallet.org,
that is strongly criticized for closed source as well as funds that are
reported as missing from user’s accounts [47].


3) Crypto-jacking attack

Crypto-jacking a type of attack where the attacker delivers a malicious
payload to the user’s computer. Rather than rendering the device
unusable either by blocking like ransomware, part of system resources
is used for mining.

Figure 4.5: Some websites openly state that they mine Monero.

Crypto-jacking is becoming more frequent than ransomware as it
has proven that steady but low income is more profitable than one-
time payment in the form of ransomware [48].

4) Black Ruby

Interesting intersection of ransomware and crypto-jacking category is
Black Ruby malware that combines features of both. First, it encrypts
files on the target computer and then proceeds to mine Monero using
XMRig (as explained in the Section 7.2) at full CPU load [49].

### 4.5 Monero use case

Aside from code quality and features, another important factor in
cryptocurrency success are the ways how users can spend the funds.
While numerous community around Monero that centers around
Reddit _/r/Monero_ created _/r/XMRtrader_ , there are also projects that
support Monero in day-to-day use like https://xmr.to/.
What is most noticeable tough, are darknet markets, that started
to support payments by Monero. This results in the rather negative
use case of the crypto as payments by Monero are not directly likable
to one’s wallet as described in the Section 3.5.2.

Although darknet markets may support Monero, a short inspection
of Top 10 markets revealed that only 5 of them list Monero as the
general way to pay. Rest of them are not forcing the sellers to use
Monero. This results at about 40% availability of Monero payment
option on these type of markets.
