playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

effect clear @s absorption

execute if score @s ca.sw_tier matches 3600.. run scoreboard players set @s cdl.damage_queue 6
execute unless entity @s[tag=no_cdl_msg] if score @s ca.sw_tier matches 3600.. run scoreboard players set @s cdl.death_id 310101
execute if score @s ca.sw_tier matches 3600.. run function cd:lib/player/damage/true

execute if score @s ca.sw_tier matches 7200.. run scoreboard players set @s cdl.damage_queue 12
execute unless entity @s[tag=no_cdl_msg] if score @s ca.sw_tier matches 7200.. run scoreboard players set @s cdl.death_id 310101
execute if score @s ca.sw_tier matches 7200.. run function cd:lib/player/damage/true

execute if score @s ca.sw_tier matches 10800.. run scoreboard players set @s cdl.damage_queue 18
execute unless entity @s[tag=no_cdl_msg] if score @s ca.sw_tier matches 10800.. run scoreboard players set @s cdl.death_id 310101
execute if score @s ca.sw_tier matches 10800.. run function cd:lib/player/damage/true

tag @s remove no_cdl_msg

tag @s remove mortal_coil