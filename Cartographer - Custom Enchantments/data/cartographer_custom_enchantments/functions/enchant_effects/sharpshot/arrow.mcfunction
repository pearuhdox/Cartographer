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

execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 9
execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 12
execute if score @s ca.ov_tier matches 3 as @s[scores={ca.sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15

execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=1}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=2}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15
execute if score @s ca.ov_tier matches 4 as @s[scores={ca.sharpshot=3}] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 23

#Added for Custom Attributes Self Code Compat
execute if score @s ca.sharpshot matches 1 if score @s catt.proj_dmg matches 1.. run scoreboard players add @s catt.proj_dmg 15
execute if score @s ca.sharpshot matches 2 if score @s catt.proj_dmg matches 1.. run scoreboard players add @s catt.proj_dmg 30
execute if score @s ca.sharpshot matches 3.. if score @s catt.proj_dmg matches 1.. run scoreboard players add @s catt.proj_dmg 45
execute if score @s[tag=catt.checked_sharpshot] catt.proj_dmg matches 1.. run data modify entity @s damage set value 0.0d
execute if score @s ca.sharpshot matches 3.. if score @s catt.proj_dmg matches 1.. run tag @s add catt.checked_sharpshot

execute as @s[scores={ca.sharpshot=1..},nbt={inGround:1b}] run scoreboard players set @s ca.sharpshot 0

execute as @s[scores={ca.lifetime=2..}] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal