tp @p[gamemode=survival,nbt={ActiveEffects:[{Id:9b,Amplifier:99b}]}] @s

tp @p[gamemode=survival,nbt={ActiveEffects:[{Id:9b,Amplifier:99b}]}] ~ ~-0.5 ~ facing entity @e[limit=1,tag=is_hooking,sort=nearest] feet

execute if entity @s[scores={cooldown=0}] run kill @s

scoreboard players remove @s cooldown 1