playsound minecraft:entity.player.attack.crit player @a[distance=..12] ~ ~ ~ 1.25 0.5
playsound minecraft:entity.player.attack.knockback player @a[distance=..12] ~ ~ ~ 1.25 0.5

playsound minecraft:block.netherite_block.break player @a[distance=..12] ~ ~ ~ 2 0.5
playsound minecraft:block.netherite_block.break player @a[distance=..12] ~ ~ ~ 2 0.5
playsound minecraft:block.netherite_block.break player @a[distance=..12] ~ ~ ~ 2 0.5

$execute positioned ^ ^1 ^1 positioned ^ ^ ^$(size_half_d) run function cartographer_custom_enchantments:enchant_effects/momentum/circle with storage cartographer:macro.custom_enchantments