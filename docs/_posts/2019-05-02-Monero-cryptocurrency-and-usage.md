---
layout: post
title: Cryptocurrency
subtitle: Introduction to Cryptocurrency terminology 
tags: [introduction,cryptocurrency,terminology]
gh-badge: [star, fork, follow]
---
## 3 Monero Cryptocurrency
Monero is an open-source cryptocurrency that is developed under the Monero project to create a decentralized and anonymous currency. Its main goal is to make the user the one who has complete control over funds.
Meaning that every single digital transaction and the exact number of coins in users wallet cannot be traced back to the user without sharing the view key of the transaction [2]. Main distinctive points compared to other cryptocurrencies are:

- The blockchain is public, but a large part of it is encrypted.
- The sender of the transaction is hidden by using Ring Signatures
    explained in the Chapter 3.5.2.
- The exact amount of transferred coins is encrypted using RingCT
    as described in the Chapter 3.5.3.
- Transaction history and receiving party is hidden by the usage
    of stealth addresses that are referenced in the Chapter 3.5.1.

### 3.1 Origin and the main focus

Monero (XMR) started its way by forking from Bytecoin, which was proof-of-concept cryptocurrency that used as first of its kind protocol called CryptoNote. CryptoNote was published by the start of the year 2014 [3].
Although Bytecoin had a promising protocol aimed at privacy, there was a problem with premine, meaning that cryptocurrency at the time of publishing had already 82% of the coins already emitted [4]. That was the reason why people interested in anonymous cryptocurrencies decided to create a Bytecoin fork under the name of
BitMonero [5]. 
Next important moment was when a significant part of the developers decided to abandon the project in favor of creating a new fork named Monero in 06.23.2014. By this action, Monero cryptocurrency was created with publicly known blockchain from the start, strictly defined goals and motivated team of developers [6].


### 3.2 Monero market cap

As Monero is often mentioned for its privacy features, decentralization
in mind and fungibility as main asset, the Table 3.1 puts Monero in
the direct comparison against the Top 5 cryptocurrencies.
To compare different cryptocurrency projects, market capitaliza-
tion (market cap) is often used as a way of ranking [7]. It indicates
the relative size of cryptocurrency by the formula:

Market Cap = Circulating Supply * Price

**Privacy** in cryptocurrency is a feature that assures that amount of
coin user owns, sends or receives cannot be seen on the blockchain.

**Decentralization** in cryptocurrency network all nodes are equals.
That means that no supernode can override how transactions are being
processed as well as there is no single entity in control.

**Fungibility** means that every coin ever emitted has the same value
as the others and cannot be traced back; thus there cannot be coin
blacklist.

### 3.4 Development cycle

Monero development cycle is based on planned network updates that
occur every six months. By this developers want to encourage work on
the project with regular updates in contrast to other cryptocurrencies
that don’t want any new hard forks in the future as it brings the danger
of splitting the coin into several versions [23].

```
03.03.2014 ······• Bytecoin - published on GitHub.
```
#### 04.17.2014 ······•

```
ByteCoin fork - the creation of BitMonero
cryptocurrency.
```
#### 07.23.2014 ······•

```
BitMonero Fork - the creation of Monero
cryptocurrency.
```
#### 03.22.2016 ······•

```
Monero v2 - ring size change, block time set to 120
seconds.
```
```
09.21.2016 ······• Monero v3 - transactions are split into smaller
amounts.
```
```
01.05.2017 ······•
Monero v4 - the concurrent run of normal and
RingCT transactions.
```
#### 04.15.2017 ······•

```
Monero v5 - block size update and fee algorithm
adjustments.
```
#### 09.16.2017 ······•

```
Monero v6 - RingCT forced on the network with
ring size set to 5.
```
#### 04.06.2018 ······•

```
Monero v7 - change of CryptoNight mining
algorithm to prevent ASIC on the network, ring size
set to set to 7.
```
```
10.11.2018 ······•
Monero v8 - enabled Bulletproofs for reduced
transaction sizes, global ring size set to 11.
```
#### 02.25.2019 ······•

```
Monero v9 - new PoW based on Cryptonight-R, new
block weight algorithm.
```
```
Figure 3.1: Monero development timeline.
```

Updates are meant to improve and enhance the previously es-
tablished codebase as well as fixing already existing bugs that are
continuously being resolved. Known problems in Monero history
were:

- **Spam attack**
    **-** Was aimed to oversaturate the Monero network by sending
       minimal transactions and leveraging low transaction fee of
       0.005 XMR. Immediate fix was established by raising the
       fee to 0.1 XMR. This problem led to the implementation of
       dynamic transaction fee based on the chosen transaction
       priority [24].
- **Split chain attack**
    **-** The successful exploit of Merkle root calculation vulnerabil-
       ity led to the creation of two blocks of the same height and
       hash, but with two different transactions on the end of the
       block [25]. By this, two separate Monero chains were cre-
       ated. The exploit could be applied to all CryptoNote based
       cryptocurrencies. In the case of Monero, all transactions
       were stopped on exchanges until next day, when the fix was
       issued [26].
- **Transaction analysis in Monero blockchain**
    **-** Research published in 2017 uncovered past and present
       problems in anonymity with Monero transaction system.
       The most significant discovery was that a substantial por-
       tion of transactions used a Ring Signature of zero which
       caused traceability of the amount of coin in the transaction
       output on the blockchain [27].
    **-** This issue was resolved by Monero team already in 2016
       with Monero v2, where Ring Signature was set to set to
       3 [28]. Soon after the paper was released, Monero got its
       v6 update with enforced use of RingCT technology for all
       transaction outputs [29].



### 3.5 Transactions in Monero network


Monero uses a distributed peer-to-peer consensus network to record
transaction outputs in a blockchain. It means that balance is not stored
in a wallet, but is represented by control over outputs of transactions
accessible with wallet keys [30].
By that when a user A wants to send funds to a user B, the trans-
action happens in the way of transformation of controlled outputs in
one wallet to a new output that belongs to the other wallet. As this is
only a principle of how coins are transferred between wallets, Monero
uses additional technology to make transactions private.

#### 3.5.1 Monero wallet and stealth addresses

Monero wallet seed is 95 characters long string that consists of public
view and spend key. To send funds from one wallet to another, a
one-time public key is created, that contains senders public view and
spend key as well as randomized data.
This one-time public key is also referred to as a stealth address
and is generated and recorded as part of the transaction to set the
controller of the output of the transaction [31].
Stealth address is visible on the blockchain, by this receiving party
can scan the blockchain to find exact transaction using their private
view key. After locating transaction output, wallet software is then
able to calculate one-time private key that aligns with the one-time
public key and can spend this output using private spend key [32].
By this, no one from outside can link nor wallet addresses nor
people involved in a particular transaction by scanning the blockchain
as there is no association with receivers address.
To prove that funds were sent from one wallet to another, the sender
has to disclose transactions ID, receivers address and transactions key.

#### 3.5.2 Ring Signatures

Ring Signatures present a way to create a distinctive signature that
authorizes a transaction. The digital signature of the transaction is
compiled from the signer together with past outputs of transactions
(decoys) to form a ring where all members are equal and valid. By
 that, the outside party cannot identify the exact signer as it is not clear
which input was signed by one time spend key [33].
To prevent double spend, a cryptographic key image is derived
from the spent output and is part of the Ring Signature. As each key
image is unique, miners can verify that there is no other transaction
with the same key image, thus preventing the double-spending attack
[13].


#### 3.5.3 RingCT
So far, senders anonymity is ensured by Ring Signatures, receivers
anonymity relies on stealth addresses, but the amount of Monero
transferred would be still visible on the blockchain. To hide transaction
amounts, Ring Confidential Transactions are implemented [34].
As one output cannot be spent twice, the sender has to spend entire
output in the transaction. That typically results in a transaction having
two outputs, one for the receiver and one for the original wallet, where
the excess amount of coins is returned.
To prevent manipulation during a transaction, the total input amount
must equal the output amount of coins in each transaction. As one
could exploit this by committing to value less than zero, range proofs
are there to ensure cryptographic evidence of amounts used in trans-
actions is greater than zero and falls into the valid transaction amount
range.
To confirm the transaction, the sender reveals the masked amount
of coins being sent in the transaction to the network that is later verified
by miners [35].
By that, amounts transferred between wallets in the form of outputs
of transactions are hidden, and the network can still confirm that
transaction is valid.
#### 3.5.4 Kovri

Kovri is a C++ implementation of the Internet Invisible Project (I2P)
anonymous network, that under heavy development process in the
Monero project. It aims to offer secure network transmissions where a
users IP cannot be associated with a particular transaction ID [36].