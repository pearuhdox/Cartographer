tellraw @s [{"text":"Currently Adding ","color":"yellow","bold":true},{"text":"Second Wind ","color":"red","bold":true},{"text":"to Held Item.","bold":true}]
tellraw @s {"text":"Select a Level:","color":"aqua"}
tellraw @s {"text":"[Level I]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 1 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/second_wind/level_1"}}
tellraw @s {"text":"[Level II]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 2 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/second_wind/level_2"}}
tellraw @s {"text":"[Level III]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Level 3 to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/second_wind/level_3"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0