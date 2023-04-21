scoreboard players set $ranged_damage_flat catt.var 0
scoreboard players set $ranged_damage_percent catt.var 0
scoreboard players set $ranged_damage_calc catt.var 0

scoreboard players set $ranged_damage_flat catt.var 0
scoreboard players set $ranged_damage_percent catt.var 0

#Setup the Speed Value Calc Properly - Multiply by 1000 so we have the value in a workable size.
scoreboard players set $ranged_damage_calc catt.var 0

#For Items in the Main Hand, we also rely on the raw RangedDamage stat if specified
execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.RangedDamage 100
execute if score $temp catt.var matches 1.. run scoreboard players operation $ranged_damage_calc catt.var = $temp catt.var
scoreboard players set $temp catt.var 0

#For Items in the Off Hand, we also rely on the raw RangedDamage stat if specified - Don't do this if we already have a stat from the Main Hand
execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.RangedDamage 100
execute unless score $ranged_damage_calc catt.var matches 1.. if score $temp catt.var matches 1.. run scoreboard players operation $ranged_damage_calc catt.var = $temp catt.var
scoreboard players set $temp catt.var 0



execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"flat_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Multiply the Value by 100 (represented as tenths) - Then add it to base
scoreboard players operation $ranged_damage_calc catt.var += $ranged_damage_flat catt.var

#Apply Bonuses from other locations
scoreboard players operation $ranged_damage_calc catt.var += @s catt.flat_mod.range


execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"percent_ranged_damage"}].Amount 100
scoreboard players operation $ranged_damage_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Create the percentage and then apply it
scoreboard players operation $ranged_damage_percent catt.var += $100 catt.var

#Apply Bonuses from other locations
scoreboard players operation $ranged_damage_percent catt.var += @s catt.perc_mod.range

scoreboard players operation $ranged_damage_calc catt.var *= $ranged_damage_percent catt.var
scoreboard players operation $ranged_damage_calc catt.var /= $100 catt.var

scoreboard players operation @s catt.stat.range = $ranged_damage_calc catt.var