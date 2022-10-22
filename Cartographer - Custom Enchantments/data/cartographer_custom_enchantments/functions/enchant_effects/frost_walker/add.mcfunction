tag @s add ca.added_frost_walker

data modify storage cartographer_custom_enchantments:frost_walker Item set value {}
data modify storage cartographer_custom_enchantments:frost_walker Item set from entity @s Inventory[{Slot:100b}]

data remove storage cartographer_custom_enchantments:frost_walker Item.Slot

execute if data storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0].ExtraFrostWalker run data remove storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0]
execute if data storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0].ExtraFrostWalker run data remove storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0]


execute unless data storage cartographer_custom_enchantments:frost_walker Item.id run data modify storage cartographer_custom_enchantments:frost_walker Item set value {id:"minecraft:chainmail_boots",Count:1b,tag:{EtherealChainsFrostWalker:1b,display:{Name:'{"text":"Ethereal Chains","color":"aqua","italic":false}',Lore:['{"text":"Temporarily equipped when you have","color":"gray","italic":false}','{"text":"Frost Walker but no boots. They","color":"gray","italic":false}','{"text":"will vanish when you stop moving.","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1206028933,928139706,-1714311845,-1928714023],Slot:"feet"}]}}

execute if data storage cartographer_custom_enchantments:frost_walker Item.id run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments prepend value {id:"frost_walker",lvl:1s,ExtraFrostWalker:1b}

execute store result storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0].lvl short 1 run scoreboard players add @s ca.frost_walker 0

#Add Binding and HideFlags to counteract taking item off
execute if data storage cartographer_custom_enchantments:frost_walker Item.id run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments prepend value {id:"binding_curse",lvl:1s,ExtraFrostWalker:1b}

execute store result score $hide_flags ca.frost_walker run data get storage cartographer_custom_enchantments:frost_walker Item.tag.HideFlags

execute unless score $hide_flags ca.frost_walker matches 2.. run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.HideFlags set value 1
execute unless score $hide_flags ca.frost_walker matches 2.. run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.FrostWalkerModified set value 1b
execute if score $hide_flags ca.frost_walker matches 2.. run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.FrostWalkerModified set value 2b

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:frost_walker Item
execute in minecraft:overworld run loot replace entity @s armor.feet 1 mine 4206900 0 4206900 air{drop_contents:1b}

stopsound @a[distance=..8] * item.armor.equip_chain