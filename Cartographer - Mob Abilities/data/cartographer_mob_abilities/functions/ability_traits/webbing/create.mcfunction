summon falling_block ~ ~ ~ {Tags:["ca.webbing_falling"],BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.25,0.0]}
summon falling_block ~ ~ ~ {Tags:["ca.webbing_falling"],BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.1,0.25,0.0]}
summon falling_block ~ ~ ~ {Tags:["ca.webbing_falling"],BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[-0.1,0.25,0.0]}
summon falling_block ~ ~ ~ {Tags:["ca.webbing_falling"],BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.25,0.1]}
summon falling_block ~ ~ ~ {Tags:["ca.webbing_falling"],BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.25,-0.1]}

summon area_effect_cloud ~ ~ ~ {Tags:["ca.webbing_cloud"],Particle:"dust 0.878 0.878 0.878 1",ReapplicationDelay:1,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:400,DurationOnUse:0,Age:0,WaitTime:0,Motion:[0.0,0.3,0.0],Potion:"minecraft:awkward"}

tp @p[distance=..1.5] ~ ~ ~
effect give @p[distance=..1.5] slowness 1 5 true

particle minecraft:flash ~ ~0.75 ~ 0 0 0 1 1 force
particle minecraft:firework ~ ~0.75 ~ 0.35 0.35 0.35 0.1 20 normal

playsound minecraft:entity.leash_knot.break hostile @a[distance=..10] ~ ~ ~ 2 0
playsound minecraft:block.honey_block.step player @a[distance=..10] ~ ~ ~ 2 0.75
playsound minecraft:entity.firework_rocket.large_blast hostile @a[distance=..10] ~ ~ ~ 1.5 1.35