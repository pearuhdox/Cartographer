tellraw @s [{"text":"Currently Adding ","color":"yellow","bold":true},{"text":"Auto Charge ","color":"red","bold":true},{"text":"to Held Item.","bold":true}]
tellraw @s {"text":"Select a Level:","color":"aqua"}
tellraw @s {"text":"[Level I]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Auto Charge to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/auto_charge/level_1"}}


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0