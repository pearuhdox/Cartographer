#Rally - Player ()
execute as @s[scores={ca.rally=1..}] at @s unless score @s ca.rally_cooldown matches 1.. run scoreboard players operation $rally_proc ca.rally = @s ca.rally
execute as @s[scores={ca.rally=1..}] at @s unless score @s ca.rally_cooldown matches 1.. run scoreboard players set @s ca.rally_cooldown 90

#Thorns ()
execute if entity @s[scores={ca.thorns=1..}] run function cartographer_custom_enchantments:enchant_effects/thorns

#Concealed ()
execute if entity @s[scores={ca.conceal_time=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume