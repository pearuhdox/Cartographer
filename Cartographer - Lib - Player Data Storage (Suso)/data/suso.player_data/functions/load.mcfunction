scoreboard objectives add suso.pldata.id dummy
scoreboard objectives add suso.pldata.var dummy

execute if score $writeback suso.pldata.var matches 1 run function suso.player_data:put/writeback
data modify storage suso:pldata working_data set value {}
scoreboard players reset $prev_id suso.pldata.var