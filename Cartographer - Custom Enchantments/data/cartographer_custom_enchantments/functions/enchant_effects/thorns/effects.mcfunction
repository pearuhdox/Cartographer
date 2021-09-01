scoreboard players set @s cdl.Damage_Queue 0

scoreboard players operation @s cdl.Damage_Queue = $thorns ca.thorns

function cd:lib/mob/damage/normal

execute unless score $thorns ca.t_knock matches 1.. run function cartographer_core:helper/push_half

execute if score $thorns ca.t_knock matches 1 run function cartographer_core:helper/push
execute if score $thorns ca.t_knock matches 2 run function cartographer_core:helper/push_2
execute if score $thorns ca.t_knock matches 3 run function cartographer_core:helper/push_3
execute if score $thorns ca.t_knock matches 4 run function cartographer_core:helper/push_4
execute if score $thorns ca.t_knock matches 5.. run function cartographer_core:helper/push_5


execute if score $thorns ca.t_fire matches 1 run data modify entity @s Fire set value 101
execute if score $thorns ca.t_fire matches 2 run data modify entity @s Fire set value 181
execute if score $thorns ca.t_fire matches 3.. run data modify entity @s Fire set value 261

execute if score $thorns ca.cauterize matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/other

execute if score $thorns ca.t_frost matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $thorns ca.t_frost matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $thorns ca.t_frost matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $thorns ca.t_frost matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $thorns ca.t_frost matches 5.. run scoreboard players set @s ca.frost_tier 5
execute if score $thorns ca.t_frost matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $thorns ca.t_stun matches 1.. run function cartographer_core:helper/randomize
execute if score $thorns ca.t_stun matches 1.. run scoreboard players operation $thorns ca.melee_chance = @s random

execute if score $thorns ca.t_stun matches 1 if score $thorns ca.melee_chance matches ..10 run scoreboard players set @s ca.effect_stun 21
execute if score $thorns ca.t_stun matches 2 if score $thorns ca.melee_chance matches ..20 run scoreboard players set @s ca.effect_stun 21
execute if score $thorns ca.t_stun matches 3 if score $thorns ca.melee_chance matches ..30 run scoreboard players set @s ca.effect_stun 21
execute if score $thorns ca.t_stun matches 4 if score $thorns ca.melee_chance matches ..40 run scoreboard players set @s ca.effect_stun 21
execute if score $thorns ca.t_stun matches 5.. if score $thorns ca.melee_chance matches ..50 run scoreboard players set @s ca.effect_stun 21

execute if score $thorns ca.t_stun matches 1 if score $thorns ca.melee_chance matches ..10 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns ca.t_stun matches 2 if score $thorns ca.melee_chance matches ..20 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns ca.t_stun matches 3 if score $thorns ca.melee_chance matches ..30 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns ca.t_stun matches 4 if score $thorns ca.melee_chance matches ..40 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score $thorns ca.t_stun matches 5.. if score $thorns ca.melee_chance matches ..50 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 0.5 1.25

execute if score $thorns ca.t_stun matches 1 if score $thorns ca.melee_chance matches ..10 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns ca.t_stun matches 2 if score $thorns ca.melee_chance matches ..20 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns ca.t_stun matches 3 if score $thorns ca.melee_chance matches ..30 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns ca.t_stun matches 4 if score $thorns ca.melee_chance matches ..40 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $thorns ca.t_stun matches 5.. if score $thorns ca.melee_chance matches ..50 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

scoreboard players set $thorns ca.melee_chance 0


execute if score $thorns ca.t_bleed matches 1.. run scoreboard players add @s[scores={ca.effect_bleed=1..}] ca.effect_bleed 1

execute if score $thorns ca.t_bleed matches 1.. unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 3

execute if score $thorns ca.t_bleed matches 1 run scoreboard players add @s ca.bleed_potency 1
execute if score $thorns ca.t_bleed matches 2 run scoreboard players add @s ca.bleed_potency 2
execute if score $thorns ca.t_bleed matches 3.. run scoreboard players add @s ca.bleed_potency 3


execute if score $thorns ca.t_shock matches 1 run scoreboard players set @s ca.effect_shock 3
execute if score $thorns ca.t_shock matches 2 run scoreboard players set @s ca.effect_shock 5
execute if score $thorns ca.t_shock matches 3.. run scoreboard players set @s ca.effect_shock 7


execute if score $thorns ca.t_vuln matches 1 run effect give @s bad_omen 4 0
execute if score $thorns ca.t_vuln matches 2 run effect give @s bad_omen 4 1
execute if score $thorns ca.t_vuln matches 3.. run effect give @s bad_omen 4 2


execute if score $thorns ca.t_infection matches 1 run scoreboard players set @s ca.effect_infect 3
execute if score $thorns ca.t_infection matches 2 run scoreboard players set @s ca.effect_infect 5
execute if score $thorns ca.t_infection matches 3.. run scoreboard players set @s ca.effect_infect 7