scoreboard players set @s damage_queue 0

scoreboard players operation @s damage_queue = $thorns thorns

function cartographer_core:helper/deal_damage/by_score
function cartographer_core:helper/deal_damage/invulnerable_tick

execute unless score $thorns t_knock matches 1.. run function cartographer_core:helper/push_half

execute if score $thorns t_knock matches 1 run function cartographer_core:helper/push
execute if score $thorns t_knock matches 2 run function cartographer_core:helper/push_2
execute if score $thorns t_knock matches 3 run function cartographer_core:helper/push_3
execute if score $thorns t_knock matches 4 run function cartographer_core:helper/push_4
execute if score $thorns t_knock matches 5.. run function cartographer_core:helper/push_5


execute if score $thorns t_fire matches 1 run data modify entity @s Fire set value 101
execute if score $thorns t_fire matches 2 run data modify entity @s Fire set value 181
execute if score $thorns t_fire matches 3.. run data modify entity @s Fire set value 261

execute if score $thorns t_frost matches 1 run effect give @s slowness 4 0
execute if score $thorns t_frost matches 2 run effect give @s slowness 4 1
execute if score $thorns t_frost matches 3 run effect give @s slowness 4 2
execute if score $thorns t_frost matches 4 run effect give @s slowness 4 3
execute if score $thorns t_frost matches 5.. run effect give @s slowness 4 4

execute if score $thorns t_stun matches 1.. run function cartographer_core:helper/randomize
execute if score $thorns t_stun matches 1.. run scoreboard players operation $thorns helper_melee = @s random

execute if score $thorns t_stun matches 1 if score $thorns helper_melee matches ..10 run scoreboard players set @s effect_stunned 21
execute if score $thorns t_stun matches 2 if score $thorns helper_melee matches ..20 run scoreboard players set @s effect_stunned 21
execute if score $thorns t_stun matches 3 if score $thorns helper_melee matches ..30 run scoreboard players set @s effect_stunned 21
execute if score $thorns t_stun matches 4 if score $thorns helper_melee matches ..40 run scoreboard players set @s effect_stunned 21
execute if score $thorns t_stun matches 5.. if score $thorns helper_melee matches ..50 run scoreboard players set @s effect_stunned 21

execute if score $thorns t_stun matches 1 if score $thorns helper_melee matches ..10 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns t_stun matches 2 if score $thorns helper_melee matches ..20 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns t_stun matches 3 if score $thorns helper_melee matches ..30 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns t_stun matches 4 if score $thorns helper_melee matches ..40 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns t_stun matches 5.. if score $thorns helper_melee matches ..50 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25

execute if score $thorns t_stun matches 1 if score $thorns helper_melee matches ..10 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns t_stun matches 2 if score $thorns helper_melee matches ..20 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns t_stun matches 3 if score $thorns helper_melee matches ..30 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns t_stun matches 4 if score $thorns helper_melee matches ..40 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns t_stun matches 5.. if score $thorns helper_melee matches ..50 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

scoreboard players set $thorns helper_melee 0

execute if score $thorns t_bleed matches 1.. run scoreboard players add @s[scores={effect_bleed=1..}] effect_bleed 11

execute if score $thorns t_bleed matches 1 unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 3
execute if score $thorns t_bleed matches 2 unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5
execute if score $thorns t_bleed matches 3.. unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 7

execute if score $thorns t_shock matches 1 run scoreboard players set @s effect_shocked 3
execute if score $thorns t_shock matches 2 run scoreboard players set @s effect_shocked 5
execute if score $thorns t_shock matches 3.. run scoreboard players set @s effect_shocked 7

execute if score $thorns t_vuln matches 1 run effect give @s bad_omen 4 0
execute if score $thorns t_vuln matches 2 run effect give @s bad_omen 4 1
execute if score $thorns t_vuln matches 3.. run effect give @s bad_omen 4 2

execute if score $thorns t_decay matches 1 run scoreboard players set @s effect_infect 3
execute if score $thorns t_decay matches 2 run scoreboard players set @s effect_infect 5
execute if score $thorns t_decay matches 3.. run scoreboard players set @s effect_infect 7