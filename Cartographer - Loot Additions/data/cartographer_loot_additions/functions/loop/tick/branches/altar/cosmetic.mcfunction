tp @s ~ ~ ~ facing entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] feet
execute unless block ~ ~ ~ emerald_block if block ~ ~1 ~ #cartographer_core:can_raycast run function cartographer_loot_additions:altar/despawn