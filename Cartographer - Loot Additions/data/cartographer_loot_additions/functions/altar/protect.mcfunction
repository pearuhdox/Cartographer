scoreboard players set $altar_protect altar_lock 0

execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_loot_additions:altar/protect_branch

execute if score $altar_protect altar_lock matches 1.. run data modify entity @s Fixed set value 1b
execute if score $altar_protect altar_lock matches 1.. run setblock ~ ~ ~ minecraft:player_head[rotation=2]{SkullOwner:{Id:[I;-1452562066,-122927650,-2060174959,-1983448047],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODM0ZTFhYWZiNmRlYjIwN2E2NjRkMzE1ZTFkN2Y5MmRjZTlhOGNjMWJlZGI1MmZjNDYxZmEwNGZmY2IyOWIwMSJ9fX0="}]}}} replace
execute if score $altar_protect altar_lock matches 1.. run particle minecraft:sculk_charge_pop ~ ~0.2 ~ 0.25 0.25 0.25 0.02 1 normal
execute if score $altar_protect altar_lock matches 1.. run playsound minecraft:block.amethyst_block.chime block @a[distance=..16] ~ ~ ~ 1 0.5

execute unless entity @s[tag=disabled] if score $altar_protect altar_lock matches 0 if entity @a[distance=..5,gamemode=!creative,gamemode=!spectator] run function cartographer_loot_additions:altar/disable_altar