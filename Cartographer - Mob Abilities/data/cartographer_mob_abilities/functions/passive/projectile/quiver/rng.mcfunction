scoreboard players set $rng_min bbl.rng 1
execute on origin store result score $rng_max bbl.rng run data get entity @s HandItems[1].tag.BlockEntityTag.Items

function bb:lib/rng


data remove storage cartographer_mob_abilities:projectile data.quiver

execute if score $value bbl.rng matches 1 on origin run data modify storage cartographer_mob_abilities:projectile data.quiver set from entity @s HandItems[1].tag.BlockEntityTag.Items[0]
execute if score $value bbl.rng matches 2 on origin run data modify storage cartographer_mob_abilities:projectile data.quiver set from entity @s HandItems[1].tag.BlockEntityTag.Items[1]
execute if score $value bbl.rng matches 3 on origin run data modify storage cartographer_mob_abilities:projectile data.quiver set from entity @s HandItems[1].tag.BlockEntityTag.Items[2]
execute if score $value bbl.rng matches 4 on origin run data modify storage cartographer_mob_abilities:projectile data.quiver set from entity @s HandItems[1].tag.BlockEntityTag.Items[3]
execute if score $value bbl.rng matches 5 on origin run data modify storage cartographer_mob_abilities:projectile data.quiver set from entity @s HandItems[1].tag.BlockEntityTag.Items[4]

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:tipped_arrow"} run function cartographer_mob_abilities:passive/projectile/quiver/swaps/arrow
execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:arrow"} run function cartographer_mob_abilities:passive/projectile/quiver/swaps/arrow
execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:spectral_arrow"} run function cartographer_mob_abilities:passive/projectile/quiver/swaps/arrow

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:splash_potion"} run function cartographer_mob_abilities:passive/projectile/quiver/swaps/potion
execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:lingering_potion"} run function cartographer_mob_abilities:passive/projectile/quiver/swaps/potion

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:fire_charge"} run function cartographer_mob_abilities:projectiles/create/small_fireball
execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:magma_block"} run function cartographer_mob_abilities:projectiles/create/fireball
execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:dragon_breath"} run function cartographer_mob_abilities:projectiles/create/dragon_fireball

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:wither_skeleton_skull"} run function cartographer_mob_abilities:projectiles/create/wither_skull

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:trident"} run function cartographer_mob_abilities:projectiles/create/trident

execute if data storage cartographer_mob_abilities:projectile data.quiver{id:"minecraft:ender_pearl"} run function cartographer_mob_abilities:projectiles/create/enderpearl

#execute if entity @s[tag=ca.sh_arrow] run function cartographer_mob_abilities:projectiles/data/get/arrow
#execute if entity @s[tag=ca.sh_potion] run function cartographer_mob_abilities:projectiles/data/get/potion
