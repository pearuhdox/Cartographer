execute unless block ~ ~ ~1 lime_stained_glass run effect give @a[distance=..8] instant_damage 1 0
execute unless block ~ ~ ~1 lime_stained_glass run particle minecraft:explosion ~ ~ ~1 0.5 0.5 0.5 0 1 force
execute unless block ~ ~ ~1 lime_stained_glass run playsound minecraft:entity.generic.explode block @a[distance=..12] ~ ~ ~ 1 1.5
execute unless block ~ ~ ~1 lime_stained_glass run scoreboard players add @s repair_tampers 1
execute unless block ~ ~ ~1 lime_stained_glass run execute if entity @s[scores={repair_tampers=1}] run tellraw @a[distance=..8] {"text":"Hey. I'm the repair station you just dug up. You realize how painful that is? I'd appreciate if you decided to not do so in the future.","color":"#BEFF99","italic":false}
execute unless block ~ ~ ~1 lime_stained_glass run execute if entity @s[scores={repair_tampers=5}] run tellraw @a[distance=..8] {"text":"Hey, I asked you nicely to stop. This is really painful and awkward and I don't want to have to escalate.","color":"#BEFF99","italic":false}
execute unless block ~ ~ ~1 lime_stained_glass run execute if entity @s[scores={repair_tampers=10}] run tellraw @a[distance=..8] {"text":"Is your intellectually challenged brain inferior of doing something nice? Please just leave me alone.","color":"#BEFF99","italic":false}
execute unless block ~ ~ ~1 lime_stained_glass run execute if entity @s[scores={repair_tampers=20}] run tellraw @a[distance=..8] {"text":"Alright, this is your last warning, if you keep doing this, I'll have to use my special attack.","color":"#BEFF99","italic":false}
execute unless block ~ ~ ~1 lime_stained_glass run execute if entity @s[scores={repair_tampers=30}] run tellraw @a[distance=..8] {"text":"Here it is! My special attack! Have fun losing your repair station! You should have listened to me!","color":"#BEFF99","italic":false}

execute if block ~ ~-1 ~1 hopper run effect give @a[distance=..8] instant_damage 1 0
execute if block ~ ~-1 ~1 hopper run particle minecraft:explosion ~ ~-1 ~1 0.5 0.5 0.5 0 1 force
execute if block ~ ~-1 ~1 hopper run playsound minecraft:entity.generic.explode block @a[distance=..12] ~ ~ ~ 1 1.5
execute if block ~ ~-1 ~1 hopper run scoreboard players add @s repair_tampers 1
execute if block ~ ~-1 ~1 hopper run execute if entity @s[tag=!funneled] run tellraw @a[distance=..8] {"text":"No forbidden funnels! Anything but the forbidden funnel!","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[scores={repair_tampers=1}] run tellraw @a[distance=..8] {"text":"Hey. Those forbidden funnels are really ticklish, could I ask you not to put them beneath my core? Thanks.","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[scores={repair_tampers=5}] run tellraw @a[distance=..8] {"text":"Hey, stop it! *giggles* This isn't what I asked for!","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[scores={repair_tampers=10}] run tellraw @a[distance=..8] {"text":"The repair station begins to laugh uncontrollably. Should you really keep doing this though?","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[scores={repair_tampers=20}] run tellraw @a[distance=..8] {"text":"The repair station lets out endless cackle after endless cackle. Surely nothing could go wrong by continuing this behavior.","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[scores={repair_tampers=30}] run tellraw @a[distance=..8] {"text":"The repair station lets out one final laugh and explodes in exhaustion. This was definitely not the right course of action.","color":"#BEFF99","italic":false}
execute if block ~ ~-1 ~1 hopper run execute if entity @s[tag=!funneled] run tag @s add funneled

execute as @s at @s run execute if block ~ ~ ~ lime_stained_glass run setblock ~ ~ ~ air replace
execute as @s at @s run execute if block ~ ~ ~2 lime_stained_glass run setblock ~ ~ ~2 air replace
execute as @s at @s run execute if block ~1 ~ ~1 lime_stained_glass run setblock ~1 ~ ~1 air replace
execute as @s at @s run execute if block ~-1 ~ ~1 lime_stained_glass run setblock ~-1 ~ ~1 air replace
execute as @s at @s run execute if block ~ ~1 ~1 lime_stained_glass run setblock ~ ~1 ~1 air replace
execute as @s at @s run execute if block ~ ~-1 ~1 lime_stained_glass run setblock ~ ~-1 ~1 air replace

execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~ ~ piston run setblock ~ ~ ~ air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~ ~2 piston run setblock ~ ~ ~2 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~1 ~ ~1 piston run setblock ~1 ~ ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~-1 ~ ~1 piston run setblock ~-1 ~ ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~1 ~1 piston run setblock ~ ~1 ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~-1 ~1 piston run setblock ~ ~-1 ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~ ~ sticky_piston run setblock ~ ~ ~ air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~ ~2 sticky_piston run setblock ~ ~ ~2 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~1 ~ ~1 sticky_piston run setblock ~1 ~ ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~-1 ~ ~1 sticky_piston run setblock ~-1 ~ ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~1 ~1 sticky_piston run setblock ~ ~1 ~1 air destroy
execute as @s at @s run execute unless block ~ ~ ~1 lime_stained_glass run execute if block ~ ~-1 ~1 sticky_piston run setblock ~ ~-1 ~1 air destroy

execute as @s at @s run execute if block ~ ~ ~1 piston_head run setblock ~ ~ ~1 air destroy

execute as @s at @s run execute if block ~ ~-1 ~1 hopper run setblock ~ ~-1 ~1 air destroy
execute as @s at @s run execute positioned ~ ~ ~1 run kill @e[type=minecraft:hopper_minecart,distance=..1.5]

execute as @s at @s run execute unless entity @e[type=item_frame,tag=repair_intput,distance=..3] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:item_frame",Count:1b}}]

execute as @s at @s run execute if block ~ ~ ~1 air run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lime_stained_glass",Count:1b}}]
execute as @s at @s run execute if block ~ ~ ~1 air run setblock ~ ~ ~1 lime_stained_glass replace

execute if entity @s[scores={repair_tampers=30..}] run kill @e[type=item_frame,distance=..2]
execute if entity @s[scores={repair_tampers=30..}] run kill @e[type=armor_stand,distance=..4]
execute if entity @s[scores={repair_tampers=30..}] run kill @e[type=magma_cube,distance=..5]
execute if entity @s[scores={repair_tampers=30..}] run kill @e[type=magma_cube,distance=..5]
execute if entity @s[scores={repair_tampers=30..}] run summon creeper ~ ~1 ~1 {ExplosionRadius:8b,Fuse:1,ignited:1b,CustomName:'{"text":"a certain exasperated repair station"}'}