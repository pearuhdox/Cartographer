tag @s add ca.soul_chained

scoreboard players operation @s ca.soul_chain_id = $soul_chain_id ca.soul_chain_id

function cartographer_mob_abilities:passive/soul_chain/setup_id_controller

execute if data entity @s Passengers anchored eyes as @e[tag=!ca.soul_chained,tag=!ca.soul_chain_start,tag=ca.soul_chain,distance=..1.5,limit=1,sort=nearest] at @s anchored eyes run function cartographer_mob_abilities:passive/soul_chain/setup_continue