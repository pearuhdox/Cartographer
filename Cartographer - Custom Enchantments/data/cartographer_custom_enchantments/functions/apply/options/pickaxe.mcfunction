function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item","color":"yellow","bold":true}
tellraw @s {"text":"Select a Pickaxe Enchantment:","color":"aqua","bold":true}

tellraw @s {"text":"[Eruption]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you break a spawner with this tool, deal 2 damage per level to enemies within 10 blocks. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/eruption/prompt"}}

tellraw @s {"text":"[Sapper]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you break a spawner with this tool, heal 1 health per level. (Max Level: IV)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/sapper/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0