SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'yes';
SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'no';

SELECT COUNT(*) FROM users WHERE Which_type_of_wallet_do_you_use_Hot_wallet LIKE 'yes';
SELECT COUNT(*) FROM users WHERE Which_type_of_wallet_do_you_use_Cold_wallet LIKE 'yes';

SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'yes' AND Which_type_of_wallet_do_you_use_Hot_wallet LIKE 'yes';
SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'no' AND Which_type_of_wallet_do_you_use_Hot_wallet LIKE 'yes';

SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'yes' AND Which_type_of_wallet_do_you_use_Cold_wallet LIKE 'yes';
SELECT COUNT(*) FROM users WHERE Did_you_ever_need_to_restore_your_wallet LIKE 'no' AND Which_type_of_wallet_do_you_use_Cold_wallet LIKE 'yes';




SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Linux like 'yes' AND Did_you_ever_need_to_restore_your_wallet like 'yes';
SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Windows like 'yes' AND Did_you_ever_need_to_restore_your_wallet like 'yes';
SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Linux like 'yes' AND Have_you_ever_been_affected_by_malicious_software like 'yes';
SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Windows like 'yes' AND Have_you_ever_been_affected_by_malicious_software like 'yes';
SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Linux like 'yes' AND Do_you_work_or_study_in_IT_related_field like 'yes';
SELECT COUNT(*) FROM users WHERE Which_platforms_do_you_use_to_access_Monero_Windows like 'yes' AND Do_you_work_or_study_in_IT_related_field like 'yes';


