scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply Punch tags to the arrow.
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_5

execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_1
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_2
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_3
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_4
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add punch_5

execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch"}]}}}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add custom_arrow
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch"}]}}]}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] add custom_arrow