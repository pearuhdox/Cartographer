execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 100

execute as @s[scores={ca.sharpshot=1},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 5
execute as @s[scores={ca.sharpshot=2},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute as @s[scores={ca.sharpshot=3},tag=!trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 15

execute as @s[scores={ca.sharpshot=1},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 10
execute as @s[scores={ca.sharpshot=2},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 20
execute as @s[scores={ca.sharpshot=3},tag=trueshot_arrow] store result entity @s damage double 0.01 run scoreboard players add @s ca.arrow_dmg 30
