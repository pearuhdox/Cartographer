
tag @s add dies.init

execute unless score @s dies.option.player.chat_feedback matches -999999..999999 run scoreboard players set @s dies.option.player.chat_feedback 1
