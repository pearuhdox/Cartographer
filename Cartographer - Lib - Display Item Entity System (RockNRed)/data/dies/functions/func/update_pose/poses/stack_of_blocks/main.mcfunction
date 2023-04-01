scoreboard players set @s dies.object.display.size 2

tp @s ~ ~ ~ 90 0
execute on passengers run tp @s ~ ~ ~ 90 0

summon item_display ~ ~ ~ {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display","dies.target","dies.aux_display","dies.aux_display.1"],transformation:[0.545f,0f,0f,-0.15f,0f,0.545f,0f,0.413f,0f,0f,0.545f,-0.1f,0f,0f,0f,1f],item:{id:"minecraft:dirt",Count:1b}}
summon item_display ~ ~ ~ {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display","dies.target2","dies.aux_display","dies.aux_display.2"],transformation:[0.545f,0f,0f,-0.3f,0f,0.545f,0f,0.14f,0f,0f,0.545f,-0.2f,0f,0f,0f,1f],item:{id:"minecraft:dirt",Count:1b}}

data modify entity @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.aux_display.1] item set from entity @s item
data modify entity @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.aux_display.2] item set from entity @s item

ride @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] mount @s
tag @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] remove dies.target
ride @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target2] mount @s
tag @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target2] remove dies.target2

function dies:func/update_rotation/main
