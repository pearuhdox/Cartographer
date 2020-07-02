function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select a Ranged Enchantment:","color":"aqua","bold":true}

tellraw @s {"text":"[Point Blank]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Arrows gain a +120% damage per level boost which quickly drains as the arrow travels. The arrow loses the entire bonus after 10 blocks of travel at full charge. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/point_blank/prompt"}}

tellraw @s {"text":"[Sharpshot]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Arrows gain 5% damage per level per tick they travel. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sharpshot/prompt"}}

tellraw @s {"text":"[Auto Charge] (Crossbow Only)","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When empty and in your hotbar or offhand, this crossbow will automatically load itself (for free) when you kill a mob. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/auto_charge/prompt"}}

tellraw @s {"text":"[Current] (Throwable Trident Only)","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When thrown, this trident will drag the hit mob to its location, until retrieved. Without Loyalty, it will keep a mob trapped. With Loyalty, it will drag that mob back to you. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/current/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0