scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg
scoreboard players set @s cdl.death_id 310208
tag @s remove no_cdl_msg
function cd:lib/player/damage/normal
tag @s add swept
tag @s add ability_tagged