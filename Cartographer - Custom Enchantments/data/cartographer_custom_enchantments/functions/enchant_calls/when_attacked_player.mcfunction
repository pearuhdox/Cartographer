#Evasion
execute if score $cu_en_passive ca.enabler matches 1.. as @a[scores={ca.evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/trigger
execute if score $cu_en_passive ca.enabler matches 1.. as @a[scores={ca.evasion=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/prime

#Rally
execute if score $cu_en_passive ca.enabler matches 1.. as @a[scores={ca.rally=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/rally

#Thorns
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.thorns=1..}] run function cartographer_custom_enchantments:enchant_effects/thorns

#Concealed
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.concealed=1..,ca.take_dmg=1..,ca.conceal_time=80..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume