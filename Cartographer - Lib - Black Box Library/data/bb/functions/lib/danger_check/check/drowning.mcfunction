
#Check drowning
execute store result score $air_remaining bbl.storage run data get entity @s Air
execute if score $air_remaining bbl.storage matches ..299 run function bb:lib/danger_check/drowning

#If not drowning, check taking DoT
execute if entity @s[tag=!bbl.in_danger] run function bb:lib/danger_check/check/taking_dot
