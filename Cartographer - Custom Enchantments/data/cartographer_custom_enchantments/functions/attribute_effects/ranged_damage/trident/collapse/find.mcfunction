scoreboard players remove @s ca.raycast 1

#particle minecraft:block_marker barrier ~ ~ ~ 0 0 0 1 1 force

execute if block ~ ~ ~ spawner align xyz positioned ~0.5 ~0.25 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["ca.collapsing_stand"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-494756349,-526955692,-1655766865,-1946868088],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QyMmFkNGEyMTY1YTlhMDI5ZjI5NTYwMDhlMGVmMjQ2NmYyNDMwNzdhNzgxZTY3MGUzNmFjOWY0OGRjNmU3NiJ9fX0="}]}}}}]}
execute if block ~ ~ ~ spawner run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^-0.2 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/collapse/find