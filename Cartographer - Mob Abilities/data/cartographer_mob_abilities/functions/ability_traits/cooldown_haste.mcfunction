execute if entity @s[tag=ca.ability_haste+] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown

execute if entity @s[tag=ca.ability_haste++] run scoreboard players operation @s cooldown -= $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste-] run scoreboard players operation @s cooldown += $fourth_cdl cooldown

execute if entity @s[tag=ca.ability_haste--] run scoreboard players operation @s cooldown += $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste+++] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown
execute if entity @s[tag=ca.ability_haste+++] run scoreboard players operation @s cooldown -= $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste---] run scoreboard players operation @s cooldown += $fourth_cdl cooldown
execute if entity @s[tag=ca.ability_haste---] run scoreboard players operation @s cooldown += $half_cdl cooldown