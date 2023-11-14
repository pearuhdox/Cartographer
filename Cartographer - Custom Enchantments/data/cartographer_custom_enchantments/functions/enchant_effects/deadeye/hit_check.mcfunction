particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal


scoreboard players operation $frost ca.deadeye = @s ca.frost
scoreboard players operation $flame ca.deadeye = @s ca.flame


scoreboard players operation $trueshot ca.deadeye = @s ca.trueshot
scoreboard players operation $curse_encum ca.deadeye = @s ca.curse_encum


scoreboard players operation $power ca.deadeye = @s ca.power
scoreboard players operation $punch ca.deadeye = @s ca.punch

scoreboard players operation $sharpshot ca.deadeye = @s ca.sharpshot
scoreboard players operation $point_blank ca.deadeye = @s ca.point_blank

scoreboard players operation $deadeye ca.damage_queue = @s ca.damage_queue

data modify storage cartographer_custom_statuses:apply_effects data.effects set from entity @s data.apply_effects
data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s data.apply_status

scoreboard players set $deadeye_hit ca.deadeye 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#bb:hostile,dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_found

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $deadeye_hit ca.deadeye matches 1.. run kill @s

execute unless block ~ ~ ~ #cartographer_core:can_raycast run playsound minecraft:entity.arrow.hit player @a[distance=..18] ~ ~ ~ 1 0.75
execute unless block ~ ~ ~ #cartographer_core:can_raycast run particle minecraft:large_smoke ^ ^ ^-0.75 0.01 0.01 0.01 0.01 1 normal
execute unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s