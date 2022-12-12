execute if score @s ca.boons matches 1.. run data modify storage cartographer_charon:bundle bundle.tag.Items set value []

summon allay ~ ~1.2 ~ {Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,Team:"CharonCageVisual",PersistenceRequired:1b,NoAI:1b,Health:20f,Tags:["charon.multiplayer_shade","new"],CustomName:'{"text":"Reviving...","color":"aqua","italic":false}',Attributes:[{Name:generic.max_health,Base:20}]}

execute as @e[type=allay,distance=..1.5,sort=nearest,tag=charon.multiplayer_shade,tag=new] at @s run function cartographer_charon:multiplayer/fill