execute if block ~ ~-0.2 ~ trapped_chest positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:0.9f,height:0.9f,Tags:["ca.cartographer_mimic"]}
execute if block ~ ~-0.2 ~ trapped_chest positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.zombie_villager.converted master @p ~ ~ ~ 1 1
execute if block ~ ~-0.2 ~ trapped_chest positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal

execute if block ~ ~-0.2 ~ trapped_chest run tellraw @s {"text":"The trapped chest you were standing on is now a mimic!","color":"aqua","italic":false}
execute unless block ~ ~-0.2 ~ trapped_chest run tellraw @s {"text":"Command failed: Not standing on top of a trapped chest.","color":"red","italic":false}