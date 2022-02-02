execute store result score $return helper_tokens run data get entity @s ArmorItems[3].tag.HeldToken.Owner
execute store result score $type_fresh helper_tokens run data get entity @s ArmorItems[3].tag.HeldToken.Type

execute as @a at @s run function cartographer_mob_abilities:helper/token/return_iterate

execute as @p[tag=player_to_return] at @s run function suso.player_data:get/do

execute if score $type_fresh helper_tokens matches 0 run data modify storage suso:pldata working_data.Tokens.LightTokens append from entity @s ArmorItems[3].tag.HeldToken
execute if score $type_fresh helper_tokens matches 1 run data modify storage suso:pldata working_data.Tokens.HeavyTokens append from entity @s ArmorItems[3].tag.HeldToken

data modify entity @s ArmorItems[3].tag.HeldToken set value {}

execute as @p[tag=player_to_return] at @s run function suso.player_data:put/do

tag @p[tag=player_to_return] remove player_to_return

scoreboard players set $type_fresh helper_tokens -1

scoreboard players remove $tokened_total ca.var 1