summon minecraft:evoker_fangs ~ ~ ~ {Warmup:1000000}

data modify entity @e[type=evoker_fangs,limit=1,sort=nearest,distance=..1] Warmup set from entity @s WaitTime

kill @s