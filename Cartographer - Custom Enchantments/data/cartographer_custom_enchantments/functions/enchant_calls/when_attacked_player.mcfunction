#Evasion
execute as @a[scores={evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion_trigger
execute as @a[scores={evasion=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/evasion_prime

#Rally
execute as @a[scores={rally=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/rally

#Thorns
execute if entity @s[scores={thorns=1..}] run function cartographer_custom_enchantments:enchant_effects/thorns

#Concealed
execute if entity @s[scores={concealed=1..,helper_damaged=1..,ca.conceal_time=80..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume