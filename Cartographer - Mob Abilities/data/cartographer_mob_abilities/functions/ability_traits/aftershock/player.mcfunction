scoreboard players operation @s cdl.damage_queue = $aftershock ca.ability_dmg
scoreboard players set @s[distance=..3.5,tag=!no_cdl_msg] cdl.death_id 310204
tag @s remove no_cdl_msg

tag @s add ability_tagged

function cd:lib/player/damage/normal