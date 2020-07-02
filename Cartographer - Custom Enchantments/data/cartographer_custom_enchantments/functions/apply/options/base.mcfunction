function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select an Enchantment Category:","color":"aqua","bold":true}

tellraw @s {"text":"[Passive]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply passive effects. Work on all armor, offhands, and held items.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/passive"}}

tellraw @s {"text":"[Melee]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply effects on melee attacks. Work only on melee weapons.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/melee"}}

tellraw @s {"text":"[Ranged]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply effects on ranged attacks and ranged weapons. Work only on ranged weapons, and some only on specific weapons.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/ranged"}}

tellraw @s {"text":"[Pickaxe]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply effects to pickaxes.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/pickaxe"}}

tellraw @s {"text":"[Other]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply other types of effects.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/other"}}

tellraw @s {"text":"[Curse]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Enchantments that apply debuffs or negative effects. (Not yet implemented).","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/options/curse"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0