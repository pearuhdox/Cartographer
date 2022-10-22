tag @s add ca.added_swift_sneak

data modify storage cartographer_custom_enchantments:swift_sneak Item set value {}
data modify storage cartographer_custom_enchantments:swift_sneak Item set from entity @s Inventory[{Slot:101b}]

data remove storage cartographer_custom_enchantments:swift_sneak Item.Slot

execute if data storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0].ExtraSwiftSneak run data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0]
execute if data storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0].ExtraSwiftSneak run data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0]


execute unless data storage cartographer_custom_enchantments:swift_sneak Item.id run data modify storage cartographer_custom_enchantments:swift_sneak Item set value {id:"minecraft:chainmail_leggings",Count:1b,tag:{EtherealChainsSwiftSneak:1b,display:{Name:'{"text":"Ethereal Chains","color":"aqua","italic":false}',Lore:['{"text":"Temporarily equipped when you have","color":"gray","italic":false}','{"text":"Swift Sneak but no leggings. They","color":"gray","italic":false}','{"text":"will vanish when you stop sneaking.","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1206028933,928139706,-1714311845,-1928714023],Slot:"legs"}]}}

execute if data storage cartographer_custom_enchantments:swift_sneak Item.id run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments prepend value {id:"swift_sneak",lvl:1s,ExtraSwiftSneak:1b}

execute store result storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0].lvl short 1 run scoreboard players add @s ca.swift_sneak 0

#Add Binding and HideFlags to counteract taking item off
execute if data storage cartographer_custom_enchantments:swift_sneak Item.id run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments prepend value {id:"binding_curse",lvl:1s,ExtraSwiftSneak:1b}

execute store result score $hide_flags ca.swift_sneak run data get storage cartographer_custom_enchantments:swift_sneak Item.tag.HideFlags

execute unless score $hide_flags ca.swift_sneak matches 2.. run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.HideFlags set value 1
execute unless score $hide_flags ca.swift_sneak matches 2.. run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.SwiftSneakModified set value 1b
execute if score $hide_flags ca.swift_sneak matches 2.. run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.SwiftSneakModified set value 2b

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:swift_sneak Item
execute in minecraft:overworld run loot replace entity @s armor.legs 1 mine 4206900 0 4206900 air{drop_contents:1b}

stopsound @a[distance=..8] * item.armor.equip_chain