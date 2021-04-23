execute as @p[distance=..30] at @s run function cartographer_core:data_get/do

data modify entity @s ArmorItems[3].tag.HeldToken set from storage cartographer_core:pl_data working_data.Tokens.HeavyTokens[0]
data remove storage cartographer_core:pl_data working_data.Tokens.HeavyTokens[0]

execute if data entity @s ArmorItems[3].tag.HeldToken.Owner run tag @s add tokened

execute as @p[distance=..30] at @s run function cartographer_core:data_put/do
