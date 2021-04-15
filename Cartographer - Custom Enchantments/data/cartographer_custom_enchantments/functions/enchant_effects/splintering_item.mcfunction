#This could be optimized further but being entirely honest since this enchantment is such a meme and not nearly as core as Eruption, I cannot be bothered to.
#Ping me when you see 20 Splintering themed maps.

execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:birch_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:acacia_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crimson_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:warped_door",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:birch_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:acacia_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crimson_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:warped_trapdoor",Count:1b}}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_effect

playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..12] ~ ~ ~ 1 1.2