
scoreboard players add $1_tick bbl.clock 1
scoreboard players add $5_ticks bbl.clock 1
scoreboard players add $1_second bbl.clock 1
scoreboard players add $2_seconds bbl.clock 1
scoreboard players add $5_seconds bbl.clock 1
scoreboard players add $10_seconds bbl.clock 1

execute if score $1_tick bbl.clock matches 1.. run function bb:lib/clocks/1_tick
execute if score $5_ticks bbl.clock matches 5.. run function bb:lib/clocks/5_ticks
execute if score $1_second bbl.clock matches 20.. run function bb:lib/clocks/1_second
execute if score $2_seconds bbl.clock matches 40.. run function bb:lib/clocks/2_seconds
execute if score $5_seconds bbl.clock matches 100.. run function bb:lib/clocks/5_seconds
execute if score $10_seconds bbl.clock matches 200.. run function bb:lib/clocks/10_seconds
