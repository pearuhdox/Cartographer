execute if entity @s[scores={ca.fire_aspect=1}] as @e[type=#bb:hostile,distance=..1] at @s run data modify entity @s Fire set value 81
execute if entity @s[scores={ca.fire_aspect=2}] as @e[type=#bb:hostile,distance=..1] at @s run data modify entity @s Fire set value 161
execute if entity @s[scores={ca.fire_aspect=3..}] as @e[type=#bb:hostile,distance=..1] at @s run data modify entity @s Fire set value 241

execute if entity @s[scores={ca.frostbite=1}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_tier 1
execute if entity @s[scores={ca.frostbite=2}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_tier 2
execute if entity @s[scores={ca.frostbite=3}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_tier 3
execute if entity @s[scores={ca.frostbite=4}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_tier 4
execute if entity @s[scores={ca.frostbite=5..}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_tier 5
execute if entity @s[scores={ca.frostbite=1..}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.frost_time 81

execute if entity @s[scores={ca.infection=1}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_infect 3
execute if entity @s[scores={ca.infection=2}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_infect 5
execute if entity @s[scores={ca.infection=3..}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_infect 7

execute if entity @s[scores={ca.exposing=1}] as @e[type=#bb:hostile,distance=..1] at @s run effect give @s bad_omen 4 0
execute if entity @s[scores={ca.exposing=2}] as @e[type=#bb:hostile,distance=..1] at @s run effect give @s bad_omen 4 1
execute if entity @s[scores={ca.exposing=3..}] as @e[type=#bb:hostile,distance=..1] at @s run effect give @s bad_omen 4 2

execute if entity @s[scores={ca.bleeding=1..}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players add @s[scores={ca.effect_bleed=1..},type=#bb:hostile,nbt=!{HurtTime:0s}] ca.effect_bleed 11

execute if entity @s[scores={ca.bleeding=1}] as @e[type=#bb:hostile,distance=..1] at @s unless entity @s[type=#bb:hostile,nbt=!{HurtTime:0s},scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 3
execute if entity @s[scores={ca.bleeding=2}] as @e[type=#bb:hostile,distance=..1] at @s unless entity @s[type=#bb:hostile,nbt=!{HurtTime:0s},scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 5
execute if entity @s[scores={ca.bleeding=3..}] as @e[type=#bb:hostile,distance=..1] at @s unless entity @s[type=#bb:hostile,nbt=!{HurtTime:0s},scores={ca.effect_bleed=1..}] run scoreboard players set @s ca.effect_bleed 7

execute if entity @s[scores={ca.electrocute=1}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_shock 3
execute if entity @s[scores={ca.electrocute=2}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_shock 5
execute if entity @s[scores={ca.electrocute=3..}] as @e[type=#bb:hostile,distance=..1] at @s run scoreboard players set @s ca.effect_shock 7

execute if entity @s[scores={ca.stunning=1..}] run function cartographer_core:helper/randomize
execute if entity @s[scores={ca.stunning=1..}] run scoreboard players operation @s ca.melee_chance = @s random

execute if entity @s[scores={ca.stunning=1,ca.melee_chance=..10}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s ca.effect_stun 21
execute if entity @s[scores={ca.stunning=2,ca.melee_chance=..20}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s ca.effect_stun 21
execute if entity @s[scores={ca.stunning=3,ca.melee_chance=..30}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s ca.effect_stun 21
execute if entity @s[scores={ca.stunning=4,ca.melee_chance=..40}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s ca.effect_stun 21
execute if entity @s[scores={ca.stunning=5..,ca.melee_chance=..50}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s ca.effect_stun 21