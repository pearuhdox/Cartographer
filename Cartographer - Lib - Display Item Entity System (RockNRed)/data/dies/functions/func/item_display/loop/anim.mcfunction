
summon marker ~ ~ ~ {UUID:[I;-1499768459,594691418,-1438110832,1100029795]}
execute store result entity a69b5975-2372-455a-aa48-2b9041911f63 Rotation[0] float 1 run scoreboard players add $spinny_anim dies.master 15
execute if score $spinny_anim dies.master matches 180.. run scoreboard players set $spinny_anim dies.master -179
execute at a69b5975-2372-455a-aa48-2b9041911f63 positioned ~ ~.25 ~ run particle minecraft:electric_spark ^ ^.2 ^.4 .001 .001 .001 .001 1 normal
kill a69b5975-2372-455a-aa48-2b9041911f63
