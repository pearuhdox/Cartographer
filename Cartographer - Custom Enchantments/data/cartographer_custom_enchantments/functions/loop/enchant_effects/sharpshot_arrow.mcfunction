execute as @s store result score @s helper_arrow_dmg run data get entity @s damage 100

execute as @s[scores={sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s helper_arrow_dmg 5
execute as @s[scores={sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s helper_arrow_dmg 10
execute as @s[scores={sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s helper_arrow_dmg 15

execute as @s[scores={sharpshot=1..},nbt={inGround:1b}] run scoreboard players set @s sharpshot 0