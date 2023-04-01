#Run Soul Linking
execute if entity @s[tag=ca.soul_chain_start,tag=!ca.in_soul_chain] run function cartographer_mob_abilities:passive/soul_chain/setup_start

execute if entity @s[tag=ca.soul_chain_start] run function cartographer_mob_abilities:passive/soul_chain/check_status
execute if entity @s[tag=ca.soul_chain_end] run function cartographer_mob_abilities:passive/soul_chain/check_status_reverse

execute if entity @s[tag=ca.in_soul_chain,tag=!ca.soul_chain_start,tag=!ca.soul_chain_end] run function cartographer_mob_abilities:passive/soul_chain/check_status_center


execute if entity @s[tag=ca.in_soul_chain] if score @s ca.soul_chain_id = $kill_id ca.soul_chain_id run function cartographer_mob_abilities:passive/soul_chain/commit_kill