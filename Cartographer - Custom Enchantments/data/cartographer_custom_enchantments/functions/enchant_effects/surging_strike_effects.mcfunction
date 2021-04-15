scoreboard players operation @s damage_queue = $melee ca.attack_val
function cartographer_core:helper/deal_damage/by_score
function cartographer_core:helper/deal_damage/invulnerable_tick

tp @s ~ ~ ~ facing entity @p[scores={surging_strike=1..}] feet
function cartographer_core:helper/push_half

execute if score $melee fire_aspect matches 1 run data modify entity @s Fire set value 81
execute if score $melee fire_aspect matches 2 run data modify entity @s Fire set value 161
execute if score $melee fire_aspect matches 3.. run data modify entity @s Fire set value 221

execute if score $melee frostbite matches 1 run effect give @s slowness 4 0
execute if score $melee frostbite matches 2 run effect give @s slowness 4 1
execute if score $melee frostbite matches 3 run effect give @s slowness 4 2
execute if score $melee frostbite matches 4 run effect give @s slowness 4 3
execute if score $melee frostbite matches 5.. run effect give @s slowness 4 4

execute if score $melee committed matches 1 run effect give @s bad_omen 4 0
execute if score $melee committed matches 2 run effect give @s bad_omen 4 1
execute if score $melee committed matches 3.. run effect give @s bad_omen 4 2

execute if score $melee vicious matches 1.. run scoreboard players add @s effect_bleed 0
execute if score $melee vicious matches 1.. if score @s effect_bleed matches 1.. run scoreboard players add @s effect_bleed 11

execute if score $melee vicious matches 1 if score @s effect_bleed matches 0 run scoreboard players set @s effect_bleed 3
execute if score $melee vicious matches 2 if score @s effect_bleed matches 0 run scoreboard players set @s effect_bleed 5
execute if score $melee vicious matches 3.. if score @s effect_bleed matches 0 run scoreboard players set @s effect_bleed 7

execute if score $melee overload matches 1 run scoreboard players set @s effect_shocked 3
execute if score $melee overload matches 2 run scoreboard players set @s effect_shocked 5
execute if score $melee overload matches 3.. run scoreboard players set @s effect_shocked 7

execute if score $melee decay matches 1 run scoreboard players set @s effect_infect 3
execute if score $melee decay matches 2 run scoreboard players set @s effect_infect 5
execute if score $melee decay matches 3.. run scoreboard players set @s effect_infect 7

execute if score $melee stunning matches 1.. run function cartographer_core:helper/randomize
execute if score $melee stunning matches 1.. run scoreboard players operation $melee helper_melee = @s random

execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run scoreboard players set @s effect_stunned 21

execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

scoreboard players set $melee helper_melee 0

tag @s add thrusted