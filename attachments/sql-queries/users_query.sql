SELECT COUNT(*)
FROM users
WHERE Which_services_or_apps_Official_Monero_GUI LIKE 'yes' OR Which_services_or_apps_Official_Monero_CLI LIKE 'yes' OR Which_services_or_apps_Other_desktop_client LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Android LIKE 'yes' OR Which_platforms_do_you_use_to_access_Monero_iOS LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Android LIKE 'yes' AND Which_services_or_apps_Monerujo_Android LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Android LIKE 'yes' AND Which_services_or_apps_Freewallet_Android LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Android LIKE 'yes' AND Which_services_or_apps_Other_Android_wallet LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Android LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_iOS LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_iOS LIKE 'yes' AND Which_services_or_apps_Cake_Wallet_iOS LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_iOS LIKE 'yes' AND Which_services_or_apps_Freewallet_iOS LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_iOS LIKE 'yes' AND Which_services_or_apps_Other_iOS_wallet LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_services_or_apps_XMRwallet_online_wallet LIKE 'yes' OR Which_services_or_apps_MyMonero_online_wallet LIKE 'yes' OR Which_services_or_apps_Other_online_wallet LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_services_or_apps_XMRwallet_online_wallet LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_services_or_apps_MyMonero_online_wallet LIKE 'yes';

SELECT COUNT(*)
FROM users
WHERE Which_services_or_apps_Other_online_wallet LIKE 'yes';

SELECT COUNT(DISTINCT Response_ID)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Windows LIKE 'yes' AND Which_platforms_do_you_use_to_access_Monero_Linux LIKE 'no';

SELECT COUNT(DISTINCT Response_ID)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Windows LIKE 'no' AND Which_platforms_do_you_use_to_access_Monero_Linux LIKE 'yes';

SELECT COUNT(DISTINCT Response_ID)
FROM users
WHERE Which_platforms_do_you_use_to_access_Monero_Windows LIKE 'yes' AND Which_platforms_do_you_use_to_access_Monero_Linux LIKE 'yes';


SELECT COUNT(DISTINCT Response_ID)
FROM users
WHERE Which_services_or_apps_Official_Monero_GUI LIKE 'yes' OR Which_services_or_apps_Official_Monero_CLI LIKE 'yes' OR Which_services_or_apps_Monerujo_Android LIKE 'yes' OR Which_services_or_apps_Cake_Wallet_iOS LIKE 'yes' OR Which_services_or_apps_MyMonero_online_wallet LIKE 'yes';

SELECT COUNT(*) FROM users WHERE How_often_do_you_make_transactions_on_the_Monero_network like 'At least once a day';

SELECT (COUNT(How_often_do_you_make_transactions_on_the_Monero_network)*100)/107,100-((COUNT(How_often_do_you_make_transactions_on_the_Monero_network)*100)/107),COUNT(How_often_do_you_make_transactions_on_the_Monero_network), How_often_do_you_make_transactions_on_the_Monero_network from users GROUP BY How_often_do_you_make_transactions_on_the_Monero_network  ;
SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE  Do_you_consider_yourself_a_HOLDer LIKE 'yes' AND (How_often_do_you_make_transactions_on_the_Monero_network LIKE 'At least once a day' OR How_often_do_you_make_transactions_on_the_Monero_network LIKE 'At least once a week' OR How_often_do_you_make_transactions_on_the_Monero_network LIKE 'At least once a month') ;
SELECT COUNT(*) FROM users WHERE Do_you_consider_yourself_a_HOLDer LIKE 'yes' OR Do_you_consider_yourself_a_HOLDer LIKE 'no';


SELECT COUNT(*), (COUNT(*)*100)/113  FROM users WHERE Where_do_you_pay_with_Monero_Subscription_services LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Coffee_shops_restaurants_bars LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Donations LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Art LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Electronics LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Travelling LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Eshops LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Darknet_markets LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Drugs LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Poker_and_other_gambling_sites LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Gift_cards LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Illegal_usecases LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_VPN_services LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Hosting_and_other_IT_services LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Where_do_you_pay_with_Monero_Other LIKE 'yes';

SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Have_you_ever_been_affected_by_malicious_software LIKE 'yes';

SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Monero_transactions_are_anonymous LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Monero_transactions_are_anonymous LIKE 'uncertain';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Monero_transactions_are_anonymous LIKE 'no';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Monero_transactions_are_anonymous IS NULL;


SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_noone_else_can_see_your_balance_in_wallet LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_noone_else_can_see_your_balance_in_wallet LIKE 'uncertain';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_noone_else_can_see_your_balance_in_wallet LIKE 'no';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_noone_else_can_see_your_balance_in_wallet IS NULL;

SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Kovri_to_access_Monero_network LIKE 'yes';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Kovri_to_access_Monero_network LIKE 'uncertain';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Kovri_to_access_Monero_network LIKE 'no';
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_Kovri_to_access_Monero_network IS NULL;

SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_DTor_to_access_Monero_network LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_DTor_to_access_Monero_network LIKE 'uncertain'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_DTor_to_access_Monero_network LIKE 'no'; 


SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Hot_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Cold_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Exchangebased_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Viewonly_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Airgapped_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Web_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Paper_wallet LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Other LIKE 'yes'; 
SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Which_type_of_wallet_do_you_use_Hardware_wallet LIKE 'yes'; 



SELECT COUNT(*), (COUNT(*)*100)/113 FROM users WHERE Anonymity_DTor_to_access_Monero_network IS NULL;