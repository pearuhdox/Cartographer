#Get the damage to deal to the armor piece:
scoreboard players operation $damage ca.body_dur = @s ca.body_dur
scoreboard players add $damage ca.body_dur 1

#Chestplates have approx ~45% more durability, so 40% to do an additional damage.
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 5
function bb:lib/rng

execute if score $value bbl.rng matches 1..2 run scoreboard players add $damage ca.body_dur 1

#Additional Damage is drained if damage taken is higher than armor value.
execute if score $overhit ca.total_hit matches 1.. run scoreboard players add $damage ca.body_dur 1

#Unbreaking's chance to negate all damage done to armor.
scoreboard players operation $cap ca.body_unb = @s ca.body_unb
scoreboard players operation $cap ca.body_unb += $3 ca.CONSTANT

scoreboard players set $rng_min bbl.rng 1
scoreboard players operation $rng_max bbl.rng = $cap ca.body_unb

function bb:lib/rng

execute if score $value bbl.rng <= @s ca.body_unb run scoreboard players operation $damage ca.body_dur = @s ca.body_dur

execute store result storage cartographer_custom_durability:armor Items[{Slot:2b}].tag.Damage int 1 run scoreboard players add $damage ca.body_dur 0

execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:leather_chestplate"}] run tag @s add ca.ar.leather
execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:golden_chestplate"}] run tag @s add ca.ar.golden
execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:chainmail_chestplate"}] run tag @s add ca.ar.chain
execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:iron_chestplate"}] run tag @s add ca.ar.iron
execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:diamond_chestplate"}] run tag @s add ca.ar.diamond
execute if data storage cartographer_custom_durability:armor Items[{Slot:2b,id:"minecraft:netherite_chestplate"}] run tag @s add ca.ar.netherite

execute if entity @s[tag=ca.ar.leather] unless score $damage ca.body_dur matches 80.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute if entity @s[tag=ca.ar.golden] unless score $damage ca.body_dur matches 112.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute if entity @s[tag=ca.ar.chain] unless score $damage ca.body_dur matches 240.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute if entity @s[tag=ca.ar.iron] unless score $damage ca.body_dur matches 240.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute if entity @s[tag=ca.ar.diamond] unless score $damage ca.body_dur matches 528.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute if entity @s[tag=ca.ar.netherite] unless score $damage ca.body_dur matches 592.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]

execute if entity @s[tag=ca.ar.leather] if score $damage ca.body_dur matches 80.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.golden] if score $damage ca.body_dur matches 112.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.chain] if score $damage ca.body_dur matches 240.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.iron] if score $damage ca.body_dur matches 240.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.diamond] if score $damage ca.body_dur matches 528.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.netherite] if score $damage ca.body_dur matches 592.. run tag @s add ca.ar.broken

tag @s add ca.armor_dur_modify
tag @s remove ca.ar.leather
tag @s remove ca.ar.golden
tag @s remove ca.ar.chain
tag @s remove ca.ar.iron
tag @s remove ca.ar.diamond
tag @s remove ca.ar.netherite
