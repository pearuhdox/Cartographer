execute positioned ~ -63 ~ run function cartographer_charon:summon/collector

fill ~-1 ~-62 ~-1 ~1 ~-62 ~1 air replace
fill ~-1 ~-64 ~-1 ~1 ~-64 ~1 glass replace

execute positioned ~ -63 ~ as @e[type=wither_skeleton,tag=ca.collector,tag=!reaper_checked,sort=nearest,limit=1] at @s run function cartographer_charon:collector/fill