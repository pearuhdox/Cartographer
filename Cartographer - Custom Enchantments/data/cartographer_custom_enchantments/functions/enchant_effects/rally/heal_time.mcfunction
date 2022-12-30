#Runs Every tick:
#Add 0.5% Max HP to Heal Bank per tick

#Total of 5% max health per half second

execute store result score $hp ca.enchant_var run attribute @s minecraft:generic.max_health get
scoreboard players operation $hp ca.enchant_var *= $1000 ca.CONSTANT

scoreboard players operation $hp ca.enchant_var *= $25 ca.CONSTANT

scoreboard players operation $hp ca.enchant_var /= $10000 ca.CONSTANT

scoreboard players operation @s ca.heal_bank_hp += $hp ca.enchant_var

scoreboard players remove @s ca.rally_banking 1