tellraw @s [{"text":"Currently Adding ","color":"yellow","bold":true},{"text":"Aquadynamic ","color":"red","bold":true},{"text":"to Held Item.","bold":true}]
tellraw @s {"text":"Select a Level:","color":"aqua"}
tellraw @s {"text":"[Level I]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Add Aquadynamic to this item.","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/aquadynamic/level_1"}}


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0