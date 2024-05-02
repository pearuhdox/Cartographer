item replace entity @s weapon.offhand with heart_of_the_sea{IsTrident:1,display:{Name:'{"text":"Protean Stone","color":"#8CFFE0","italic":false}',Lore:['[{"text":"A symbol of a weapon\'s ","color":"gray","italic":false},{"text":"Loyalty","color":"aqua","italic":false},{"text":".","color":"gray","italic":false}]','{"text":"This item will over time reform into","color":"gray","italic":false}','{"text":"the Trident that it replaced. Ranged","color":"gray","italic":false}','{"text":"attacks and kills speed up the process.","color":"gray","italic":false}']},HideFlags:33,DurationRemaining:3,StoredTrident:{},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
item modify entity @s weapon.offhand cartographer_custom_enchantments:package_loyalty

data modify storage cartographer_custom_enchantments:loyalty ItemForTime set value {}
data modify storage cartographer_custom_enchantments:loyalty ItemForTime set from entity @s Inventory[{Slot:-106b}]

data remove storage cartographer_custom_enchantments:loyalty ItemForTime.Slot

execute store result storage cartographer_custom_enchantments:loyalty ItemForTime.tag.DurationRemaining int 1 run scoreboard players add $recall_time ca.loyalty 2

execute in minecraft:overworld run item replace block 4206900 1 4206900 container.0 with air 1
execute in minecraft:overworld run data modify block 4206900 1 4206900 Items append from storage cartographer_custom_enchantments:loyalty ItemForTime
execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}