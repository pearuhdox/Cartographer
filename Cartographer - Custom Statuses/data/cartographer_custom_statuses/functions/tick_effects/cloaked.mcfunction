execute if score @s ca.effect_cloak matches 2.. run effect give @s invisibility 1 1 true


execute unless entity @a[distance=..3.1] run function cartographer_custom_statuses:tick_effects/cloaked_not_near

execute if entity @a[distance=..3.1] run effect clear @s invisibility