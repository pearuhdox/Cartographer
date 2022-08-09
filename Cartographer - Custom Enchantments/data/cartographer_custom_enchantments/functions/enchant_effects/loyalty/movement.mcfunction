tp @s ^ ^ ^0.25

scoreboard players remove @s ca.raycast 1

execute if entity @a[distance=..1,scores={ca.loyalty_wait=1..}] run playsound minecraft:item.trident.riptide_3 player @a[distance=..1,scores={ca.loyalty_wait=1..}] ~ ~ ~ 0.5 1.5
execute if entity @a[distance=..1,scores={ca.loyalty_wait=1..}] run tag @s add despawn
execute as @a[distance=..1,scores={ca.loyalty_wait=1..}] at @s run scoreboard players add @s ca.loyalty_count 1


execute if entity @a[distance=..1,scores={ca.loyalty_wait=1..}] run scoreboard players remove @a[distance=..1,scores={ca.loyalty_throws=1..}] ca.loyalty_throws 1
execute if entity @a[distance=..1,scores={ca.loyalty_wait=1..}] run scoreboard players set @a[distance=..1,scores={ca.loyalty_throws=0}] ca.loyalty_wait 0

execute if entity @s[tag=despawn] run kill @s

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^0.25 run function cartographer_custom_enchantments:enchant_effects/loyalty/movement