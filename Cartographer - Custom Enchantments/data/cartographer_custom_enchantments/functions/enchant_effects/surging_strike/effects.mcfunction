scoreboard players operation @s cdl.damage_queue = $melee ca.attack_val
function cd:lib/mob/damage/normal

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

function motion:motion/push

#Fire Aspect
execute if score $melee ca.fire_aspect matches 1 run data modify entity @s Fire set value 101
execute if score $melee ca.fire_aspect matches 2 run data modify entity @s Fire set value 181
execute if score $melee ca.fire_aspect matches 3.. run data modify entity @s Fire set value 261

#Frostbite
execute if score $melee ca.frostbite matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $melee ca.frostbite matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $melee ca.frostbite matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $melee ca.frostbite matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $melee ca.frostbite matches 5.. run scoreboard players set @s ca.frost_tier 5
execute if score $melee ca.frostbite matches 1.. run scoreboard players set @s ca.frost_time 81

#Exposing
execute if score $melee ca.exposing matches 1 run effect give @s bad_omen 4 0
execute if score $melee ca.exposing matches 2 run effect give @s bad_omen 4 1
execute if score $melee ca.exposing matches 3.. run effect give @s bad_omen 4 2

#Bleeding
execute if score $melee ca.bleeding matches 1.. run scoreboard players add @s ca.effect_bleed 0
execute if score $melee ca.bleeding matches 1.. if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.effect_bleed 1
execute if score $melee ca.bleeding matches 1.. if score @s ca.effect_bleed matches 0 run scoreboard players set @s ca.effect_bleed 3

execute if score $melee ca.bleeding matches 1 run scoreboard players add @s ca.bleed_potency 1
execute if score $melee ca.bleeding matches 2 run scoreboard players add @s ca.bleed_potency 1
execute if score $melee ca.bleeding matches 3.. run scoreboard players add @s ca.bleed_potency 1

#Electrocute
execute if score $melee ca.electrocute matches 1 run scoreboard players set @s ca.effect_shock 3
execute if score $melee ca.electrocute matches 2 run scoreboard players set @s ca.effect_shock 5
execute if score $melee ca.electrocute matches 3.. run scoreboard players set @s ca.effect_shock 7

#Infection
execute if score $melee ca.infection matches 1 run scoreboard players set @s ca.effect_infect 3
execute if score $melee ca.infection matches 2 run scoreboard players set @s ca.effect_infect 5
execute if score $melee ca.infection matches 3.. run scoreboard players set @s ca.effect_infect 7

#Stunning
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run scoreboard players set @s ca.effect_stun 21
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run say trigger stun

#Possession
#Possession - Random Chance
execute if score $melee ca.possession matches 1.. run scoreboard players set in math 1
execute if score $melee ca.possession matches 1.. run scoreboard players set in1 math 100

execute if score $melee ca.possession matches 1.. run function cartographer_core:helper/math/rng/range

execute if score $melee ca.possession matches 1.. run scoreboard players operation $melee ca.melee_chance = out math

#Possession - Run Effect
execute if score $melee ca.possession matches 1 as @s run scoreboard players set $percent_poss ca.melee_chance 10
execute if score $melee ca.possession matches 2 as @s run scoreboard players set $percent_poss ca.melee_chance 20
execute if score $melee ca.possession matches 3.. as @s run scoreboard players set $percent_poss ca.melee_chance 30

execute if score $melee ca.possession matches 1.. as @s run function cartographer_custom_enchantments:enchant_effects/possession/branch

#scoreboard players set $melee ca.melee_chance 0

tag @s add thrusted