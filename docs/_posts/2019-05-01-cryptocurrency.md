---
layout: post
title: Cryptocurrency
subtitle: Introduction to Cryptocurrency terminology 
tags: [introduction,cryptocurrency,terminology]
---


## 1 Introduction

Monero project offers a decentralized and anonymous open-source
cryptocurrency with a regular update cycle that does not limit the user
to use certain software or hardware. With such an open approach, it
is often difficult for users to keep up and be aware of many choices on
the client side, that can be either good or bad for them.
As cryptocurrency usage is rising in general, it is also more and
more frequent to encounter malicious sites or software developers
that aim to take control over users funds to gain an easy profit. This
thesis focuses on the Monero usage and mining from usable security
view to explain the current state in the Monero ecosystem and reflect
the real-world usage data from both users and miners surveys.
The goal of this thesis is to map usage habits of Monero cryptocur-
rency users and miners from both technological as well as security
view. Another goal is to create a detailed user guideline for user-
friendly and secure usage of the Monero cryptocurrency including
key management and backup strategy. For miners, the goal is to im-
plement an automated deployment of mining rigs using one of the
popular configuration management tools.
To find an answer to such research questions and to get real world
usage data, I conducted a Monero User Research survey in which
113 participants shared their habits regarding Monero cryptocurrency.
Based on the survey results and IT industry practices I proposed a
Monero usage and storage best practices guide that covers the key
generation, wallet management, and a secure backup scheme.
Aside from clients, key parts of Monero are also miners and Mon-
ero network itself. As miners are the ones who verify transactions and
keep the network running, it was important to describe the mining
software and categories which are later used in the Monero Miners
Research survey. In the survey, 60 miners shared technical informa-
tion about their current mining setups. This was later reflected in the
proposed guide for designing secure mining environment in which
the automation was the main aspect.
The thesis describes a detailed overview of wallet and its types,
as well as ways how to attack the wallet, followed by transaction
features in the Monero and problems in Monero environment from
both Monero network and Monero malware sides.
The thesis is divided into 10 Chapters. The first three Chapters
describe Monero cryptocurrency, its development cycle, transactions
in the network, wallets, multisig together with cryptocurrency com-
petitors, problems in Monero environment and overall Monero use
case. The fifth and sixth Chapters describe the Monero User Research,
its results and propos a detailed guideline for best practices in Monero
usage and storage. The eight and ninth Chapters describe the Mon-
ero Miners Research, its results and the design of the secure mining
environment. The last Chapter covers the final conclusion.


## 2 Cryptocurrency

This Chapter is aimed as a starting point that explains terms and tech-
nology that will occur throughout the following pages and Chapters.
Although these terms provide only a short description, it is recom-
mended for every reader to swift through them as in later pages they
are discussed and used in detail thoroughly.
**Cryptocurrency** is a digital currency that is designed to use cryp-
tography to secure and verify its transactions. Cryptocurrencies are
decentralized as opposed to traditional money transaction systems
used in the banks. Decentralization is established by using distributed
blockchain that functions as a transaction database within the currency.
First cryptocurrency available was Bitcoin [1].
**Altcoin** is a term used for every cryptocurrency that is not Bitcoin.
**The fork** happens when developers create a copy of existing project
codebase and start their path of development with it.
**The market capitalization** (market cap) is a total value of cryp-
tocurrency that refers to the total number of emitted coins multiplied
by the value of the coin.
**The blockchain** is a technology responsible for storing every trans-
action that has ever been processed in the cryptocurrency, also often
called as a ledger. The main purpose of the blockchain is to ensure the
validity of completed transactions.
**Transactions** within cryptocurrency are processed together as
blocks that are verified by miners and then added to the blockchain
as a new mined block.
**The wallet** is a storage medium that holds private and public keys
by which the user can access, send and receive funds. Wallet effectively
does not have the coins but is rather a key to access them from the
blockchain.
**The node** is a computer connected to the cryptocurrency network.
The node is often referred to as a full node which means that the
computer maintains a full copy of blockchain. This results in node
downloading every block and transaction and checking them against
cryptocurrency rules, especially whether the transaction has correct
signatures, data format and the right number of emitted coins per
block.

**The mining** process is done by miners that verify transactions on
the network and adds them to the blockchain together in the form of
a block which results in new coins being emitted as a reward for block
solving.
**Mining in pools** is the way how individual miners pool their com-
putational resources. Due to resources pooling, there is a higher chance
of solving the block, therefore gaining the reward of newly emitted
coins.
