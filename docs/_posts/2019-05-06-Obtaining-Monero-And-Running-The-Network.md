---
layout: post
title: Obtaining Monero and Running The Network
subtitle: How are coins gained
tags: [coins, network, mining, pools ]
gh-badge: [star, fork, follow]
---
Monero mining is a process done by miners to verify transactions on
the network and add them to the blockchain together in the form of a
block. This results for them in a reward in the form of new coins that
are emitted as a reward for block solving.
Network speed is mainly determined by the average time between
individual blocks. This results in the transaction process that takes up
to 130s (request =<1s, broadcast =<5s and max. time between blocks
=<120 seconds). The transaction process is shown in the Figure 7.3.

Transaction request
generated by the client
transfer ADDRESS AMOUNT

Request broadcast to
network nodes, shown
showtransfers pool

Transaction is added to
the block waiting to be
mined.

Miners are verifying
transactions in the
pending block.

Every 2 minutes new
Monero block is mined
and added to the
blockchain.

Miners are rewarded by
block reward.

Receiving party’s wallet
becomes aware of the
transaction.


7. Obtaining Monero and Running the Network

### 7.1 Mining nodes


As was mentioned at the beginning of the Chapter 7, mining is the
main reason for transaction processing in Monero network, and as the
mining process has rewards for successfully solving the block, this
encourages many different entities to mine.

Mining in pools

Very often, miners combine their computational resources into one
of the pools on the network. Due to the higher total hash rate, there
is a greater chance of solving the block thus gaining the reward of
newly emitted coins. After solving each block, the reward is distributed
equally to miners connected to the pool according to PPS (per-per-
share) or PPLNS (per-per-last-number-of-shares) system [61].
As of 09.29.2018 total hash rate of the network was 577.72 Mh/s
(100%), in known pools 530.79 Mh/s (91.88%) and unknown part
of the network 46.93 Mh/s (8.12%). Unknown part represents either
pools that are not listed or solo miners on the network.

Solo mining

Represents "all or nothing" approach when it comes to the rewarding
system. As solo miner’s hash rate has to compete against all other solo
miners as well as big pools, the chance of solving the block is rather
small [62].
On the other side, when solo miner solves the block successfully,
the whole block reward is assigned to the mining address. With high-
end, multiple GPU setup, the miner can achieve about 3.2 Kh/s; this
would mean chance about 0.46 % of gaining the block reward.

Web mining

CryptoNight algorithm mining stands out above others in the way how
cryptocurrency can be mined. For Monero there are JavaScript-based
miners like CoinHive available, that results in individual websites
embedding this script and mining using the visitor’s resources.
This can result up to 300 hashes per second for users with powerful
CPUs and is a viable alternative to advertisements when visitors spend
more than 10 minutes on the website [63]. Typical examples of this
approach are warez websites offering free online movies and torrent
trackers.

Botnet mining

Using other peoples resources for mining, often also called crypto
jacking (a more broad term for hidden cryptocurrency mining without
users approval), have become increasingly popular in Monero. As the
cryptocurrency provides privacy features as well as a wide range of
mining software that is available for every major platform.
In the current cloud era of computing, this represents vast prob-
lems for both service providers and their customers. Providers experi-
ence increased power consumption, cooling requirements, customers,
on the other hand, are required to pay more for consumed system
resources [64].

Cloud mining

Represents managed services by specialists that offer mining power us-
ing cloud service providers. Due to managed service providers (MSP)
markup, this way of mining is not as profitable and not recommended
among Monero community in general.
Arrows indicate flow of the resources:
Payment for service; Payment for compute time; Delivered hashrate


### 7.2 Mining software

Official

Can be obtained at the official web of the Monero cryptocurrency
project athttps://getmonero.org/downloads/. This is an official wal-
let software that includes solo mining client and cannot be used for
pool mining.

Community-driven

Is a category that incorporates open-source mining software projects
that have source code published on the Github. Mostly used are:

- XMR Stak
    **-** Consolidates CPU, AMD and Nvidia GPU mining under
       one multiplatform application with integrated webserver
       and autoconfiguration capability.
    **-** URL:https://github.com/fireice-uk/xmr-stak

- XMRig
**-** Three separately released miners with autoconfiguration
GPU and CPU capability.
**-** AMD:https://github.com/xmrig/xmrig-amd
**-** Nvidia:https://github.com/xmrig/xmrig-nvidia
**-** CPU:https://github.com/xmrig/xmrig
- CCminer - Nvidia CUDA miner
**-** URL:https://github.com/tpruvot/ccminer/

Proprietary

Having closed source code that community cannot inspect, mining
software of this category has less reputation compared to the community-
driven. This is caused mainly by the fact that the exact produced hash
rate and client reported hash rate differed in the past at least regarding
the MinerGate miner available athttps://minergate.com/download
s/gui.

### 7.3 Mining malware

As Monero algorithm is designed to be memory demanding, it is
suitable to mine it using both CPU and GPU as mining software offers
support for both hardware components as mentioned in the Section
7.2.

The fact that Monero can be effectively CPU mined means for
malware miners much easier way how to gain any profit from infected
computer as they do not need to have any specific GPU drivers or
features implemented. Because of this, they are easier to deploy on a
wide range of devices [65].

Monero position in the malware world

When malicious software developer considers the cryptocurrency
technology to build on, cryptocurrency features are one of the most
important aspects that drive this decision.
In the case of Monero, its features are as much important for its
users as for the malware developers. The main reason for using Mon-
ero is that it offers private features as well as support for mining on
almost every device available [66].
Thanks to its features and active development, Monero is one of the
most active cryptocurrencies that are used in the malware world with
more than 57 million USD already mined. As of 2019, Monero is iden-
tified to have the most active malware campaigns per cryptocurrency,
followed by Bitcoin and zCash [67].


Types of malware miners

Main categories of malware miners are derived from the way how the
unwanted software is delivered to the target device. Most common
ways of ingestion are:

- Website with JavaScript miner software, also known as Crypto-
    jacking as mentioned in the Figure 4.4.
- Exploiting vulnerabilities in the operating system or application
    software.
- Bundled in legitimate software.
