data modify storage suso:pldata UUID_cmp set from entity @s UUID
execute store success score $temp suso.pldata.var run data modify storage suso:pldata UUID_cmp set from storage suso:pldata temp[0].UUID
execute if score $temp suso.pldata.var matches 0 store result score @s suso.pldata.id run data get storage suso:pldata temp[0].id
data remove storage suso:pldata temp[0]
execute if score $temp suso.pldata.var matches 1 if data storage suso:pldata temp[0] run function suso.player_data:ids/recover_id2
execute if score $temp suso.pldata.var matches 1 unless data storage suso:pldata temp[0] run scoreboard players set @s suso.pldata.id 1
