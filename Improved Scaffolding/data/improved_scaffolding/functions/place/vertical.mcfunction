scoreboard players set $scaff_broken ims.var 0

#positive z -45 44
execute store result score $broke_scaffold ims.var if score $player_rot ims.var matches -45..44 if block ~ ~ ~1 scaffolding run setblock ~ ~ ~1 air replace
scoreboard players operation $scaff_broken ims.var += $broke_scaffold ims.var
scoreboard players set $broke_scaffold ims.var 0

#neg x 45 134
execute store result score $broke_scaffold ims.var if score $player_rot ims.var matches 45..134 if block ~-1 ~ ~ scaffolding run setblock ~-1 ~ ~ air replace
scoreboard players operation $scaff_broken ims.var += $broke_scaffold ims.var
scoreboard players set $broke_scaffold ims.var 0

#neg z 135 179 and -180 -136
execute store result score $broke_scaffold ims.var if score $player_rot ims.var matches 135..179 if block ~ ~ ~-1 scaffolding run setblock ~ ~ ~-1 air replace
scoreboard players operation $scaff_broken ims.var += $broke_scaffold ims.var
scoreboard players set $broke_scaffold ims.var 0

execute store result score $broke_scaffold ims.var if score $player_rot ims.var matches -180..-136 if block ~ ~ ~-1 scaffolding run setblock ~ ~ ~-1 air replace
scoreboard players operation $scaff_broken ims.var += $broke_scaffold ims.var
scoreboard players set $broke_scaffold ims.var 0

#pos x -135 -46
execute store result score $broke_scaffold ims.var if score $player_rot ims.var matches -145..-46 if block ~1 ~ ~ scaffolding run setblock ~1 ~ ~ air replace
scoreboard players operation $scaff_broken ims.var += $broke_scaffold ims.var
scoreboard players set $broke_scaffold ims.var 0

execute if score $scaff_broken ims.var matches 1.. run function improved_scaffolding:place/place_scaffold_vertical