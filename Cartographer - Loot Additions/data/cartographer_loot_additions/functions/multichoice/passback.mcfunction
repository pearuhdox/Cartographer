data modify storage cartographer_loot_additions:multichoice_trade Trades append value {maxUses:1,buy:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Potential","color":"yellow","bold":false,"italic":false}',Lore:['{"text":"One of the potential","color":"gray","italic":false}','{"text":"items from the pedestal.","color":"gray","italic":false}']},Enchantments:[{}]}},sell:{id:"minecraft:dirt",Count:1b}}
data modify storage cartographer_loot_additions:multichoice_trade Trades[-1].sell set from entity @s item

particle minecraft:sneeze ~ ~ ~ 0.1 0.1 0.1 0.02 8 normal

scoreboard players add $trade_count ca.loot_var 1