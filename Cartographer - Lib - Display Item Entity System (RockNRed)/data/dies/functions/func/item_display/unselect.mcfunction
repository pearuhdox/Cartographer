
tag @s remove dies.toggle
tag @s remove dies.selected_display
playsound minecraft:block.note_block.didgeridoo player @a[distance=..16,scores={dies.option.player.sounds.world=1}] ~ ~ ~ 0.5 1.4

execute as @p[advancements={dies:interact/right=true}] run function bb:lib/chat_spam
