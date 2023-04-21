scoreboard players set $health_flat rph.var 0
scoreboard players set $health_percent rph.var 0
scoreboard players set $health_calc rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomAttributes[{id:"flat_health"}].Amount
scoreboard players operation $health_flat rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation $health_flat rph.var *= $100 rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomAttributes[{id:"percent_health"}].Amount
scoreboard players operation $health_percent rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players set $health_calc rph.var 2000
scoreboard players operation $health_calc rph.var += @s rph.temp.health_flat

scoreboard players operation $health_calc rph.var += $health_flat rph.var

scoreboard players operation $health_percent rph.var += $100 rph.var
scoreboard players operation $health_percent rph.var += @s rph.temp.health_percent

scoreboard players operation $health_calc rph.var *= $health_percent rph.var
scoreboard players operation $health_calc rph.var /= $100 rph.var

scoreboard players operation @s rph.health_max = $health_calc rph.var