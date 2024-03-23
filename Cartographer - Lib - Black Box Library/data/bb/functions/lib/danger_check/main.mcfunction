
#Remove tags from last check
tag @s remove bbl.in_danger
tag @s remove bbl.in_danger.in_void
tag @s remove bbl.in_danger.in_damage_block
tag @s remove bbl.in_danger.falling
tag @s remove bbl.in_danger.drowning
tag @s remove bbl.in_danger.taking_dot
tag @s remove bbl.in_danger.targeted_by_mob

#Check if in void
execute if entity @s[tag=!bbl.in_danger] run function bb:lib/danger_check/check/in_void
