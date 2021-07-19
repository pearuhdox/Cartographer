#Set default of ca.ui_location to 0
execute as @a unless entity @s[scores={ca.ui_location=0..}] run scoreboard players set @s ca.ui_location 0

function cartographer_custom_enchantments:loop/3_second/reset