execute store result score $recoil_fall ca.var run data get entity @s Motion[1] 100

execute if score $recoil_fall ca.var matches ..-70 positioned ^ ^ ^-2 run tp 31182015-4512-2011-3118-115180000000 ~ ~2 ~
execute unless score $recoil_fall ca.var matches ..-70 positioned ^ ^ ^-2 run tp 31182015-4512-2011-3118-115180000000 ~ ~ ~

execute if score $recoil_fall ca.var matches ..-200 positioned ^ ^ ^-2 run scoreboard players set $strength delta.api.launch 21500
execute if score $recoil_fall ca.var matches -199..-150 positioned ^ ^ ^-2 run scoreboard players set $strength delta.api.launch 18500
execute if score $recoil_fall ca.var matches -149..-100 positioned ^ ^ ^-2 run scoreboard players set $strength delta.api.launch 13500
execute if score $recoil_fall ca.var matches -99..-70 positioned ^ ^ ^-2 run scoreboard players set $strength delta.api.launch 8500
execute unless score $recoil_fall ca.var matches ..-70 positioned ^ ^ ^-2 run scoreboard players set $strength delta.api.launch 3500

scoreboard players set $recoil_str ca.var 1500
scoreboard players set $recoil_str_2 ca.var 1000

scoreboard players operation $recoil_str_max_1 ca.var = @s ca.recoil
execute if score @s ca.recoil matches 6.. run scoreboard players set $recoil_str_max_1 ca.var 5

scoreboard players set $recoil_str_max_2 ca.var -5
scoreboard players operation $recoil_str_max_2 ca.var += @s ca.recoil
execute if score @s ca.recoil matches ..5 run scoreboard players set $recoil_str_max_2 ca.var 0


scoreboard players operation $recoil_str ca.var *= $recoil_str_max_1 ca.var
scoreboard players operation $recoil_str_2 ca.var *= $recoil_str_max_2 ca.var

scoreboard players operation $strength delta.api.launch += $recoil_str ca.var
scoreboard players operation $strength delta.api.launch += $recoil_str_2 ca.var

execute facing entity 31182015-4512-2011-3118-115180000000 feet run function delta:api/launch_looking
scoreboard players set @s ca.delta.cooldown 3