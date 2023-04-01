
#Add tag
tag @s add bbl.initialized

execute unless score @s bbl.id matches -99999..99999 run function bb:lib/player_id/add_id
execute unless score @s bbl.actionbar_spam_mute matches -99999..99999 run scoreboard players set @s bbl.actionbar_spam_mute 0
