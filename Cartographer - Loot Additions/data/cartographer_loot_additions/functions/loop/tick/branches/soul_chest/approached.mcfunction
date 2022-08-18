execute store result score $get_count ca.soul_count run data get block ~ ~ ~ Items
scoreboard players operation @s ca.soul_count = $get_count ca.soul_count

data modify block ~ ~ ~ Lock set value "Soul Locked Chest Ultimate Keycode"

data modify entity @s ArmorItems set value [{id:"minecraft:chest",Count:1b},{},{},{}]
data modify entity @s ArmorItems[0].tag.Items set from block ~ ~ ~ Items

tag @s add approached



#ArmorItems:[{id:"minecraft:chest",Count:1b},{},{},{}]