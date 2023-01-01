#Thorns
tag @s remove thorns_mark

#Rally - Enemy ()
execute if score $rally_proc ca.rally matches 1.. run function #minecraft:cartographer/events/enchantments/passive/rally
execute if score $rally_proc ca.rally matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/apply_enemy
scoreboard players set $rally_proc ca.rally 0