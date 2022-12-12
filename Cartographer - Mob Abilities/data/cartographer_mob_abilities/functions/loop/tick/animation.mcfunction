scoreboard players operation $mod_2 ability_charge = @s ability_charge
scoreboard players operation $mod_3 ability_charge = @s ability_charge
scoreboard players operation $mod_4 ability_charge = @s ability_charge
scoreboard players operation $mod_5 ability_charge = @s ability_charge
scoreboard players operation $mod_6 ability_charge = @s ability_charge

scoreboard players operation $mod_2 ability_charge %= $2 ca.CONSTANT
scoreboard players operation $mod_3 ability_charge %= $3 ca.CONSTANT
scoreboard players operation $mod_4 ability_charge %= $4 ca.CONSTANT
scoreboard players operation $mod_5 ability_charge %= $5 ca.CONSTANT
scoreboard players operation $mod_6 ability_charge %= $6 ca.CONSTANT
scoreboard players operation $mod_7 ability_charge %= $7 ca.CONSTANT

execute if score $mod_6 ability_charge matches 1 if entity @s[tag=ca.animation+] run scoreboard players add @s ability_charge 1
execute if score $mod_5 ability_charge matches 1 if entity @s[tag=ca.animation++] run scoreboard players add @s ability_charge 1
execute if score $mod_4 ability_charge matches 1 if entity @s[tag=ca.animation+++] run scoreboard players add @s ability_charge 1
execute if score $mod_3 ability_charge matches 1 if entity @s[tag=ca.animation++++] run scoreboard players add @s ability_charge 1
execute if entity @s[tag=ca.animation+++++] run scoreboard players add @s ability_charge 1

execute if score $mod_5 ability_charge matches 1 if entity @s[tag=ca.animation-] run scoreboard players add @s ability_pause 2
execute if score $mod_4 ability_charge matches 1 if entity @s[tag=ca.animation--] run scoreboard players add @s ability_pause 2
execute if score $mod_3 ability_charge matches 1 if entity @s[tag=ca.animation---] run scoreboard players add @s ability_pause 2
execute if score $mod_2 ability_charge matches 1 if entity @s[tag=ca.animation----] run scoreboard players add @s ability_pause 2
execute if entity @s[tag=ca.animation-----] run scoreboard players add @s ability_pause 2