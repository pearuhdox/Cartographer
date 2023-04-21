scoreboard players set $attack_speed_flat catt.var 0
scoreboard players set $attack_speed_percent catt.var 0
scoreboard players set $attack_speed_calc catt.var 0

scoreboard players set $attack_speed_flat catt.var 0
scoreboard players set $attack_speed_percent catt.var 0

#Setup the Speed Value Calc Properly - Multiply by 1000 so we have the value in a workable size.
execute store result score $attack_speed_calc catt.var run attribute @s minecraft:generic.attack_speed base get 100

#For Items in the Main Hand, we also rely on the raw AttackSpeed stat if specified
execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.AttackSpeed 100
execute if score $temp catt.var matches 1.. run scoreboard players operation $attack_speed_calc catt.var = $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"flat_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_flat catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Multiply the Value by 100 (represented as tenths) - Then add it to base
scoreboard players operation $attack_speed_calc catt.var += $attack_speed_flat catt.var

#Apply Bonuses from other locations
scoreboard players operation $attack_speed_calc catt.var += @s catt.flat_mod.atksp


execute store result score $temp catt.var run data get storage catt:inventory Items[0].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[1].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[2].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[3].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[4].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

execute store result score $temp catt.var run data get storage catt:inventory Items[5].tag.CustomAttributes[{id:"percent_attack_speed"}].Amount 100
scoreboard players operation $attack_speed_percent catt.var += $temp catt.var
scoreboard players set $temp catt.var 0

#Create the percentage and then apply it
scoreboard players operation $attack_speed_percent catt.var += $100 catt.var

#Apply Bonuses from other locations
scoreboard players operation $attack_speed_percent catt.var += @s catt.perc_mod.atksp

scoreboard players operation $attack_speed_calc catt.var *= $attack_speed_percent catt.var
scoreboard players operation $attack_speed_calc catt.var /= $100 catt.var

scoreboard players operation @s catt.stat.atksp = $attack_speed_calc catt.var