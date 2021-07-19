execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 100

execute as @s[scores={ca.sharpshot=1},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 5
execute as @s[scores={ca.sharpshot=2},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute as @s[scores={ca.sharpshot=3},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15

execute as @s[scores={ca.sharpshot=1},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute as @s[scores={ca.sharpshot=2},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 20
execute as @s[scores={ca.sharpshot=3},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 30

execute if score @s ca.ov_tier matches 2.. as @s store result score @s ca.arrow_dmg run data get entity @s damage 100

execute if score @s ca.ov_tier matches 2 as @s[scores={ca.sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 8
execute if score @s ca.ov_tier matches 2 as @s[scores={ca.sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute if score @s ca.ov_tier matches 2 as @s[scores={ca.sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 13

execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 5
execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15

execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 8
execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15
execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 23

execute as @s[scores={ca.sharpshot=1..},nbt={inGround:1b}] run scoreboard players set @s ca.sharpshot 0

execute as @s[scores={ca.lifetime=2..}] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal