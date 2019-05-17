---
layout: post
title: Monero Miners Research
subtitle: Researching the miners
tags: [miners,research,terminology]
gh-badge: [star, fork, follow]
---
The goal of this research is to gather information on people who run
mining cryptocurrency software and map their behavior regarding
system administration with the emphasis on security practices. For
this purpose, an online questionnaire was created and is available in
the Appendix Figure C.
To the best of my knowledge, this is the first work that studies
cryptocurrency miners. Specific research questions are based on cryp-
tocurrency mining setup patterns, used software and problematic
areas regarding computer and data security in general.

### 8.1 Research questions

The survey was designed around seven question groups. Some of them
were shown only if the participant chose the appropriate answer.

- G01 - Introductory information
- G02 - Mining setup
- G03 - Mining software
- G04 - Pool choice
- G05 - Windows platform
- G06 - Linux platform
- G07 - Demographics


Following this pattern, five research questions were set:

- R1: Who are Monero miners in general? What are their typical
    mining setups?
- R2: Which types of software do participants use as operating
    systems, management, and mining tools?
- R3: What security and update policies miners follow?
- R4: Do miners suffer from security incidents like compromised
    mining operation? How do they deal with them?
- R5: What are the factors that affect pool choice?

### 8.2 Participants and survey’s background

As mentioned in the Chapter 5, the survey was not hosted on third
party servers, but instead on dedicated VPS running Lime Survey
self-hosted software with HTTPS interface using signed Letsencrypt
certificates.
This means that data exchanged between participants and survey
software stays only between these two parties, so Google or other
big data companies cannot analyze them. To allow extended privacy
features, Tor and proxy connections were allowed, but each participant
had to solve the CAPTCHA before starting the survey.

#### 8.2.1 Methodology

Data collection method was online only and was using the survey
website software. Participants selection was based on opportunity
sampling, links for the research were shared among dedicated Reddit
Monero community, Facebook Mining groups as well as Cryptocur-
rency forums. This form was distributed together with the Monero
User Research survey in mentioned mining communities. Study limi-
tations are described in the Section 6.3.
To reduce nonresponse rate, participants were asked only to fill
out parts that were significant for them, e.g., Windows OS part stayed
hidden in the form if the user selected that he/she used Linux OS only.
The data from the respondents were collected from 11.15.2018 to
01.27.2019. The complete survey is attached in the Appendix Figure C.

### 8.3 Collected data


Before entering the survey, each participant had to pass the bot test
by entering the correct CAPTCHA, which resulted in 323 participants
of the questionnaire in total. As for survey data cleansing, following
measurements for valid dataset were taken:

1. Partially answered or unanswered questionnaires were not taken
    into account (261 out of 323).
2. Respondents that filled out the survey in less than two minutes
    were discarded (0 out of 323).
3. Responses with more than four entries with the same IP were
filtered (0 out of 323).
4. Responses containing invalid answers, e.g., not using Monero
or repeating the same answer pattern in multiple submissions
(2 out of 323).

Usingg eoiplookuppackage in Ubuntu on the filtered dataset, most
of the responses were from the USA (10 out of 60) as well as from
the Czech Republic (10 out of 60) followed by Germany (6 out of 60).
Detailed list of countries with the corresponding number of responses
is available in the Appendix Table C.1.

### 8.4 Results

Upcoming pages are based on the final filtered dataset with 60 re-
sponses of people who voluntarily entered the research based on
opportunity sampling.

General information

When asked about the motivation for mining Monero, two-thirds of the
respondents 67% (40 out of 60) think about Monero as an investment,
but also as a way to gain some profit from mining cryptocurrencies
62% (37 out of 60).
Although Monero is not considered to be more profitable to mine
by the majority in the dataset 77% (46 out of 60), almost half of the
miners 47% (28 out of 60) favor this cryptocurrency due to its mining
characteristics CPU minable and the fact that they directly help to
secure the network by mining 60% (36 out of 60).
Note that the reasons for mining Monero are biased by the way
the respondents in the dataset were selected. In general, there would
be a higher percentage of the cryptocurrency miners that care only for
the profitability rather than cryptocurrency features [68].

## 8.3 Mining setup question.


Gathering information about mining setups was designed as a multiple-
choice question where every choice was described in detail as illus-
trated in the Figure 8.3.


Even through dataset cleansing, from the final 60 respondents, 15
of them chose both _Regular PC only_ and _Mining rig_ option. Therefore,
only 45 respondents are taken into account in this part.

## 8.4 Mining types comparison.

When asked about mining setup, the majority of the miners mine
on their PC 33% (15 out of 45) or also on mining rig 69% (31 out
of 45), but there is also a small portion of miners 18% (8 out of 45)
that use their employer’s hardware and electricity to run their mining
operation. On the other side, only two of the respondents mentioned
mining on a VPS instance and no one selected cloud mining or botnet
mining as their way to mine Monero.
## 8.5 Mining setup properties.

97% (58 out of 60) of respondents shared their current hashrate with
median hashrate value being 4.4Kh/s. This hashrate represents a typ-
ical setup with 5 high-performance GPUs (AMD RX 480 8GB with
800-850h/s) or 7 high-performance CPUs (AMD Ryzen 7 1700 with
600-650h/s).
Majority of miners mine in their property 87% (52 out of 60) and
set up their mining rigs 93% (56 out of 60). The operating system is not
dominant nor on the Windows side 65% (39 out of 60) nor the Linux
part 55% (33 out of 60) described in the Figure 8.5. This is mainly
because of multiplatformity of mining software and availability of
guides for mining setups.

## 8.6 Mining setup preferences.

Miners generally tend to update their rigs 70% (42 out of 60) as well
as clean them 52% (31 out of 60) but refrain from additional infras-
tructure costs like buying a UPS 23% (14 out of 60) as shown in the
Figure 8.7.

## 8.7 Mining software preference.

The choice of mining software impacts mining profitability as well as
the number of shares that are donated to the developer (if any).
As described in the Chapter 7.2, most popular mining software
falls into open source with great moderation regarding code updates
from the crypto community in general. This follows results from the
dataset where XMR Stak project, that is the most active on Github, is
also the most preferred way to run the mining operation 78% (47 out
of 60 miners).


XMRig is used less 30% (18 out of 60), but more often in combination
with other mining software like previously mentioned XMR Stak.
From closed source miners, only MinerGate was mentioned 3% (2
out of 60). A small portion of miners also solo mine 12% (7 out of 60)
using the official wallet software.
In general, miners in the dataset tend to mine in pools 83% (50 out
of 60), some of them try to combine mining approaches where the
primary way of obtaining the coins is by pool mining, but they also
try their luck with solo mining 13% (8 out of 60). True solo miner was
represented by only one specimen.

Pool choice

Pool choice itself has the biggest impact on the final payout for the
miner as described in the Chapter 7.1. This depends on the method of
reward distribution, total hashrate of the pool and minimal payout.
Note that often pools also have fees which are deducted from the
number of coins mined by the miner.
When asked about pool preferences, two larger mining pools
were often mentioned Monerooceanstream 23% (14 out of 60) and
nanopool.org 23% (14 out of 60). Important preference factors for
choosing pool were pool fees 87% (52 out of 60), pool security history
77% (46 out of 60), total hashrate 73% (44 out of 60) and minimal
payout 62%(37 out of 60). Least important are additional features to
the pool like mobile apps 23% (14 out of 60) or anti-botnet policy 35%
(21 out of 60).

Windows platform

Out of 60 miners in the dataset, 39 of them use Windows as their choice
of OS for mining. Regarding periodic updates, only a small part of
miners 26% (10 out of 39) tend to use Windows with its default update
settings (automatic restart of the OS to apply updates, unattended
driver updates).
Majority of Windows miners 59% (23 out of 39) tend to apply
updates after some time after their release and have remote access
enabled. There is also a part of miners in the dataset 28% (11 out of
39) that tend to “set up and forget” with Windows update completely
disabled. Setup preferences are shown in the Figure 8.8.

## 8.8 Windows mining setup preferences.

Linux platform

While Linux is used by 33 out of 60 miners, the majority of them tend
to use Ubuntu 52% (17 out of 33) or Debian 33% (11 out of 33). The
specialized OS for mining - MineOS is used by six users, least use has
community derivate from RHEL, CentOS.
Although information about update frequency was not submitted
by all miners, many of them 42% (14 out of 33) manage updates
manually, with only a small portion of other miners 18% (6 out of 33)
having the process automated.
Remote management is represented mainly by SSH 67% (22 out of
33) followed by VNC 9% (3 out of 33) and TeamViewer 9% (3 out of
33). Automation tools are used only by 13 miners from the dataset.

Demographics

Survey participants were mainly males 83% (50 out of 60), females
3% (2 out of 60) represented only a small portion of the dataset and
some of the participants did not disclose their gender 13% (8 out of
60). Most respondents in the dataset were from the age groups 25-34
55% (33 out of 60) followed by 35-44 age group 20% (12 out of 60) as
well as 18-24 18% (11 out of 60).