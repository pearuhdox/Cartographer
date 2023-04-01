scoreboard players set $chain ca.soul_chain_id 0

function cartographer_mob_abilities:passive/soul_chain/check_rec

execute unless score $chain ca.soul_chain_id matches 1.. run scoreboard players operation $kill_id ca.soul_chain_id = @s ca.soul_chain_id