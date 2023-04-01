scoreboard players set $center_check ca.soul_chain_id 1

execute on passengers run scoreboard players set $center_check ca.soul_chain_id 0
execute on vehicle run scoreboard players set $center_check ca.soul_chain_id 0

execute if score $center_check ca.soul_chain_id matches 1.. run function cartographer_mob_abilities:passive/soul_chain/commit_kill