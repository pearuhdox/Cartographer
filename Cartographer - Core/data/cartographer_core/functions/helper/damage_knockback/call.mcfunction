scoreboard players set $dmg_kb cdl.damge_queue 0
scoreboard players operation $dmg_kb cdl.damage_queue = @s cdl.damage_queue

function cartographer_core:helper/damage_knockback/summon

scoreboard players set @s cdl.damage_queue 0

scoreboard players set @s cdl.damage_timer 10

function cd:func/player_damage_normal/disguise/loop

function cd:func/custom_death/loop