#Tell Cartographer this pack is in use
scoreboard players set $loot_additions ca.installed 1

execute as @a[scores={ca.break_head=1..}] at @s run function cartographer_loot_additions:drops/handler
execute as @a[scores={ca.break_whead=1..}] at @s run function cartographer_loot_additions:drops/handler

scoreboard players set @a ca.break_head 0
scoreboard players set @a ca.break_whead 0
scoreboard players set @a ca.loot_sneak 0