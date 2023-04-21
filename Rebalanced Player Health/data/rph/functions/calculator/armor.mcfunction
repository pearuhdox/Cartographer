scoreboard players set $armor_flat rph.var 0
scoreboard players set $armor_percent rph.var 0
scoreboard players set $armor_calc rph.var 0


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomAttributes[{id:"flat_armor"}].Amount
scoreboard players operation $armor_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0



execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomAttributes[{id:"percent_armor"}].Amount
scoreboard players operation $armor_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0


scoreboard players set $armor_calc rph.var 0
scoreboard players operation $armor_calc rph.var += @s rph.temp.armor_flat

scoreboard players operation $armor_calc rph.var += $armor_flat rph.var

scoreboard players operation $armor_percent rph.var += $100 rph.var
scoreboard players operation $armor_percent rph.var += @s rph.temp.armor_percent

scoreboard players operation $armor_calc rph.var *= $armor_percent rph.var
scoreboard players operation $armor_calc rph.var /= $100 rph.var

scoreboard players operation @s rph.armor = $armor_calc rph.var