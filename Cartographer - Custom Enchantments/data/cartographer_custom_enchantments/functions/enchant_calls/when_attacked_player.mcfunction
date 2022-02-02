#Evasion ()
execute as @s[scores={ca.evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/trigger
execute as @s[scores={ca.evasion=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/prime

#Rally ()
execute as @s[scores={ca.rally=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/rally

#Thorns ()
execute if entity @s[scores={ca.thorns=1..}] run function cartographer_custom_enchantments:enchant_effects/thorns

#Concealed ()
execute if entity @s[scores={ca.conceal_time=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume