particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.05 15 normal
data modify entity @s block_state.Name set value "minecraft:air"
playsound minecraft:entity.zombie.infect block @a[distance=..12] ~ ~ ~ 0.75 1
scoreboard players set @s ca.trap_timer 0