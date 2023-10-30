
#Add tag
tag @s add bbl.initialized.repeated

#PID
execute unless score @s bbl.id matches -2147483647..2147483647 run function bb:lib/player_id/add_id

#Scores
execute unless score @s bbl.actionbar_spam_mute matches -2147483647..2147483647 run scoreboard players set @s bbl.actionbar_spam_mute 0
execute unless score @s bbl.move.mute matches -2147483647..2147483647 run scoreboard players set @s bbl.move.mute 0
execute unless score @s bbl.move.mouse_angle.listen matches 0..2147483647 run scoreboard players set @s bbl.move.mouse_angle.listen 0

#Tag function
function #minecraft:bbl/init/repeated
