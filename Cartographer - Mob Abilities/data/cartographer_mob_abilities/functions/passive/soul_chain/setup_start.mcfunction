scoreboard players add $soul_chain_id ca.soul_chain_id 1

tag @s add ca.in_soul_chain

scoreboard players operation @s ca.soul_chain_id = $soul_chain_id ca.soul_chain_id

#function cartographer_mob_abilities:passive/soul_chain/setup_id_controller
execute on passengers run function cartographer_mob_abilities:passive/soul_chain/setup_continue