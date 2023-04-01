
playsound minecraft:entity.item_frame.add_item player @a[distance=..16,scores={dies.option.player.sounds.world=1}]
execute on vehicle run tag @s add dies.target
execute summon minecraft:item_display as @s at @s run function dies:func/new_item/summoned_display
tag @e[type=minecraft:item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] remove dies.target
function dies:func/new_item/interact/left
