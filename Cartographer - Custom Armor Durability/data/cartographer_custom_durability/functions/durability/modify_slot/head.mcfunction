#Get the damage to deal to the armor piece:
scoreboard players operation $damage ca.head_dur = @s ca.head_dur
scoreboard players add $damage ca.head_dur 1

#Additional Damage is drained if damage taken is higher than armor value.
execute if score $overhit ca.total_hit matches 1.. run scoreboard players add $damage ca.head_dur 1

#Unbreaking's chance to negate all damage done to armor.
scoreboard players operation $cap ca.head_unb = @s ca.head_unb
scoreboard players operation $cap ca.head_unb += $3 ca.CONSTANT

scoreboard players set $rng_min bbl.rng 1
scoreboard players operation $rng_max bbl.rng = $cap ca.head_unb

function bb:lib/rng

execute if score $value bbl.rng <= @s ca.head_unb run scoreboard players operation $damage ca.head_dur = @s ca.head_dur

execute store result storage cartographer_custom_durability:armor Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add $damage ca.head_dur 0

execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:leather_helmet"}] run tag @s add ca.ar.leather
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:golden_helmet"}] run tag @s add ca.ar.golden
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:chainmail_helmet"}] run tag @s add ca.ar.chain
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:iron_helmet"}] run tag @s add ca.ar.iron
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:diamond_helmet"}] run tag @s add ca.ar.diamond
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:netherite_helmet"}] run tag @s add ca.ar.netherite
execute if data storage cartographer_custom_durability:armor Items[{Slot:3b,id:"minecraft:turtle_helmet"}] run tag @s add ca.ar.turtle

execute if entity @s[tag=ca.ar.leather] unless score $damage ca.head_dur matches 55.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.golden] unless score $damage ca.head_dur matches 77.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.chain] unless score $damage ca.head_dur matches 165.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.iron] unless score $damage ca.head_dur matches 165.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.diamond] unless score $damage ca.head_dur matches 363.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.netherite] unless score $damage ca.head_dur matches 407.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute if entity @s[tag=ca.ar.turtle] unless score $damage ca.head_dur matches 275.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]

execute if entity @s[tag=ca.ar.leather] if score $damage ca.head_dur matches 55.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.golden] if score $damage ca.head_dur matches 77.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.chain] if score $damage ca.head_dur matches 165.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.iron] if score $damage ca.head_dur matches 165.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.diamond] if score $damage ca.head_dur matches 363.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.netherite] if score $damage ca.head_dur matches 407.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.turtle] if score $damage ca.head_dur matches 275.. run tag @s add ca.ar.broken

tag @s add ca.armor_dur_modify
tag @s remove ca.ar.leather
tag @s remove ca.ar.golden
tag @s remove ca.ar.chain
tag @s remove ca.ar.iron
tag @s remove ca.ar.diamond
tag @s remove ca.ar.netherite
tag @s remove ca.ar.turtle