#scoreboard players set @s dies.object.display.size 4

summon item_display ~ ~ ~ {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display","dies.target","dies.aux_display","dies.aux_display.1"],transformation:[-0.1736481776669303f,-0.984807753012208f,0f,0f,0.984807753012208f,-0.1736481776669303f,0f,0f,0f,0f,1f,-0.089f,0f,0f,0f,1f],item:{id:"minecraft:dirt",Count:1b}}
summon item_display ~ ~ ~ {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display","dies.target2","dies.aux_display","dies.aux_display.2"],transformation:[0.5735764363510462f,0.8191520442889918f,0f,0f,-0.8191520442889918f,0.5735764363510462f,0f,0f,0f,0f,1f,-0.149f,0f,0f,0f,1f],item:{id:"minecraft:dirt",Count:1b}}

scoreboard players operation @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] dies.object.display.size = @s dies.object.display.size
scoreboard players operation @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target2] dies.object.display.size = @s dies.object.display.size

data modify entity @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.aux_display.1] item set from entity @s item
data modify entity @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.aux_display.2] item set from entity @s item

ride @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] mount @s
tag @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] remove dies.target
ride @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target2] mount @s
tag @e[type=item_display,distance=..2,limit=1,sort=nearest,tag=dies.target2] remove dies.target2

tp @s ~ ~ ~ 0 90
execute on passengers run tp @s ~ ~ ~ 0 90

function dies:func/update_rotation/main
