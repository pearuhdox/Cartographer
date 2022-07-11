scoreboard players set @s ca.cauter_dmg 0
scoreboard players set $round ca.cauter_dmg 0

execute store result score @s ca.cauter_dmg run data get entity @s Fire 0.1

scoreboard players operation @s ca.cauter_dmg /= $2 ca.CONSTANT

scoreboard players operation @s ca.cauter_dmg -= $1 ca.CONSTANT

scoreboard players operation $round ca.cauter_dmg = @s ca.cauter_dmg
scoreboard players operation $round ca.cauter_dmg %= $2 ca.CONSTANT

scoreboard players operation @s ca.cauter_dmg += $round ca.cauter_dmg

scoreboard players operation @s ca.cauter_dmg /= $2 ca.CONSTANT

scoreboard players operation $dur_calc ca.brittle_time = @s ca.cauter_dmg
scoreboard players operation $dur_calc ca.brittle_time *= $10 ca.CONSTANT
scoreboard players operation $dur_calc ca.brittle_time *= $4 ca.CONSTANT

scoreboard players operation @s ca.brittle_time = $dur_calc ca.brittle_time


#Do the damage here.
scoreboard players operation @s cdl.damage_queue = @s ca.cauter_dmg
execute if score @s cdl.damage_queue matches 1.. run function cd:lib/mob/damage/true

scoreboard players set $brittled ca.cauterize 1

execute if score $ranged ca.cauterize matches 1.. run scoreboard players set @s ca.cau_prv_time -1
execute if score $ranged ca.cauterize matches 1.. run tag @s add stop_track_fire

#Add the tag for brittle to cleanse fire (1 tick delay).
tag @s add cleanse_fire