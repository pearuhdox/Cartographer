#Get the damage to deal to the armor piece:
scoreboard players operation $damage ca.feet_dur = @s ca.feet_dur
scoreboard players add $damage ca.feet_dur 1

#Boots have approx ~16% more durability, so 16% to do an additional damage.
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 6
function bb:lib/rng

execute if score $value bbl.rng matches 6 run scoreboard players add $damage ca.feet_dur 1

#Additional Damage is drained if damage taken is higher than armor value.
execute if score $overhit ca.total_hit matches 1.. run scoreboard players add $damage ca.feet_dur 1

#Unbreaking's chance to negate all damage done to armor.
scoreboard players operation $cap ca.feet_unb = @s ca.feet_unb
scoreboard players operation $cap ca.feet_unb += $3 ca.CONSTANT

scoreboard players set $rng_min bbl.rng 1
scoreboard players operation $rng_max bbl.rng = $cap ca.feet_unb

function bb:lib/rng

execute if score $value bbl.rng <= @s ca.feet_unb run scoreboard players operation $damage ca.feet_dur = @s ca.feet_dur

execute store result storage cartographer_custom_durability:armor Items[{Slot:0b}].tag.Damage int 1 run scoreboard players add $damage ca.feet_dur 0

execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:leather_boots"}] run tag @s add ca.ar.leather
execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:golden_boots"}] run tag @s add ca.ar.golden
execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:chainmail_boots"}] run tag @s add ca.ar.chain
execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:iron_boots"}] run tag @s add ca.ar.iron
execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:diamond_boots"}] run tag @s add ca.ar.diamond
execute if data storage cartographer_custom_durability:armor Items[{Slot:0b,id:"minecraft:netherite_boots"}] run tag @s add ca.ar.netherite

execute if entity @s[tag=ca.ar.leather] unless score $damage ca.feet_dur matches 65.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]
execute if entity @s[tag=ca.ar.golden] unless score $damage ca.feet_dur matches 91.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]
execute if entity @s[tag=ca.ar.chain] unless score $damage ca.feet_dur matches 195.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]
execute if entity @s[tag=ca.ar.iron] unless score $damage ca.feet_dur matches 195.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]
execute if entity @s[tag=ca.ar.diamond] unless score $damage ca.feet_dur matches 429.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]
execute if entity @s[tag=ca.ar.netherite] unless score $damage ca.feet_dur matches 481.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]

execute if entity @s[tag=ca.ar.leather] if score $damage ca.feet_dur matches 65.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.golden] if score $damage ca.feet_dur matches 91.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.chain] if score $damage ca.feet_dur matches 195.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.iron] if score $damage ca.feet_dur matches 195.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.diamond] if score $damage ca.feet_dur matches 429.. run tag @s add ca.ar.broken
execute if entity @s[tag=ca.ar.netherite] if score $damage ca.feet_dur matches 481.. run tag @s add ca.ar.broken

tag @s add ca.armor_dur_modify
tag @s remove ca.ar.leather
tag @s remove ca.ar.golden
tag @s remove ca.ar.chain
tag @s remove ca.ar.iron
tag @s remove ca.ar.diamond
tag @s remove ca.ar.netherite
