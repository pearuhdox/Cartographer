execute if score @s ca.draw_bow_time matches 30 run scoreboard players set @s ca.ov_tier 1
execute if score @s ca.draw_bow_time matches 40 run scoreboard players set @s ca.ov_tier 2
execute if score @s ca.draw_bow_time matches 50 run scoreboard players set @s ca.ov_tier 3
execute if score @s ca.draw_bow_time matches 60 run scoreboard players set @s ca.ov_tier 4


execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.855
execute if score @s ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.9
execute if score @s ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1


execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.855
execute if score @s ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.9
execute if score @s ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1


execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.855
execute if score @s ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.9
execute if score @s ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 1
