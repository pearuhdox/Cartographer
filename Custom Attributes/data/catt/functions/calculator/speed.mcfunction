scoreboard players set $speed_flat catt.var 0
scoreboard players set $speed_percent catt.var 0
scoreboard players set $speed_calc catt.var 0

scoreboard players set $speed_flat catt.var 0
scoreboard players set $speed_percent catt.var 0

#Setup the Speed Value Calc Properly - Multiply by 1000 so we have the value in a workable size.
execute store result score $speed_calc catt.var run attribute @s minecraft:generic.movement_speed base get 1000

execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"flat_speed"}].Amount 100
scoreboard players operation $speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Multiply the Value by 100 (represented as tenths) - Then add it to base
scoreboard players operation $speed_calc catt.var += $speed_flat catt.var

#Apply Bonuses from other locations
scoreboard players operation $speed_calc catt.var += @s catt.flat_mod.speed


execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"percent_speed"}].Amount 100
scoreboard players operation $speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Create the percentage and then apply it
scoreboard players operation $speed_percent catt.var += $100 catt.var

#Apply Bonuses from other locations
scoreboard players operation $speed_percent catt.var += @s catt.perc_mod.speed

scoreboard players operation $speed_calc catt.var *= $speed_percent catt.var
scoreboard players operation $speed_calc catt.var /= $100 catt.var

scoreboard players operation @s catt.stat.speed = $speed_calc catt.var