tag @s add ca.rally_marked

playsound minecraft:block.note_block.chime hostile @a ~ ~ ~ 1.5 1.51
playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 0.25 1.51
playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ 0.5 0.8
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 0.75 0.5

scoreboard players set @s ca.rally_mark_dur 66
scoreboard players operation @s ca.rally_mark_amt = $rally_proc ca.rally