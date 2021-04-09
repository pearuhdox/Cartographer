execute as @s at @s run tp @s ~ ~ ~ facing entity @e[type=experience_orb,tag=erupting_xp,distance=..8,limit=1,sort=nearest] feet
execute unless score $eruption knockback matches 1.. as @s at @s run function cartographer_core:helper/push_half


execute if score $eruption eruption matches 1 as @s run scoreboard players set @s damage_queue 3
execute if score $eruption eruption matches 2 as @s run scoreboard players set @s damage_queue 6
execute if score $eruption eruption matches 3 as @s run scoreboard players set @s damage_queue 9
execute if score $eruption eruption matches 4 as @s run scoreboard players set @s damage_queue 12
execute if score $eruption eruption matches 5 as @s run scoreboard players set @s damage_queue 15

execute if score $eruption eruption matches 1.. as @s run function cartographer_core:helper/deal_damage/by_score

execute if score $eruption eruption matches 1.. as @s run function cartographer_core:helper/deal_damage/invulnerable_tick


execute if score $eruption knockback matches 1 as @s at @s run function cartographer_core:helper/push
execute if score $eruption knockback matches 2 as @s at @s run function cartographer_core:helper/push_2
execute if score $eruption knockback matches 3 as @s at @s run function cartographer_core:helper/push_3
execute if score $eruption knockback matches 4 as @s at @s run function cartographer_core:helper/push_4
execute if score $eruption knockback matches 5 as @s at @s run function cartographer_core:helper/push_5

execute if score $eruption fire_aspect matches 1 as @s run data modify entity @s Fire set value 81
execute if score $eruption fire_aspect matches 2 as @s run data modify entity @s Fire set value 161
execute if score $eruption fire_aspect matches 3 as @s run data modify entity @s Fire set value 241
execute if score $eruption fire_aspect matches 4 as @s run data modify entity @s Fire set value 321
execute if score $eruption fire_aspect matches 5 as @s run data modify entity @s Fire set value 401

execute if score $eruption frostbite matches 1 as @s run effect give @s slowness 4 0
execute if score $eruption frostbite matches 2 as @s run effect give @s slowness 4 1
execute if score $eruption frostbite matches 3 as @s run effect give @s slowness 4 2
execute if score $eruption frostbite matches 4 as @s run effect give @s slowness 4 3
execute if score $eruption frostbite matches 5 as @s run effect give @s slowness 4 4
execute if score $eruption frostbite matches 1.. as @s at @s run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if score $eruption decay matches 1 as @s run scoreboard players set @s effect_infect 3
execute if score $eruption decay matches 2 as @s run scoreboard players set @s effect_infect 5
execute if score $eruption decay matches 3 as @s run scoreboard players set @s effect_infect 7
execute if score $eruption decay matches 1.. as @s at @s run particle minecraft:dust 0.1 0 0 0.25 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if score $eruption overload matches 1 as @s run scoreboard players set @s effect_shocked 3
execute if score $eruption overload matches 2 as @s run scoreboard players set @s effect_shocked 5
execute if score $eruption overload matches 3 as @s run scoreboard players set @s effect_shocked 7
execute if score $eruption overload matches 1.. as @s at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute if score $eruption vicious matches 1.. as @s run scoreboard players add @s[scores={effect_bleed=1..},type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_bleed 11

execute if score $eruption vicious matches 1 as @s unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 3
execute if score $eruption vicious matches 2 as @s unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5
execute if score $eruption vicious matches 3 as @s unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 7
execute if score $eruption vicious matches 1.. as @s at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute if score $eruption stunning matches 1.. run function cartographer_core:helper/randomize
execute if score $eruption stunning matches 1.. run scoreboard players operation @s helper_melee = @s random

execute if score $eruption stunning matches 1 as @s at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption stunning matches 2 as @s at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption stunning matches 3 as @s at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption stunning matches 4 as @s at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption stunning matches 5 as @s at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute if score $eruption stunning matches 1 as @s at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption stunning matches 2 as @s at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption stunning matches 3 as @s at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption stunning matches 4 as @s at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption stunning matches 5 as @s at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute if score $eruption stunning matches 1 run scoreboard players set @s effect_stunned 21
execute if score $eruption stunning matches 2 run scoreboard players set @s effect_stunned 21
execute if score $eruption stunning matches 3 run scoreboard players set @s effect_stunned 21
execute if score $eruption stunning matches 4 run scoreboard players set @s effect_stunned 21
execute if score $eruption stunning matches 5 run scoreboard players set @s effect_stunned 21

execute if score $eruption committed matches 1 as @s run effect give @s bad_omen 3 0
execute if score $eruption committed matches 2 as @s run effect give @s bad_omen 3 1
execute if score $eruption committed matches 3 as @s run effect give @s bad_omen 3 2