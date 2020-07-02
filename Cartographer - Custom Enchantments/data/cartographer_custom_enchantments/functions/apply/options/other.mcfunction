function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select an 'Other' Enchantment:","color":"aqua","bold":true}

tellraw @s {"text":"[Infinity] (Food/Potion)","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"A special version of Infinity only for use on consumables (food and potions). This will prevent the item from being used when you use it. This will not apply infinity to a bow! (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/infinity/prompt"}}

tellraw @s {"text":"[Unbreakable]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Applies the Unbreakable tag to the item. This will prevent it from taking durability damage. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/unbreakable/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0

