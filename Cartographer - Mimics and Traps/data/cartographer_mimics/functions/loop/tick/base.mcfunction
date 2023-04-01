#Tell Cartographer this pack is in use
scoreboard players set $mimics ca.installed 1

execute if score $mimic_alive setup matches 0 run bossbar set cartographer:mimic players
execute if score $colossus_alive setup matches 0 run bossbar set cartographer:colossus players

scoreboard players set $mimic_alive setup 0
scoreboard players set $colossus_alive setup 0

scoreboard players add $heal_time ca.mimic_var 1
execute if score $heal_time ca.mimic_var matches 121.. run scoreboard players set $heal_time ca.mimic_var 1