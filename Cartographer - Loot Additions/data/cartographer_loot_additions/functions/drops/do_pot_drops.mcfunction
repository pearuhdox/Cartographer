setblock 4206900 2 4206900 air replace

#Pots
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:archer_pottery_sherd","minecraft:archer_pottery_sherd","minecraft:archer_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/archer
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:skull_pottery_sherd","minecraft:skull_pottery_sherd","minecraft:skull_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/mob
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:brewer_pottery_sherd","minecraft:brewer_pottery_sherd","minecraft:brewer_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/potion
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/materials
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:angler_pottery_sherd","minecraft:angler_pottery_sherd","minecraft:angler_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/angler
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:plenty_pottery_sherd","minecraft:plenty_pottery_sherd","minecraft:plenty_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/blocks
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:blade_pottery_sherd","minecraft:blade_pottery_sherd","minecraft:blade_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/weapons
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:miner_pottery_sherd","minecraft:miner_pottery_sherd","minecraft:miner_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/tools
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:sheaf_pottery_sherd","minecraft:sheaf_pottery_sherd","minecraft:sheaf_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/food


execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:heart_pottery_sherd","minecraft:heart_pottery_sherd","minecraft:heart_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/action/heal
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:heartbreak_pottery_sherd","minecraft:heartbreak_pottery_sherd","minecraft:heartbreak_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/action/harm
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:burn_pottery_sherd","minecraft:burn_pottery_sherd","minecraft:burn_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/action/fire
execute if entity @s[type=item,nbt={Item:{id:"minecraft:decorated_pot",Count:1b,tag:{BlockEntityTag:{sherds:["minecraft:structure_void","minecraft:mourner_pottery_sherd","minecraft:mourner_pottery_sherd","minecraft:mourner_pottery_sherd"]}}}}] run function cartographer_loot_additions:drops/do_drops/pots/action/fang


#Rest of mechs
execute store result score @s ca.x_seed run data get entity @s Pos[0] 1
execute store result score @s ca.y_seed run data get entity @s Pos[1] 1
execute store result score @s ca.z_seed run data get entity @s Pos[2] 1

execute if entity @s[scores={ca.x_seed=0}] run scoreboard players set @s ca.x_seed 69420
execute if entity @s[scores={ca.y_seed=0}] run scoreboard players set @s ca.y_seed 69420
execute if entity @s[scores={ca.z_seed=0}] run scoreboard players set @s ca.z_seed 69420

scoreboard players set @s ca.derived_seed 1
scoreboard players operation @s ca.derived_seed *= @s ca.x_seed
scoreboard players operation @s ca.derived_seed *= @s ca.y_seed
scoreboard players operation @s ca.derived_seed *= @s ca.z_seed

execute as @s store result block 4206900 2 4206900 LootTableSeed int 1 run scoreboard players add @s ca.derived_seed 0

execute as @p in minecraft:overworld run loot spawn ~ ~ ~ mine 4206900 2 4206900 air{drop_contents:1b}

tag @s add loot_checked

#Sounds and particles
stopsound @a[distance=..16] block minecraft:block.stone.break

kill @s[tag=loot_add_custom]