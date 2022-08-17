execute store result score $get_count ca.soul_count run data get block ~ ~ ~ Items
scoreboard players operation @s ca.soul_count = $get_count ca.soul_count

data modify block ~ ~ ~ Lock set value "Soul Locked Chest Ultimate Keycode"

tag @s add approached