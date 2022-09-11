scoreboard players operation $loyalty_amt ca.loyalty = @s ca.loyalty
execute if score $loyalty_amt ca.loyalty matches 100.. run scoreboard players remove $loyalty_amt ca.loyalty 100

data modify storage cartographer_custom_enchantments:loyalty SetupCurrentLvl set value {id:"minecraft:loyalty",lvl:1s}
execute store result storage cartographer_custom_enchantments:loyalty SetupCurrentLvl.lvl short 1 run scoreboard players add $loyalty_amt ca.loyalty 0

data modify entity @s Trident.tag.Enchantments append from storage cartographer_custom_enchantments:loyalty SetupCurrentLvl
data modify entity @s Trident.id set value "minecraft:structure_void"
data modify entity @s Trident.tag.TridentRemnantDelete set value 1b