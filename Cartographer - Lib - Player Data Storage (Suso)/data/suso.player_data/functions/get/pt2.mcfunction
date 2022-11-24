execute if score $writeback suso.pldata.var matches 1 run function suso.player_data:put/writeback
scoreboard players set $writeback suso.pldata.var 0
function suso.player_data:get/search/s
scoreboard players operation $prev_id suso.pldata.var = @s suso.pldata.id