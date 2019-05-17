---
layout: post
title: Monero User Research
subtitle: Getting into users perception
tags: [research,cryptocurrency,users]
gh-badge: [star, fork, follow]
---

## 5 Monero User Research

The goal of this research is to gather information on end users behavior
regarding Monero cryptocurrency with emphasis on key management
and security practices. For this purpose, an online questionnaire was
created.
Specific survey design and research questions are based on Bitcoin
security and privacy study, typical usage patterns of cryptocurrency
users, online forums and Reddit communities centered around Mon-
ero as well as problematic areas regarding computer and data security
in general [50].

### 5.1 Research questions

The survey was designed around seven question groups. Some of them
were shown only if the participant chose the appropriate answer.

- G01 - Introductory information
- G02 - Monero usage
- G03 - Monero key and coin management
- G04 - Monero and malicious things
- G05 - Monero recovery
- G06 - Special question set for miners
- G07 - Demographics


Following this pattern, four research questions were set:

- R1: What are Monero’s main use cases? How do participants
    perceive Monero’s features?
- R2: What are participant’s ways of wallet access and storage?
- R3: What security incidents have affected users? How did they
    deal with them?
- R4: In case of recovery, how did they recover their keys?

### 5.2 Participants and survey’s background

The significant characteristic of Monero is its anonymity, and this
feature is not taken by community lightly. Due to this fact, the survey
was not hosted on third party servers, but instead on dedicated Virtual
Private Server (VPS) running Lime Survey self-hosted software with
HTTPS interface using signed Letsencrypt certificates [51–53].
This means that data exchanged between participants and survey
software stays only between these two parties, so Google or other big
data company cannot analyze them. To allow extended anonymity
features, Tor and proxy connections were allowed, but each participant
had to solve the CAPTCHA before starting the survey.


#### 5.2.1 Methodology

Data collection method was online only and was using the survey
website software. Participants selection was based on opportunity
sampling. Links for the research were shared among dedicated Reddit
Monero community, Facebook Monero groups as well as Cryptocur-
rency forums. Study limitations are described in the Section 6.3.
To reduce nonresponse rate, participants were asked only to fill
out parts that were significant for them, e.g., Monero recovery part
stayed hidden in the form if the user selected that he/she had never
made any recovery of the seed or wallet keys in the previous part.
The data from the respondents were collected from 11.15.2018 to
01.27.2019. The complete survey is attached in the Appendix Figure C.

### 5.3 Collected data


Before entering the survey, each participant had to pass the bot test
by entering the correct CAPTCHA, which resulted in 179 participants
of the questionnaire in total. As for survey data cleansing, following
measurements for valid dataset were taken:

1. Partially answered or unanswered questionnaires were not taken
    into account (67 out of 179).
2. Respondents that filled out the survey in less than two minutes
    were discarded (1 out of 179).
3. Responses with more than 4 entries with the same IP were fil-
tered (0 out of 179).
    (a) In total 7 responses were sent from duplicate IP addresses.
The highest number of responses from a single IP was 3,
which belonged to MIT University.
4. Responses containing invalid answers, e.g., not using Monero
    or repeating the same answer pattern in multiple submissions
(1 out of 179).

Figure 5.1: Overview of respondents in the user survey dataset.
Usinggeoiplookuppackage in Ubuntu on the filtered dataset, most of
the responses were from USA (31 out of 113), followed by the Czech
Republic (17 out of 113) and Germany (11 out of 113). Detailed list of
countries with the corresponding number of responses is available in
the Appendix Table B.1.

### 5.4 Results


Next section is based on the final filtered dataset with 113 responses
of people who voluntarily entered the research based on opportunity
sampling.

#### 5.4.1 General information

First, users were asked about their operating system preferences when
accessing Monero. Majority of users tend to access Monero using
Windows 58% (65 out of 113) or Linux 60% (68 out of 113). While
accessing Monero from mobile Android OS 43% (49 out of 113) is
primarily used. As for the Apple ecosystem, MacOS combined with
iOS was selected as used method of access only in 14% (16 out of 113)
occurences.


Monero desktop application usage

Desktop applications are used by 104 out of 113 users, making it
the most frequent means of accessing the wallet. As Monero Official
application has no other direct competitors aside from web-based
wallets, the majority of users 81% (84 out of 104) use the official


application with GUI, but there is also a notable part of the users
in the dataset that use CLI as well 53% (55 out of 104). Alternative
desktop clients, that were sometimes misinterpreted as web apps, are
used by only a few users cca 4% (5 out of 104).

Monero Mobile application usage

From 113 people that filled out the survey, 53 of them stated that
they use either Android or iOS application for accessing their Monero
wallet. Digging deeper, out of 49 Android users, Monerujo application
is used by 92% (45 out of 49) of them, followed by other Android
wallets 14% (7 out of 49). Freewallet on Android is only used by one
user (2%) in the dataset thus following the fact the community does
not like closed source software with bad history as mentioned in the
Chapter 4.4. Detailed description of the applications is included in the
Section 6.1.3.

5. Monero User Research


iOS is used by 7 out of 113 users (please note that users could check
usage of both platforms as can be visible from simply adding iOS and
Android users and comparing it to the total number of mobile users).
All of them (7) reported using the Cakewallet application. Following
the Android pattern, one user also revealed usage of Freewallet app.

Online wallet services

When asked about online wallet usage, only 24 people (out of 113)
said that they use some sort of online service with MyMonero wallet
being used the most 79% (19 out of 24).

Wallet software usage

First part of the survey shows that userbase present in the dataset is
more oriented towards open-source software in general (110 out of 113
use some form of open-source Monero client), but this is not limited to
the usage of particular OS as there are 33% (37 out of 113) of Windows
only users, 35% (40 out of 113) Linux only users and 25% (28 out of
113) users of both OS. This discovery follows the information about
Monero community as they prefer open source software (OSS) to
closed source software (CSS) because they can not personally review
for hidden features or unintentional bugs.

#### 5.4.2 Monero usage

When asked “ _What are your reasons to use Monero?_ ”, the majority of
respondents in the dataset said that they use Monero or at least are
interested in the topic because of the technology 88% (99 out of 113),
but also see it as an investment 73% (83 out of 113).
A significant portion of respondents also see Monero as a way of
secret storage of value 74% (84 out of 113) but not as much in the way
of sending money 53% (60 out of 113).

This result is strongly affected by the way how participants were
selected (self-selection) and from what sites they were informed about
the survey (mainly Reddit Monero subreddits and Facebook Monero
groups). The short overview of the preferences is shown in the Table
5.1 with the full text of the questions asked available in the Appendix
Figure C.

Transactions in the Monero network performed by respondents
can be divided into two user groups, where the first group that can
be described as active, those who make at least one transaction per
month, 50% (53 out of 107) and passive who are much less frequent
51% (54 out of 107). Detailed overview of transactions frequency in
the dataset is in the Figure 5.9.
Following this question, respondents were asked if they hold onto
their coins for a long time (often referred to as one being a HODLer).
Majority of respondents 79% (84 out of 106) said that they are, but this
statement conflicts with transaction frequency. When comparing data
of respondents that make a transaction at least every month, about
60% (34 out of 57) think that they are HODLers, this contradicts the
previously mentioned statement.

Important usage factor of a currency is where its users can pay
with it. Monero has already a known reputation between darknet
markets, but its mainstream usage isn’t something that is advertised
as its feature.
When asked about the payment options, many of the respondents
45% (51 out of 113) selected that they use Monero as a way for donating
other people, followed by paying for VPN services 35% (31 out of 113).
Although Monero features are considered ideal for black market use,
only 5% (6 out of 113) respondents revealed that they use Monero
cryptocurrency in this way.
Perception and the reality of anonymity in cryptocurrency is an
important topic in the cryptocurrency environment [54]. Although
Monero is private by default, additional precautions can be made to
hide users activity from the third party like using Kovri or Tor.
Among users in the dataset, Kovri 7% (8 out of 113) or Tor 20%
(23 out of 113) is used by less than one third of the respondents in
total as can be seen in the Table 5.2.

**5.4.3 Monero key and coin management**

Apart from client software that is used for accessing and making
transactions in Monero, wallet management is at least as important.
Main reason is that users choice of wallet storage has a direct influence
on who has access to the funds as explained along with the wallet
types in the Chapter 4.1.

#### 5.4.4 Monero recovery

For further wallet protection, the majority of users also encrypt their
wallet or the datastore on which the keys reside on 78% (88 out of
113).
A slightly higher number of users admit backing up their wallet
keys 89% (101 out of 113) while a significant number of respondents
had already needed to restore their wallet keys 44% (50 out of 113).
To complete the recovery statistics, 98% (49 out of 50) were able to
restore the keys from the backup media.
See the Figures 5.12 and 5.13 for visualization of wallet recovery
reasons and restore methods.

#### 5.4.5 Monero and malicious software

This part was answered only by those respondents that selected Yes
(15 out of 113) when asked whether they have ever been affected by
malicious software that used Monero in some way.
The primary cause of problems was mining malware (8) or some
form of mining script (7). The main affected platform was running
Windows (10), and malware was recognized mainly by slow system
response (7) and high CPU usage (11).

#### 5.4.6 Demographics

Survey participants were mainly males 44% (50 out of 113), females
2% (2 out of 113) represented only a small portion of the dataset, and
some of the participants did not disclose their gender 54% (61 out of
113). Most respondents in the dataset were from the age groups 25-34
29% (33 out of 113).
