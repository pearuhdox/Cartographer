scoreboard players add $heal_count susile_count 1

scoreboard players operation $heal_save heal_queue = @s heal_queue

execute if score $heal_count susile_count matches 1 as 00000c1d-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 2 as 00000c1e-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 3 as 00000c1f-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 4 as 00000c20-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 5 as 00000c21-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 6 as 00000c22-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 7 as 00000c23-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []
execute if score $heal_count susile_count matches 8 as 00000c24-0001-4c78-0002-787a00000000 run data modify entity @s Effects set value []

execute if score $heal_count susile_count matches 1 as 00000c1d-0001-4c78-0002-787a00000000 run function cartographer_core:helper/heal_player/by_score_branch

execute if score $heal_count susile_count matches 1 as 00000c1d-0001-4c78-0002-787a00000000 run tp @s @p


scoreboard players set @s heal_queue 0