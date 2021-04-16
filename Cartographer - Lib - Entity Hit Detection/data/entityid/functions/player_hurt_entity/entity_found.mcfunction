#tagging as receiver
tag @s add entityid.receiver

#calling function tags
function #player_hurt_entity/as_entity
execute as @p[tag=entityid.attacker] at @s run function #player_hurt_entity/as_attacker
function #player_hurt_entity/as_receiver

#removing tag
tag @s remove entityid.receiver