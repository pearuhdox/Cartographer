execute if entity @s[tag=ca.in_soul_chain,tag=ca.soul_chain_end] run scoreboard players set $chain ca.soul_chain_id 1

execute on passengers if entity @s[tag=ca.in_soul_chain] run function cartographer_mob_abilities:passive/soul_chain/check_rec