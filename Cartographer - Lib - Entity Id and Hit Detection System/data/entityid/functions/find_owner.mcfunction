#resetting found value
scoreboard players set found= entityid 0

#setting projectile owner
data modify storage entityid:main projectile set from entity @s Owner

#finding owner entityid value
execute as @e[type=!#entityid:id_skip,distance=..8,sort=nearest] run function entityid:find_owner/as_entity
execute if score found= entityid matches 1 run scoreboard players operation @s entityid = owner= entityid