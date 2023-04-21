execute if entity @s[tag=!ims.scaffolding,nbt={Item:{id:"minecraft:scaffolding"}}] run tag @s add ims.scaffolding
execute if entity @s[tag=!ims.birch_trapdoor,nbt={Item:{id:"minecraft:birch_trapdoor"}}] run tag @s add ims.birch_trapdoor

execute if entity @s[tag=ims.birch_trapdoor] if block ~ ~1 ~ scaffolding run kill @s

execute if entity @a[scores={ims.magnet=1..}] if entity @s[tag=ims.scaffolding,tag=!ims.magneted] run function improved_scaffolding:magnet/entity