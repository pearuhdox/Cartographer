execute if entity @s[scores={ca.knockback=1}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run data modify entity @s Motion[1] set value 0.8
execute if entity @s[scores={ca.knockback=2}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run data modify entity @s Motion[1] set value 1.0
execute if entity @s[scores={ca.knockback=3}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run data modify entity @s Motion[1] set value 1.2
execute if entity @s[scores={ca.knockback=4}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run data modify entity @s Motion[1] set value 1.4
execute if entity @s[scores={ca.knockback=5..}] as @e[type=#bb:hostile,distance=..1,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run data modify entity @s Motion[1] set value 1.5

execute on passengers run kill @s