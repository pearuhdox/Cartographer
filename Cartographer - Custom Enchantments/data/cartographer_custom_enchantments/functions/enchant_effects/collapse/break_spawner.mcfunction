setblock ~ ~ ~ air destroy

data remove storage cartographer_custom_statuses:apply_effects data.effects
data remove storage cartographer_custom_statuses:apply_status data.effects

execute if score @s ca.sapper matches 1.. run function cartographer_custom_enchantments:enchant_effects/collapse/effects/sapper
execute if score @s ca.eruption matches 1.. run function cartographer_custom_enchantments:enchant_effects/collapse/effects/eruption

playsound minecraft:entity.shulker.death block @a[distance=..24] ~ ~ ~ 0.25 0.5
playsound minecraft:entity.guardian.death block @a[distance=..24] ~ ~ ~ 2 2
playsound minecraft:entity.player.burp block @a[distance=..24] ~ ~ ~ 2 0.8
playsound minecraft:entity.shulker.open player @a[distance=..24] ~ ~ ~ 1.5 0.5

kill @s