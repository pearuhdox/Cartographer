#Runs Every Second:
#Add 1.25% Max HP to Heal Bank per second

scoreboard players operation $regen_count ca.enchant_var = @s ca.regen
scoreboard players remove $regen_count ca.enchant_var 1

execute store result score $hp ca.enchant_var run attribute @s minecraft:generic.max_health get
scoreboard players operation $hp ca.enchant_var *= $1000 ca.CONSTANT

scoreboard players operation $hp ca.enchant_var *= $125 ca.CONSTANT

scoreboard players operation $hp ca.enchant_var /= $10000 ca.CONSTANT

scoreboard players add @s ca.heal_bank_hp 1
scoreboard players operation @s ca.heal_bank_hp += $hp ca.enchant_var

#Additional Levels only provide 1/3 the benefit
scoreboard players operation $hp ca.enchant_var /= $3 ca.CONSTANT
execute if score $regen_count ca.enchant_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/regeneration/recurse
