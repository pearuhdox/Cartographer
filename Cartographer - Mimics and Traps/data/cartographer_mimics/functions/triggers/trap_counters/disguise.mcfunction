execute on vehicle run data modify entity @s block_state.Name set from entity @p SelectedItem.id

execute on vehicle run tag @s add ca.disguise_armed

tellraw @p [{"text":"Spawner disguised!","color":"green","italic":false}]
playsound minecraft:block.note_block.pling block @p ~ ~ ~ 1 2

kill @s