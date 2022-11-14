playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 1 1.3
playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 1 1.3

scoreboard players add @s ca.carapace_stacks 3
execute if score @s ca.carapace_stacks matches 5.. run scoreboard players set @s ca.carapace_stacks 4