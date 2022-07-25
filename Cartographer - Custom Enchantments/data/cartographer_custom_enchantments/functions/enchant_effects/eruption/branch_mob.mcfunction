execute run tp @s ~ ~ ~ facing entity @e[type=experience_orb,tag=erupting_xp,distance=..8,limit=1,sort=nearest] feet

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

#Do Knockback first so its all done at top of function
execute if score $eruption ca.knockback matches 1.. run scoreboard players set @s co_y 3

execute if score $eruption ca.knockback matches 1 run scoreboard players set @s co_send -8
execute if score $eruption ca.knockback matches 2 run scoreboard players set @s co_send -12
execute if score $eruption ca.knockback matches 3 run scoreboard players set @s co_send -18
execute if score $eruption ca.knockback matches 4 run scoreboard players set @s co_send -23
execute if score $eruption ca.knockback matches 5 run scoreboard players set @s co_send -31

function motion:motion/push

execute if score $eruption ca.eruption matches 1 as @s run scoreboard players set @s cdl.damage_queue 3
execute if score $eruption ca.eruption matches 2 as @s run scoreboard players set @s cdl.damage_queue 6
execute if score $eruption ca.eruption matches 3 as @s run scoreboard players set @s cdl.damage_queue 9
execute if score $eruption ca.eruption matches 4 as @s run scoreboard players set @s cdl.damage_queue 12
execute if score $eruption ca.eruption matches 5 as @s run scoreboard players set @s cdl.damage_queue 15

execute if score $eruption ca.eruption matches 1.. as @s run function cd:lib/mob/damage/normal

execute if score $eruption ca.cauterize matches 1 as @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

execute if score $eruption ca.fire_aspect matches 1 as @s run data modify entity @s Fire set value 81
execute if score $eruption ca.fire_aspect matches 2 as @s run data modify entity @s Fire set value 161
execute if score $eruption ca.fire_aspect matches 3 as @s run data modify entity @s Fire set value 241
execute if score $eruption ca.fire_aspect matches 4 as @s run data modify entity @s Fire set value 321
execute if score $eruption ca.fire_aspect matches 5 as @s run data modify entity @s Fire set value 401

execute if score $eruption ca.frostbite matches 1 as @s run scoreboard players set @s ca.frost_tier 1
execute if score $eruption ca.frostbite matches 2 as @s run scoreboard players set @s ca.frost_tier 2
execute if score $eruption ca.frostbite matches 3 as @s run scoreboard players set @s ca.frost_tier 3
execute if score $eruption ca.frostbite matches 4 as @s run scoreboard players set @s ca.frost_tier 4
execute if score $eruption ca.frostbite matches 5 as @s run scoreboard players set @s ca.frost_tier 5
execute if score $eruption ca.frostbite matches 1.. run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal
execute if score $eruption ca.frostbite matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $eruption ca.infection matches 1 as @s run scoreboard players set @s ca.effect_infect 3
execute if score $eruption ca.infection matches 2 as @s run scoreboard players set @s ca.effect_infect 5
execute if score $eruption ca.infection matches 3 as @s run scoreboard players set @s ca.effect_infect 7
execute if score $eruption ca.infection matches 1.. run particle minecraft:dust 0.1 0 0 0.25 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if score $eruption ca.electrocute matches 1 as @s run scoreboard players set @s ca.effect_shock 3
execute if score $eruption ca.electrocute matches 2 as @s run scoreboard players set @s ca.effect_shock 5
execute if score $eruption ca.electrocute matches 3 as @s run scoreboard players set @s ca.effect_shock 7
execute if score $eruption ca.electrocute matches 1.. run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute if score $eruption ca.bleeding matches 1.. as @s run scoreboard players add @s[scores={ca.effect_bleed=1..},type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] ca.effect_bleed 1

execute if score $eruption ca.bleeding matches 1.. as @s unless entity @s[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s},scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 3

execute if score $eruption ca.bleeding matches 1 run scoreboard players add @s ca.bleed_potency 1
execute if score $eruption ca.bleeding matches 2 run scoreboard players add @s ca.bleed_potency 2
execute if score $eruption ca.bleeding matches 3.. run scoreboard players add @s ca.bleed_potency 3

execute if score $eruption ca.bleeding matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute if score $eruption ca.stunning matches 1.. run function cartographer_core:helper/randomize
execute if score $eruption ca.stunning matches 1.. run scoreboard players operation @s ca.melee_chance = @s random

execute if score $eruption ca.stunning matches 1 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption ca.stunning matches 2 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption ca.stunning matches 3 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption ca.stunning matches 4 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $eruption ca.stunning matches 5 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute if score $eruption ca.stunning matches 1 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption ca.stunning matches 2 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption ca.stunning matches 3 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption ca.stunning matches 4 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $eruption ca.stunning matches 5 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute if score $eruption ca.stunning matches 1 run scoreboard players set @s ca.effect_stun 21
execute if score $eruption ca.stunning matches 2 run scoreboard players set @s ca.effect_stun 21
execute if score $eruption ca.stunning matches 3 run scoreboard players set @s ca.effect_stun 21
execute if score $eruption ca.stunning matches 4 run scoreboard players set @s ca.effect_stun 21
execute if score $eruption ca.stunning matches 5 run scoreboard players set @s ca.effect_stun 21

execute if score $eruption ca.exposing matches 1 as @s run effect give @s bad_omen 3 0
execute if score $eruption ca.exposing matches 2 as @s run effect give @s bad_omen 3 1
execute if score $eruption ca.exposing matches 3 as @s run effect give @s bad_omen 3 2

#Possession - Random Chance
execute if score $eruption ca.possession matches 1.. run scoreboard players set in math 1
execute if score $eruption ca.possession matches 1.. run scoreboard players set in1 math 100

execute if score $eruption ca.possession matches 1.. run function cartographer_core:helper/math/rng/range

execute if score $eruption ca.possession matches 1.. run scoreboard players operation $melee ca.melee_chance = out math

#Possession - Run Effect
execute if score $eruption ca.possession matches 1 as @s run scoreboard players set $percent_poss ca.melee_chance 10
execute if score $eruption ca.possession matches 2 as @s run scoreboard players set $percent_poss ca.melee_chance 20
execute if score $eruption ca.possession matches 3.. as @s run scoreboard players set $percent_poss ca.melee_chance 30

execute if score $eruption ca.possession matches 1.. as @s run function cartographer_custom_enchantments:enchant_effects/possession/branch