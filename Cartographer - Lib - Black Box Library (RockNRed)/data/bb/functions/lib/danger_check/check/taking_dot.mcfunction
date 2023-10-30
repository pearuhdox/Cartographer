
#Check freezing
execute store result score $freeze_time bbl.storage run data get entity @s TicksFrozen
execute if score $freeze_time bbl.storage matches 1.. run function bb:lib/danger_check/taking_dot

#Check burning
execute store result score $fire bbl.storage run data get entity @s Fire
execute unless score $fire bbl.storage matches -20 run function bb:lib/danger_check/taking_dot

#Check poison/wither
execute if predicate bb:has_dot run function bb:lib/danger_check/taking_dot

#If not taking DoT, check targeted by mobs
execute if entity @s[tag=!bbl.in_danger] run function bb:lib/danger_check/check/targeted_by_mobs
