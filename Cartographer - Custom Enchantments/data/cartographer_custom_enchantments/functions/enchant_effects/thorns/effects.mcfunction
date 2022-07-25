scoreboard players set @s cdl.damage_queue 0

scoreboard players operation @s cdl.damage_queue = $thorns ca.thorns

function cd:lib/mob/damage/normal

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

execute if score $thorns ca.t_knock matches 1.. run scoreboard players set @s co_y 3
execute if score $thorns ca.t_knock matches 1 run scoreboard players set @s co_send -8
execute if score $thorns ca.t_knock matches 2 run scoreboard players set @s co_send -12
execute if score $thorns ca.t_knock matches 3 run scoreboard players set @s co_send -18
execute if score $thorns ca.t_knock matches 4 run scoreboard players set @s co_send -23
execute if score $thorns ca.t_knock matches 5.. run scoreboard players set @s co_send -31

execute if score $thorns ca.t_knock matches 1.. run function motion:motion/push

execute if score $thorns ca.t_fire matches 1 run data modify entity @s Fire set value 101
execute if score $thorns ca.t_fire matches 2 run data modify entity @s Fire set value 181
execute if score $thorns ca.t_fire matches 3.. run data modify entity @s Fire set value 261

execute if score $thorns ca.cauterize matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/other

scoreboard players operation @s ca.frost_tier = $thorns ca.t_frost
execute if score $thorns ca.t_frost matches 6.. run scoreboard players set @s ca.frost_tier 5
execute if score $thorns ca.t_frost matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $thorns ca.t_stun matches 1.. run function cartographer_core:helper/randomize
execute if score $thorns ca.t_stun matches 1.. run scoreboard players operation $thorns ca.melee_chance = @s random

scoreboard players set $temp ca.melee_chance 10
scoreboard players operation $temp ca.melee_chance *= $thorns ca.t_stun
execute if score $thorns ca.melee_chance <= $temp ca.melee_chance run function cartographer_custom_enchantments:enchant_effects/thorns/branch/do_stun

#scoreboard players set $thorns ca.melee_chance 0


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

#Orian if you complain about this one more time I swear to God I will gut France like a fish
execute if entity @s[type=#minecraft:skeletons] run effect give @s blindness 1 0

#Possession - Random Chance
execute if score $thorns ca.t_poss matches 1.. run function cartographer_custom_enchantments:enchant_effects/thorns/branch/posession