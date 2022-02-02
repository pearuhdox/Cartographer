execute store result score $return helper_tokens run data get entity @s ArmorItems[3].tag.HeldToken.Owner

execute as @a at @s run function cartographer_mob_abilities:helper/token/return_iterate

execute as @p[tag=player_to_return] at @s run function suso.player_data:get/do

data modify storage suso:pldata working_data.Tokens.CooldownTokens append from entity @s ArmorItems[3].tag.HeldToken
data modify entity @s ArmorItems[3].tag.HeldToken set value {}

execute as @p[tag=player_to_return] at @s run function suso.player_data:put/do

tag @p[tag=player_to_return] remove player_to_return

scoreboard players remove $tokened_total ca.var 1