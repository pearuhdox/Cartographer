
tag @s add dies.init

execute unless score @s dies.option.player.action_feedback matches -999999..999999 run scoreboard players set @s dies.option.player.action_feedback 1
execute unless score @s dies.option.player.sounds.gui matches -999999..999999 run scoreboard players set @s dies.option.player.sounds.gui 1
execute unless score @s dies.option.player.sounds.world matches -999999..999999 run scoreboard players set @s dies.option.player.sounds.world 1
