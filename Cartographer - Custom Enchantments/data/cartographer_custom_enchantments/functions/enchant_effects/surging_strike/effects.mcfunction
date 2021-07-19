scoreboard players operation @s cdl.Damage_Queue = $melee ca.attack_val
function cd:lib/mob/damage/normal

tp @s ~ ~ ~ facing entity @p[scores={ca.surge_strike=1..}] feet
function cartographer_core:helper/push_half

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

#Committed
execute if score $melee ca.committed matches 1 run effect give @s bad_omen 4 0
execute if score $melee ca.committed matches 2 run effect give @s bad_omen 4 1
execute if score $melee ca.committed matches 3.. run effect give @s bad_omen 4 2

#Vicious
execute if score $melee ca.vicious matches 1.. run scoreboard players add @s ca.effect_bleed 0
execute if score $melee ca.vicious matches 1.. if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.effect_bleed 1
execute if score $melee ca.vicious matches 1.. if score @s ca.effect_bleed matches 0 run scoreboard players set @s ca.effect_bleed 3

execute if score $melee ca.vicious matches 1 run scoreboard players add @s ca.bleed_potency 1
execute if score $melee ca.vicious matches 2 run scoreboard players add @s ca.bleed_potency 1
execute if score $melee ca.vicious matches 3.. run scoreboard players add @s ca.bleed_potency 1

#Overload
execute if score $melee ca.overload matches 1 run scoreboard players set @s ca.effect_shock 3
execute if score $melee ca.overload matches 2 run scoreboard players set @s ca.effect_shock 5
execute if score $melee ca.overload matches 3.. run scoreboard players set @s ca.effect_shock 7

#Decay
execute if score $melee ca.decay matches 1 run scoreboard players set @s ca.effect_infect 3
execute if score $melee ca.decay matches 2 run scoreboard players set @s ca.effect_infect 5
execute if score $melee ca.decay matches 3.. run scoreboard players set @s ca.effect_infect 7

#Stunning
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run scoreboard players set @s ca.effect_stun 21
execute if score $melee ca.stunning matches 1.. if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run say trigger stun

#scoreboard players set $melee ca.melee_chance 0

tag @s add thrusted