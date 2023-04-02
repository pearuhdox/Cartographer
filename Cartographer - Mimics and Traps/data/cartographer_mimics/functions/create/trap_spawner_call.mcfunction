execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner"],block_state:{Name:"minecraft:glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.495f, 0.000f, 0.495f,-0.500f,0.000f, 0.050f, 0.000f,0.000f,-0.495f, 0.000f, 0.495f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.pillager.ambient master @p ~ ~ ~ 1 0.75
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 40 normal

execute if block ~ ~-0.2 ~ spawner run tellraw @p {"text":"The spawner above is now a Trap Spawner.","color":"aqua","italic":false}
execute unless block ~ ~-0.2 ~ spawner run tellraw @p {"text":"Command failed: Not on top of a spawner.","color":"red","italic":false}