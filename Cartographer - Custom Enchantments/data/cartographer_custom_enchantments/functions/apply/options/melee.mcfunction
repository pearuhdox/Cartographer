function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select a Melee Enchantment:","color":"aqua","bold":true}

tellraw @s {"text":"[Decay]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you hit a mob, this weapon inflicts 5 seconds of Wither X, where X is the level. (Max Level: IV)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/decay/prompt"}}

tellraw @s {"text":"[Duelist]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"This weapon deals 2/5/7/10/12 (based on level) bonus damage to the following mobs: [Vindicator, Pillager, Evoker, Ravager, Vex, Witch] (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/duelist/prompt"}}

tellraw @s {"text":"[Frostbite]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you hit a mob, this weapon inflicts 5 seconds of Slowness X, where X is the level. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/frostbite/prompt"}}

tellraw @s {"text":"[Hunter]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"This weapon deals 2/5/7/10/12 (based on level) bonus damage to the following mobs: [Creeper, Blaze, Enderman, Guardian, Elder Guardian] (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/hunter/prompt"}}

tellraw @s {"text":"[Thunderclap]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you hit a mob, this weapon has a 10% chance per level to stun the target for 1 second. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/thunderclap/prompt"}}

tellraw @s {"text":"[Transfiguration]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When you hit a hostile mob, this weapon has a 3% chance per level to turn that mob into a chicken. You can set what mobs are not transfigurable with a tag. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/transfiguration/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0