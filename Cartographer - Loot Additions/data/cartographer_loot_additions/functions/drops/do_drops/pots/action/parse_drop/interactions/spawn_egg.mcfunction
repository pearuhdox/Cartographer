data modify storage cartographer_loot_additions:pot_trap spawn_egg set value {}
data modify storage cartographer_loot_additions:pot_trap spawn_egg set from entity @s Item

scoreboard players set $summon_id ca.loot_var 0

execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:zombie_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 1
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:husk_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 2
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:drowned_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 3
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:skeleton_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 4
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:stray_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 5
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:wither_skeleton_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 6
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:zombified_piglin_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 7
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:phantom_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 8
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:spider_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 9
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:cave_spider_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 10
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:silverfish_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 11
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:endermite_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 12
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:creeper_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 13
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:enderman_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 14
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:blaze_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 15
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:slime_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 16
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:magma_cube_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 17
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:ghast_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 18
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:vindicator_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 19
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:evoker_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 20
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:pillager_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 21
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:vex_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 22
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:ravager_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 23
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:guardian_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 24
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:elder_guardian_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 25
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:shulker_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 26
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:zombie_villager_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 27
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:bee_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 28
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:piglin_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 29
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:piglin_brute_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 30
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:hoglin_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 31
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:zoglin_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 32
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:illusioner_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 33
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:wolf_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 34
execute if data storage cartographer_loot_additions:pot_trap spawn_egg{id:"minecraft:rabbit_spawn_egg"} run scoreboard players set $summon_id ca.loot_var 35

execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:zombie"} run scoreboard players set $summon_id ca.loot_var 1
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:husk"} run scoreboard players set $summon_id ca.loot_var 2
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:drowned"} run scoreboard players set $summon_id ca.loot_var 3
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:skeleton"} run scoreboard players set $summon_id ca.loot_var 4
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:stray"} run scoreboard players set $summon_id ca.loot_var 5
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:wither_skeleton"} run scoreboard players set $summon_id ca.loot_var 6
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:zombified_piglin"} run scoreboard players set $summon_id ca.loot_var 7
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:phantom"} run scoreboard players set $summon_id ca.loot_var 8
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:spider"} run scoreboard players set $summon_id ca.loot_var 9
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:cave_spider"} run scoreboard players set $summon_id ca.loot_var 10
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:silverfish"} run scoreboard players set $summon_id ca.loot_var 11
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:endermite"} run scoreboard players set $summon_id ca.loot_var 12
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:creeper"} run scoreboard players set $summon_id ca.loot_var 13
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:enderman"} run scoreboard players set $summon_id ca.loot_var 14
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:blaze"} run scoreboard players set $summon_id ca.loot_var 15
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:slime"} run scoreboard players set $summon_id ca.loot_var 16
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:magma_cube"} run scoreboard players set $summon_id ca.loot_var 17
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:ghast"} run scoreboard players set $summon_id ca.loot_var 18
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:vindicator"} run scoreboard players set $summon_id ca.loot_var 19
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:evoker"} run scoreboard players set $summon_id ca.loot_var 20
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:pillager"} run scoreboard players set $summon_id ca.loot_var 21
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:vex"} run scoreboard players set $summon_id ca.loot_var 22
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:ravager"} run scoreboard players set $summon_id ca.loot_var 23
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:guardian"} run scoreboard players set $summon_id ca.loot_var 24
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:elder_guardian"} run scoreboard players set $summon_id ca.loot_var 25
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:shulker"} run scoreboard players set $summon_id ca.loot_var 26
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:zombie_villager"} run scoreboard players set $summon_id ca.loot_var 27
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:bee"} run scoreboard players set $summon_id ca.loot_var 28
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:piglin"} run scoreboard players set $summon_id ca.loot_var 29
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:piglin_brute"} run scoreboard players set $summon_id ca.loot_var 30
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:hoglin"} run scoreboard players set $summon_id ca.loot_var 31
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:zoglin"} run scoreboard players set $summon_id ca.loot_var 32
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:illusioner"} run scoreboard players set $summon_id ca.loot_var 33
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:wolf"} run scoreboard players set $summon_id ca.loot_var 34
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:rabbit"} run scoreboard players set $summon_id ca.loot_var 35
execute if data storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag{id:"minecraft:iron_golem"} run scoreboard players set $summon_id ca.loot_var 36


execute if score $summon_id ca.loot_var matches 1.. run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/spawn_egg_summon
execute if score $summon_id ca.loot_var matches 1.. as @e[type=#bb:hostile,sort=nearest,limit=1,tag=ca.pot_new,distance=..5] at @s run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/spawn_egg_branch


kill @s