tellraw @s {"text":"Your shade was not revived, and dropped its items normally.","color":"red","italic":false}

tellraw @a[distance=1..] [{"selector":"@s","color":"yellow","italic":false},{"text":"'s","color":"yellow","italic":false},{"text":" shade has despawned!","color":"red","italic":false}]
