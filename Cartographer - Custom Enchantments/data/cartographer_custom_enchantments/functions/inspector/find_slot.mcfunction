scoreboard players set $gadget ca.ench_var -1000
execute if data storage ca.susu:enchants inv[{id:"minecraft:bundle",tag:{CartographerGlass:1b}}].Slot store result score $gadget ca.ench_var run data get storage ca.susu:enchants inv[{id:"minecraft:bundle",tag:{CartographerGlass:1b}}].Slot

data modify storage cartographer_custom_enchantments:inspector Item set value {}
data modify storage cartographer_custom_enchantments:inspector Item set from storage ca.susu:enchants inv[{id:"minecraft:bundle",tag:{CartographerGlass:1b}}].tag.Items[0]

data modify storage cartographer_custom_enchantments:inspector items set value []
execute if score $gadget ca.ench_var matches -106.. run data modify storage cartographer_custom_enchantments:inspector items set from storage ca.susu:enchants inv[{id:"minecraft:bundle",tag:{CartographerGlass:1b}}].tag.Items

execute if score $gadget ca.ench_var matches -106.. run data modify storage cartographer_custom_enchantments:inspector itr set from storage cartographer_custom_enchantments:inspector items[0]

data modify storage cartographer_custom_enchantments:inspector lore set value []

data modify storage cartographer_custom_enchantments:inspector glass set value {id:"minecraft:bundle",Slot:0b,Count:1b,tag:{display:{Name:'{"text":"Cartographer\'s Glass","color":"#D6C898","bold":true,"italic":false}'},HideFlags:255,CartographerGlass:1b}}

execute if data storage cartographer_custom_enchantments:inspector Item.id run function cartographer_custom_enchantments:inspector/tooltip/start

execute unless data storage cartographer_custom_enchantments:inspector Item.id run function cartographer_custom_enchantments:inspector/reset_tooltip

function cartographer_custom_enchantments:inspector/replace