setblock ~ ~ ~ air destroy


execute if score @s ca.sapper matches 1.. run function cartographer_custom_enchantments:enchant_effects/collapse/effects/sapper
execute if score @s ca.eruption matches 1.. run function cartographer_custom_enchantments:enchant_effects/collapse/effects/eruption

playsound minecraft:entity.shulker.death block @a[distance=..12] ~ ~ ~ 0.25 0.5
playsound minecraft:entity.guardian.death block @a[distance=..12] ~ ~ ~ 2 2
playsound minecraft:entity.player.burp block @a[distance=..12] ~ ~ ~ 2 0.8
playsound minecraft:entity.shulker.open player @a[distance=..12] ~ ~ ~ 1.5 0.5

kill @s