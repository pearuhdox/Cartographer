
#Check in a damaging block
execute if block ~ ~ ~ #bb:damage_block run function bb:lib/danger_check/in_damage_block
execute if block ~ ~1 ~ #bb:damage_block run function bb:lib/danger_check/in_damage_block
execute if block ~ ~-.85 ~ #bb:damage_block run function bb:lib/danger_check/in_damage_block

#If not in damaging block, check falling
execute if entity @s[tag=!bbl.in_danger] run function bb:lib/danger_check/check/falling
