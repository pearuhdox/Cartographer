execute if score @s ca.draw_bow_time matches 30 run scoreboard players set @s ca.ov_tier 2
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 45 run scoreboard players set @s ca.ov_tier 3
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 60 run scoreboard players set @s ca.ov_tier 4

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 45 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.9
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1.1

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.75
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 45 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 0.9
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1.1

execute if score @s ca.draw_bow_time matches 30 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.75
execute if score @s[scores={ca.overcharge=2..}] ca.draw_bow_time matches 45 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.9
execute if score @s[scores={ca.overcharge=3..}] ca.draw_bow_time matches 60 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1.1