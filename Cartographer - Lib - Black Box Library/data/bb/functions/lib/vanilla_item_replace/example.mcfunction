
#Vanilla item's Id.
###MUST include the "minecraft:" part.
data modify storage bbl:vanilla_replace sudo_root.item_id set value "minecraft:crafting_table"

#Custom Item.
data modify storage bbl:vanilla_replace sudo_root.custom_item set value {id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"A Custom Item","italic":false}'}}}

#System call
function bb:lib/vanilla_item_replace/main
