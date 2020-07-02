function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select a 'Curse'.","color":"aqua","bold":true}

tellraw @s {"text":"[Malevolence]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"When wearing or holding in the hotbar/offhand more than 1 item with this curse, the user becomes blind. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/curse_malevolence/prompt"}}

tellraw @s {"text":"[Two-Handed]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"When this item is held, if the user also holds an item in the offhand, they gain Weakness 2 and Slowness 2. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/curse_twohanded/prompt"}}

tellraw @s {"text":"[Irreparability]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"This item cannot be repaired. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/curse_irreparability/prompt"}}

tellraw @s {"text":"[Shattering]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"When this item is dropped on death, it loses all but 1 of its durability. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/curse_shattering/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0