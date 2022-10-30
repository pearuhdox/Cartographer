scoreboard players set @s mob_move_dis 21

summon evoker_fangs ^ ^ ^1.5 {Warmup:0,Tags:["evocative_fang_close"]}
summon evoker_fangs ^ ^ ^-1.5 {Warmup:0,Tags:["evocative_fang_close"]}

summon evoker_fangs ^1.3 ^ ^0.75 {Warmup:0,Tags:["evocative_fang_close"]}
summon evoker_fangs ^1.3 ^ ^-0.75 {Warmup:0,Tags:["evocative_fang_close"]}

summon evoker_fangs ^-1.3 ^ ^0.75 {Warmup:0,Tags:["evocative_fang_close"]}
summon evoker_fangs ^-1.3 ^ ^-0.75 {Warmup:0,Tags:["evocative_fang_close"]}

scoreboard players add $warmup ca.evocate_time 1
execute as @e[type=evoker_fangs,tag=evocative_fang_close,sort=nearest,distance=..5] at @s store result entity @s Warmup int 1 run scoreboard players add $warmup ca.evocate_time 0


summon evoker_fangs ^3 ^ ^ {Warmup:5,Tags:["evocative_fang_close_2"]}

summon evoker_fangs ^2.298 ^ ^1.928 {Warmup:5,Tags:["evocative_fang_close_2"]}
summon evoker_fangs ^2.298 ^ ^-1.928 {Warmup:5,Tags:["evocative_fang_close_2"]}

summon evoker_fangs ^0.521 ^ ^2.954 {Warmup:5,Tags:["evocative_fang_close_2"]}
summon evoker_fangs ^0.521 ^ ^-2.954 {Warmup:5,Tags:["evocative_fang_close_2"]}

summon evoker_fangs ^-1.5 ^ ^2.598 {Warmup:5,Tags:["evocative_fang_close_2"]}
summon evoker_fangs ^-1.5 ^ ^-2.598 {Warmup:5,Tags:["evocative_fang_close_2"]}

summon evoker_fangs ^-2.819 ^ ^1.026 {Warmup:5,Tags:["evocative_fang_close_2"]}
summon evoker_fangs ^-2.819 ^ ^-1.026 {Warmup:5,Tags:["evocative_fang_close_2"]}

scoreboard players add $warmup ca.evocate_time 5
execute as @e[type=evoker_fangs,tag=evocative_fang_close_2,sort=nearest,distance=..5] at @s store result entity @s Warmup int 1 run scoreboard players add $warmup ca.evocate_time 0
