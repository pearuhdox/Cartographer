execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["ca.trap_spawner"]}
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.pillager.ambient master @p ~ ~ ~ 1 0.75
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 40 normal

execute if block ~ ~-0.2 ~ spawner run tellraw @p {"text":"The spawner above is now a Trap Spawner. It needs other tags supplied to have behavior.","color":"aqua","italic":false}
execute unless block ~ ~-0.2 ~ spawner run tellraw @p {"text":"Command failed: Not on top of a spawner.","color":"red","italic":false}