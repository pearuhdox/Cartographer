#Custom Debuff Conversion Chart
# Nausea 10 - Stunned
# Nausea 11 - Shocked
# Nausea 12 - Infection
# Nausea 13 - Bleeding
# Nausea 14 - Bleeding II
# Nausea 15 - Bleeding III
# Nausea 16 - Bleeding IV
# Nausea 17 - Bleeding V
# Nausea 18 - Cloaked

# Nausea Potency 100 - Cleansing

#say converting

data modify storage ca.custom_status apply set value {}
data modify storage ca.custom_status apply set from entity @s ActiveEffects[{Id:9}]

execute store result score @s ca.time_convert run data get storage ca.custom_status apply.Duration
scoreboard players remove @s ca.time_convert 1

scoreboard players operation @s ca.time_convert /= $20 ca.CONSTANT
scoreboard players add @s ca.time_convert 1

execute store result score @s ca.id_convert run data get storage ca.custom_status apply.Amplifier

execute if entity @s[scores={ca.id_convert=10}] run scoreboard players operation @s ca.time_convert *= $20 ca.CONSTANT
execute if entity @s[scores={ca.id_convert=10}] run scoreboard players operation @s ca.effect_stun = @s ca.time_convert
execute if entity @s[scores={ca.id_convert=11}] run scoreboard players operation @s ca.effect_shock = @s ca.time_convert
execute if entity @s[scores={ca.id_convert=12}] run scoreboard players operation @s ca.effect_infect = @s ca.time_convert

execute if entity @s[scores={ca.id_convert=13..17}] run scoreboard players add @s ca.effect_bleed 0
execute if entity @s[scores={ca.id_convert=13..17,ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 1
execute if entity @s[scores={ca.id_convert=13..17,ca.effect_bleed=0}] run scoreboard players operation @s ca.effect_bleed = @s ca.time_convert


execute if entity @s[scores={ca.id_convert=13,ca.effect_bleed=1..}] run scoreboard players add @s ca.bleed_potency 1
execute if entity @s[scores={ca.id_convert=14,ca.effect_bleed=1..}] run scoreboard players add @s ca.bleed_potency 2
execute if entity @s[scores={ca.id_convert=15,ca.effect_bleed=1..}] run scoreboard players add @s ca.bleed_potency 3
execute if entity @s[scores={ca.id_convert=16,ca.effect_bleed=1..}] run scoreboard players add @s ca.bleed_potency 4
execute if entity @s[scores={ca.id_convert=17,ca.effect_bleed=1..}] run scoreboard players add @s ca.bleed_potency 5

execute if entity @s[scores={ca.id_convert=18}] run scoreboard players operation @s ca.effect_cloak = @s ca.time_convert

execute if score @s ca.id_convert matches 10..20 run effect clear @s[predicate=!essentials:has_transmutation] nausea