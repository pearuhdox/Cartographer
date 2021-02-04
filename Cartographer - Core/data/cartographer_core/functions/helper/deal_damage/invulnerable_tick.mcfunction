#Check for invulnerability, if so, block the absorption grant.
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:4b}]}] run tag @s add invulnerable_check2

#Grant 6 absorption to the mob.
execute as @s unless entity @s[tag=invulnerable_check2] store result score @s ca.invul_abs run data get entity @s AbsorptionAmount 100
execute as @s unless entity @s[tag=invulnerable_check2] store result entity @s AbsorptionAmount float 0.01 run scoreboard players add @s ca.invul_abs 600

#Deal 6 damage to the mob.
execute if entity @s[type=!#cartographer_core:undead] run effect give @s instant_damage 1 0 true
execute if entity @s[type=#cartographer_core:undead] run effect give @s instant_health 1 0 true


tag @s remove invulnerable_check2