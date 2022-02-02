function suso.player_data:get/do

#execute if entity @s[tag=light_restore] run say returning light token
#execute if entity @s[tag=heavy_restore] run say returning heavy token

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["token_data_transfer"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{Token_Template:{LightToken:{Cooldown:0,Owner:0,Type:0},HeavyToken:{Cooldown:0,Owner:0,Type:1}}}}]}

execute if score $global helper_diff matches 1 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken.Cooldown set value 9
execute if score $global helper_diff matches 2 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken.Cooldown set value 5
execute if score $global helper_diff matches 3..4 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken.Cooldown set value 3
execute if score $global helper_diff matches 5 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken.Cooldown set value 1

execute if score $global helper_diff matches 1 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.LightToken.Cooldown set value 5
execute if score $global helper_diff matches 2 run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.LightToken.Cooldown set value 3
execute if score $global helper_diff matches 3.. run data modify entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.LightToken.Cooldown set value 1

execute if entity @s[tag=light_restore] store result entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.LightToken.Owner int 1 run scoreboard players add @s ca.pldata.id 0
execute if entity @s[tag=heavy_restore] store result entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken.Owner int 1 run scoreboard players add @s ca.pldata.id 0

execute if entity @s[tag=light_restore] run data modify storage suso:pldata working_data.Tokens.LightTokens append from entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.LightToken
execute if entity @s[tag=heavy_restore] run data modify storage suso:pldata working_data.Tokens.HeavyTokens append from entity @e[tag=token_data_transfer,limit=1,sort=nearest] ArmorItems[3].tag.Token_Template.HeavyToken

kill @e[tag=token_data_transfer,limit=1,sort=nearest]

function suso.player_data:put/do

tag @s remove light_restore
tag @s remove heavy_restore

scoreboard players remove $tokened_total ca.var 1