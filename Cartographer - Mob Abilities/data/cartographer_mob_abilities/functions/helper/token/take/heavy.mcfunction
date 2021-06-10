execute as @p[distance=..30] at @s run function suso.player_data:get/do

data modify entity @s ArmorItems[3].tag.HeldToken set from storage suso:pldata working_data.Tokens.HeavyTokens[0]
data remove storage suso:pldata working_data.Tokens.HeavyTokens[0]

execute if data entity @s ArmorItems[3].tag.HeldToken.Owner run tag @s add tokened

execute as @p[distance=..30] at @s run function suso.player_data:put/do
