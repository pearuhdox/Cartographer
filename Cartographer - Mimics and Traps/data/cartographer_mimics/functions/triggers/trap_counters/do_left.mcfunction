execute on vehicle run scoreboard players add @s ca.wave_count 1

execute if score $count_shift ca.mimic_var matches 1.. on vehicle run scoreboard players add @s ca.wave_count 4

execute on vehicle run tellraw @p [{"text":"This Trap Spawner now has ","color":"aqua","italic":false},{"score":{"name":"@s","objective":"ca.wave_count"},"color":"yellow","bold":true},{"text":" activations.","color":"aqua"}]

execute unless score $count_shift ca.mimic_var matches 1.. run playsound minecraft:block.note_block.pling player @p ~ ~ ~ 1 1.5
execute if score $count_shift ca.mimic_var matches 1.. run playsound minecraft:block.note_block.pling player @p ~ ~ ~ 1 2