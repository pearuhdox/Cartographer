#Two Handed
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{IsCompressed:1}}]}] run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/save
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{IsCompressed:1}}]}] run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/save_comp

execute as @s[scores={ca.curse_two_hnd=1}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/disable_offhand
execute as @s[scores={ca.curse_two_hnd=0},tag=is_two_handing] if entity @s[nbt={Inventory:[{Slot:-106b}]}] at @s run scoreboard players set @s ca.two_hand_del 21

tag @s add processed_two_handed