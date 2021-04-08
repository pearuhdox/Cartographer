#registering id
execute if entity @s[type=!#entityid:id_skip,type=!player] run function entityid:assign_id
execute if entity @s[type=#entityid:projectile] at @s run function entityid:find_owner
execute if entity @s[type=player] run function entityid:reregister

#registering
tag @s add entityid.registered