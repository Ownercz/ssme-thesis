USE lime_data_1;
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_For_profit like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_As_an_investment like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_To_help_securing_the_network like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_It_is_more_profitable_than_other_coins like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_It_is_CPU_mineable like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_To_help_Monero_project like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_Community like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_To_support_nonASIC_mining like 'Yes';
SELECT COUNT(*) FROM miners WHERE Why_do_you_mine_Monero_Other like 'Yes';

SELECT COUNT(*) FROM miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(*) FROM miners WHERE mine_with_Work_PC like 'Yes' AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(*) FROM miners WHERE mine_with_Mining_rig_GPU_only like 'Yes' AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(*) FROM miners WHERE mine_with_Mining_rig_CPUGPU_combined like 'Yes' AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(*) FROM miners WHERE mine_with_Mining_rig_CPU_only like 'Yes' AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(*) FROM miners WHERE mine_with_Branded_server_platform_Dell_HP_SuperMicro_etc like 'Yes';
SELECT COUNT(*) FROM miners WHERE mine_with_Cloud_mining like 'Yes';
SELECT COUNT(*) FROM miners WHERE mine_with_VPS_mining like 'Yes';
SELECT COUNT(*) FROM miners WHERE mine_with_Botnet_mining like 'Yes';
SELECT COUNT(*) FROM miners WHERE mine_with_Nicehash_minepower_buying like 'Yes';
SELECT COUNT(*) FROM miners WHERE mine_with_Other like 'Yes';


AND Response_ID NOT IN (SELECT Response_ID from miners WHERE mine_with_Regular_PC_no_dedicated_mining_rig like 'Yes' AND (mine_with_Mining_rig_GPU_only like 'Yes' OR mine_with_Mining_rig_CPUGPU_combined like 'Yes' OR mine_with_Mining_rig_CPU_only like 'Yes'));
SELECT COUNT(What_is_your_total_hashrate),AVG(What_is_your_total_hashrate) FROM miners WHERE What_is_your_total_hashrate  > 0;
SELECT What_is_your_total_hashrate FROM miners WHERE What_is_your_total_hashrate  > 0; #median in excel from this data


SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_mine_in_my_property like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_setup_my_rigs_myself like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_mine_on_Windows like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_mine_on_Linux like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_regularly_clean_my_rigs like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_regularly_update_my_rigs like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE _statements_I_have_a_backup_power_supply_UPS like 'Yes';


SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_XMR_Stak like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_XMRig like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_XMRig_AMD like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_XMRig_NVIDIA like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_Official_wallet_software like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_MinerGate like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE What_software_do_you_use_for_mining_Other like 'Yes';

SELECT COUNT(*) FROM miners WHERE  Do_you_perform_solomining_or_poolmining_Solomining like 'Yes';
SELECT COUNT(*) FROM miners WHERE  Do_you_perform_solomining_or_poolmining_Poolmining like 'Yes';
SELECT COUNT(*) FROM miners WHERE  Do_you_perform_solomining_or_poolmining_Both like 'Yes';

SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Binaries_from_official_Github_repository like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Compiling_official_Github_repository like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Forums_with_binaries like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Filesharing_services like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Random_Google_source like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  obtain_mining_software_Other like 'Yes';

SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  Was_your_mining_setup_ever_compromised  like 'Yes';
SELECT compromised_What_were_the_consequences FROM miners WHERE compromised_What_were_the_consequences IS NOT NULL;

SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  In_which_pool_do_you_mine_bohemianpoolcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_cryptopoolfr  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_dwarfpoolcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_f2poolcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_hashvaultpro  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_minepro  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_minergatecom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_minexmrcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_miningpoolhubcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_monerohashcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_monerooceanstream  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_moriaxmrcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_multipoolercom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_nanopoolorg  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_omineorg  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_poolincom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_steadyhashorg  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_supportxmrcom  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE  In_which_pool_do_you_mine_xmrpooleu  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   In_which_pool_do_you_mine_xmrpoolnet  like 'Yes';
SELECT In_which_pool_do_you_mine_Other FROM miners WHERE   In_which_pool_do_you_mine_Other IS NOT NULL;

SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Recommendation_by_communityfriend like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Hashrate like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Asociated_features_mobile_apps_etc like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Security_and_range_of_ports like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Latency like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Pool_fee like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Minimal_payout like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_AntiBotnet_policy like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_History_of_the_pool like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE choosing_a_pool_Previous_security_incidents like 'Yes';

SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE Do_you_have_Windows_Update_enabled_by_default like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   How_often_do_you_perform_updates_on_your_mining_setup  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   How_often_do_you_perform_updates_on_your_mining_setup_Other  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Are_your_mining_rigs_on_Windows_activated  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_wait_some_time_to_apply_updates  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_igpubug  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_use_AV_software_on_mining_rigs  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_keep_Deffender_enabled_on_Windows  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_use_Teamviewer_to_manage_rigs  like 'Yes' or Windows_Do_you_use_VNC_to_manage_rigs  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_use_VNC_to_manage_rigs  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_have_a_firewall_enabled_on_rigs  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Windows_Do_you_use_automation_tools_Eg_Powershell  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/39,(100-(COUNT(*)*100)/39) FROM miners WHERE   Are_your_Windows_miners_automatically_deployed  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33) FROM miners WHERE   Which_Linux_distribution_do_you_use_Red_Hat_Linux  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_CentOS  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_Fedora  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_openSUSE  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_Ubuntu  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_Debian  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_Mining_OS  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Which_Linux_distribution_do_you_use_Other  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   How_often_do_you_perform_updates_on_linux_based_miners  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   How_often_do_you_perform_updates_on_linux_based_miners_Other  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Do_you_have_SElinux_enabled  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_yumcron  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_systemdcron  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_Do_you_remotely_manage_your_rigs  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_SSH_enabled  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_Do_you_use_Teamviewer  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_Do_you_use_VNC  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33,(100-(COUNT(*)*100)/33)  FROM miners WHERE   Linux_automation  like 'Yes';
SELECT COUNT(*),(COUNT(*)*100)/33 ,(100-(COUNT(*)*100)/33) FROM miners WHERE   Are_your_Linux_miners_automatically_deployed  like 'Yes';
SELECT Which_gender_are_you,COUNT(*),(COUNT(*)*100)/(SELECT DISTINCT COUNT(*) FROM miners) FROM miners GROUP BY   Which_gender_are_you  ;
SELECT COUNT(In_which_age_group_are_you) FROM miners GROUP BY  In_which_age_group_are_you ;
SELECT COUNT(Please_select_your_highest_achieved_level_of_education) FROM miners group by  Please_select_your_highest_achieved_level_of_education ; 
SELECT COUNT(*),(COUNT(*)*100)/60 FROM miners WHERE   Do_you_study_or_work_in_IT_related_field  like 'Yes';



SELECT Which_gender_are_you,COUNT(*),(COUNT(*)*100)/(SELECT DISTINCT COUNT(*) FROM miners) FROM miners GROUP BY   Which_gender_are_you  ;
SELECT In_which_age_group_are_you,COUNT(In_which_age_group_are_you),(COUNT(In_which_age_group_are_you)*100)/(SELECT DISTINCT COUNT(*) FROM miners) FROM miners GROUP BY  In_which_age_group_are_you ;
SELECT Please_select_your_highest_achieved_level_of_education,COUNT(Please_select_your_highest_achieved_level_of_education),(COUNT(Please_select_your_highest_achieved_level_of_education)*100)/(SELECT DISTINCT COUNT(*) FROM miners) FROM miners group by  Please_select_your_highest_achieved_level_of_education ; 
SELECT Do_you_study_or_work_in_IT_related_field,COUNT(Do_you_study_or_work_in_IT_related_field),(COUNT(Do_you_study_or_work_in_IT_related_field)*100)/(SELECT DISTINCT COUNT(*) FROM miners) FROM miners group by  Do_you_study_or_work_in_IT_related_field ; 

SELECT COUNT(Do_you_study_or_work_in_IT_related_field),(COUNT(*)*100)/60 FROM miners WHERE   Do_you_study_or_work_in_IT_related_field  like 'Yes';

