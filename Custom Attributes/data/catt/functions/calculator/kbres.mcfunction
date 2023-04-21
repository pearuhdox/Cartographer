scoreboard players set $kbr_flat catt.var 0
scoreboard players set $kbr_percent catt.var 0
scoreboard players set $kbr_calc catt.var 0

scoreboard players set $kbr_flat catt.var 0
scoreboard players set $kbr_percent catt.var 0

#Setup the kbr Value Calc Properly - Multiply by 1000 so we have the value in a workable size.
execute store result score $kbr_calc catt.var run attribute @s minecraft:generic.knockback_resistance base get 100

execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"flat_kbr"}].Amount 100
scoreboard players operation $kbr_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Multiply the Value by 100 (represented as tenths) - Then add it to base
scoreboard players operation $kbr_calc catt.var += $kbr_flat catt.var

#Apply Bonuses from other locations
scoreboard players operation $kbr_calc catt.var += @s catt.flat_mod.kbres


execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"percent_kbr"}].Amount 100
scoreboard players operation $kbr_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Create the percentage and then apply it
scoreboard players operation $kbr_percent catt.var += $100 catt.var

#Apply Bonuses from other locations
scoreboard players operation $kbr_percent catt.var += @s catt.perc_mod.kbres

scoreboard players operation $kbr_calc catt.var *= $kbr_percent catt.var
scoreboard players operation $kbr_calc catt.var /= $100 catt.var

scoreboard players operation @s catt.stat.kbres = $kbr_calc catt.var