setblock ~ ~ ~ minecraft:lime_stained_glass

setblock ~1 ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=top,shape=straight]
setblock ~2 ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=top,shape=straight]
setblock ~-1 ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=top,shape=straight]
setblock ~-2 ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=top,shape=straight]

summon glow_item_frame ~ ~ ~-1 {UUID:[I;823664661,407986577,-2127488736,1476395008],Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:anvil",Count:1b}}

execute unless score $no_tesseract ca.gamerule matches 1.. run setblock ~-1 ~1 ~ minecraft:player_head[rotation=1]{SkullOwner:{Id:[I;1060820969,-545372944,-2005637340,1711548444],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzI2OTc5Mjk0NjU5NTBjY2QzYTQ5MjNhNWU2ZWIxNWI0ZmUyYmEyYjI4NzE1ZjRhNzk5Njc4NWQ3MDYxNTgifX19"}]}}} replace