execute unless entity @e[type=trident,scores={current=1}] run tag @s remove current_drag

effect give @s slowness 1 6 true

execute at @s run particle minecraft:rain ~ ~ ~ 0.3 0.3 0.3 1 15
execute at @s run playsound minecraft:entity.fishing_bobber.splash player @a[distance=..10] ~ ~ ~ 0.1 1.25