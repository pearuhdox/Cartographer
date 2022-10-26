#tagging as attacker
tag @s add entityid.attacker

#calling function tags
function #entity_killed_player/as_entity
execute as @p[tag=entityid.receiver] at @s run function #entity_killed_player/as_receiver
function #entity_killed_player/as_attacker

#removing tag
tag @s remove entityid.attacker