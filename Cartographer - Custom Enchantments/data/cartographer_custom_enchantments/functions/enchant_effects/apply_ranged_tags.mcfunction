#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if entity @s[scores={rend=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add rend_arrow
execute if entity @s[scores={rend=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={conductive=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add conductive_arrow
execute if entity @s[scores={conductive=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={frost=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add frost_arrow
execute if entity @s[scores={frost=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={pin_down=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add pin_arrow
execute if entity @s[scores={pin_down=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={putrefy=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add decay_arrow
execute if entity @s[scores={putrefy=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={flash=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add flash_arrow
execute if entity @s[scores={flash=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={volatile=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add volatile_arrow
execute if entity @s[scores={volatile=1..}] run execute as @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] at @s run execute store result score @s ca.vol_dmg run data get entity @s damage 10
execute if entity @s[scores={volatile=1..}] run execute as @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] at @s run data merge entity @s {damage:0.0d}
execute if entity @s[scores={volatile=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow
execute if entity @s[scores={volatile=1..,rend=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_rend
execute if entity @s[scores={volatile=1..,conductive=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_con
execute if entity @s[scores={volatile=1..,pin_down=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_pin
execute if entity @s[scores={volatile=1..,frost=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_frost
execute if entity @s[scores={volatile=1..,putrefy=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_decay
execute if entity @s[scores={volatile=1..,flash=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_stun
execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_flame
execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_flame

execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_1
execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_2
execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_3
execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_4
execute if entity @s[scores={volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_5

execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_1
execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_2
execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_3
execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_4
execute if entity @s[scores={volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_p_5


execute if entity @s[scores={tempo_theft=1}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add tempo_arrow_1
execute if entity @s[scores={tempo_theft=2}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add tempo_arrow_2
execute if entity @s[scores={tempo_theft=3}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add tempo_arrow_3
execute if entity @s[scores={tempo_theft=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow