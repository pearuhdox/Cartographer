#Get the damage to deal to the armor piece:
scoreboard players operation $damage ca.legs_dur = @s ca.legs_dur
scoreboard players add $damage ca.legs_dur 1

#Pants have approx ~30% more durability, so 33% to do an additional damage.
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 3
function bb:lib/rng

execute if score $value bbl.rng matches 3 run scoreboard players add $damage ca.legs_dur 1

#Additional Damage is drained if damage taken is higher than armor value.
execute if score $overhit ca.total_hit matches 1.. run scoreboard players add $damage ca.legs_dur 1

#Unbreaking's chance to negate all damage done to armor.
scoreboard players operation $cap ca.legs_unb = @s ca.legs_unb
scoreboard players operation $cap ca.legs_unb += $3 ca.CONSTANT

scoreboard players set $rng_min bbl.rng 1
scoreboard players operation $rng_max bbl.rng = $cap ca.legs_unb

function bb:lib/rng

execute if score $value bbl.rng <= @s ca.legs_unb run scoreboard players operation $damage ca.legs_dur = @s ca.legs_dur

execute store result storage cartographer_custom_durability:armor Items[{Slot:1b}].tag.Damage int 1 run scoreboard players add $damage ca.legs_dur 0

execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:leather_leggings"}] run tag @s add ca.ar.leather
execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:golden_leggings"}] run tag @s add ca.ar.golden
execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:chainmail_leggings"}] run tag @s add ca.ar.chain
execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:iron_leggings"}] run tag @s add ca.ar.iron
execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:diamond_leggings"}] run tag @s add ca.ar.diamond
execute if data storage cartographer_custom_durability:armor Items[{Slot:1b,id:"minecraft:netherite_leggings"}] run tag @s add ca.ar.netherite

execute if entity @s[tag=ca.ar.leather] unless score $damage ca.legs_dur matches 75.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute if entity @s[tag=ca.ar.golden] unless score $damage ca.legs_dur matches 105.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute if entity @s[tag=ca.ar.chain] unless score $damage ca.legs_dur matches 225.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute if entity @s[tag=ca.ar.iron] unless score $damage ca.legs_dur matches 225.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute if entity @s[tag=ca.ar.diamond] unless score $damage ca.legs_dur matches 495.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute if entity @s[tag=ca.ar.netherite] unless score $damage ca.legs_dur matches 555.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]

execute if entity @s[tag=ca.ar.leather] if score $damage ca.legs_dur matches 75.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.golden] if score $damage ca.legs_dur matches 105.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.chain] if score $damage ca.legs_dur matches 225.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.iron] if score $damage ca.legs_dur matches 225.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.diamond] if score $damage ca.legs_dur matches 495.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.netherite] if score $damage ca.legs_dur matches 555.. run tag @s add ca.ar.broken

tag @s add ca.armor_dur_modify
tag @s remove ca.ar.leather
tag @s remove ca.ar.golden
tag @s remove ca.ar.chain
tag @s remove ca.ar.iron
tag @s remove ca.ar.diamond
tag @s remove ca.ar.netherite
