tag @s add ca.in_soul_chain

scoreboard players operation @s ca.soul_chain_id = $soul_chain_id ca.soul_chain_id

#function cartographer_mob_abilities:passive/soul_chain/setup_id_controller

scoreboard players set $has_top ca.soul_chain_id 0
execute on passengers run scoreboard players set $has_top ca.soul_chain_id 1
execute unless score $has_top ca.soul_chain_id matches 1.. run tag @s add ca.soul_chain_end

execute on passengers run function cartographer_mob_abilities:passive/soul_chain/setup_continue
