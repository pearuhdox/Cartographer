execute if score @s ca.draw_bow_time matches 30 run scoreboard players set @s ca.ov_tier 1
execute if score @s ca.draw_bow_time matches 40 run scoreboard players set @s ca.ov_tier 2
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 50 run scoreboard players set @s ca.ov_tier 3
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 60 run scoreboard players set @s ca.ov_tier 4
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 70 run scoreboard players set @s ca.ov_tier 5
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 80 run scoreboard players set @s ca.ov_tier 6

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.855
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.9
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 70 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1.12
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 80 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1.5

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.855
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.9
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 70 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1.12
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 80 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1.5

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.75
execute if score @s ca.draw_bow_time matches 40 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.855
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 50 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.9
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 1
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 70 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 1.12
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 80 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 1.5