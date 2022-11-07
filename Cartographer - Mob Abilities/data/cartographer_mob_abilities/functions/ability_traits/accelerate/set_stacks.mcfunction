execute unless score @s ca.accelerate_stacks matches 0.. run scoreboard players set @s ca.accelerate_stacks 0

execute if entity @s[tag=ca.accelerate+] if score @s ca.accelerate_stacks matches ..0 run scoreboard players set @s ca.accelerate_stacks 1
execute if entity @s[tag=ca.accelerate++] if score @s ca.accelerate_stacks matches ..0 run scoreboard players set @s ca.accelerate_stacks 1
execute if entity @s[tag=ca.accelerate+++] if score @s ca.accelerate_stacks matches ..0 run scoreboard players set @s ca.accelerate_stacks 1

execute if entity @s[tag=ca.accelerate+] run scoreboard players add @s ca.accelerate_stacks 1
execute if entity @s[tag=ca.accelerate++] run scoreboard players add @s ca.accelerate_stacks 2
execute if entity @s[tag=ca.accelerate+++] run scoreboard players add @s ca.accelerate_stacks 3