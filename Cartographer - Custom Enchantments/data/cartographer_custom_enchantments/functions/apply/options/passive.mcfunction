function cartographer_core:helper/items/load_item

tellraw @s {"text":"Currently Modifying Held Item:","color":"yellow","bold":true}
tellraw @s {"text":"Select a Passive Enchantment:","color":"aqua","bold":true}

tellraw @s {"text":"[Adrenaline]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When the holder/wearer kills a mob, they gain 2 seconds of Speed I per level, up to 12 seconds. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/adrenaline/prompt"}}

tellraw @s {"text":"[Agility]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"The wearer/holder can jump 1 block per level higher, up to +5 blocks higher. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/agility/prompt"}}

tellraw @s {"text":"[Aquadynamic]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, the player has Conduit Power. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/aquadynamic/prompt"}}

tellraw @s {"text":"[Concealed]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, the player has Invisibility. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/concealed/prompt"}}

tellraw @s {"text":"[Cleansing]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, the player can cleanse a negative effect into 30 seconds of Hunger I. They can only cleanse an effect if they do not have hunger. Slowness, Mining Fatigue, Weakness, Poison, and Wither can be cleansed. (Max Level: I)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/cleansing/prompt"}}

tellraw @s {"text":"[Evasion]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, the player has a 5% chance to dodge an instance of damage per level, up to 50% chance. Attacks cannot be dodged in succession. Dodging damage negates all damage that would be dealt from that instance. (Max Level: V)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/evasion/prompt"}}

tellraw @s {"text":"[Frenzy]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When the holder/wearer kills a mob, they gain 2 seconds of Strength I per level, up to 12 seconds. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/frenzy/prompt"}}

tellraw @s {"text":"[Lifesteal]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When the holder/wearer kills a mob, restore 1 health per second for 1 second per level over time, up to 6 seconds. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/lifesteal/prompt"}}

tellraw @s {"text":"[Regeneration]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Heals the holder/wearer 1 health per level every 3 seconds, up to 6 health. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/regeneration/prompt"}}

tellraw @s {"text":"[Satiation]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When the holder/wearer kills a mob, restore 1 saturation per level, up to 6 saturation. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/satiation/prompt"}}

tellraw @s {"text":"[Second Wind]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When the wearer/holder triggers a dodge from Evasion, they also regenerate 1 health per level, max of 4 health. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/second_wind/prompt"}}

tellraw @s {"text":"[Vengeance]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"An alternative to the Thorns enchantment. When held or worn, taking damage deals 4 damage to enemies up to 3 + 1 per level blocks away. (max of 8 blocks). Enemies can only take this damage once. (Max Level: III)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/vengeance/prompt"}}

tellraw @s {"text":"[Wave of Despair]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, damage waves from Vengeance inflict debuffs based on total level: I: Slowness, II: Weakness, III: Slowness II, and IV: Weakness II. Effects from previous levels are also applied. Effects last for 8 seconds. (Max Level: II)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/despair_wave/prompt"}}

tellraw @s {"text":"[Wave of Destruction]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"When held or worn, damage waves from Vengeance deal an additional 1 damage per level, up to 6 bonus damage. (Max Level: II)","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_enchantments:apply/modify/destruction_wave/prompt"}}

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1 0