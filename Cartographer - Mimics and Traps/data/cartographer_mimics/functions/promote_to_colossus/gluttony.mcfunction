execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.5 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["cartographer_colossus","waiting_gluttony"]}
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.iron_golem.repair master @p ~ ~ ~ 1 0.5
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal

execute if block ~ ~-0.2 ~ spawner run tellraw @p {"text":"The spawner above is now a Colossus! (Gluttony)","color":"aqua","italic":false}
execute unless block ~ ~-0.2 ~ spawner run tellraw @p {"text":"Command failed: Not on top of a spawner.","color":"red","italic":false}