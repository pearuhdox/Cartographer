
tag @s remove dies.toggle
tag @e[type=item_display,distance=..17] remove dies.selected_display
tag @s add dies.selected_display
playsound minecraft:block.note_block.cow_bell player @a[distance=..16,scores={dies.option.player.sounds.world=1}] ~ ~ ~ 0.5 0.6

execute unless entity @s[tag=cancel_menu] as @p[advancements={dies:interact/right=true}] run function dies:func/menu/individual

schedule function dies:func/item_display/loop/main 1t
