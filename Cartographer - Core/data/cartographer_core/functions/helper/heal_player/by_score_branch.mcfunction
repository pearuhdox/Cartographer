execute if score $heal_save heal_queue matches 32.. as @s run data modify entity @s Effects append value {Id:6b,Amplifier:4b,Duration:1}
execute if score $heal_save heal_queue matches 32.. run scoreboard players remove $heal_save heal_queue 32

execute if score $heal_save heal_queue matches 16.. as @s run data modify entity @s Effects append value {Id:6b,Amplifier:3b,Duration:1}
execute if score $heal_save heal_queue matches 16.. run scoreboard players remove $heal_save heal_queue 16

execute if score $heal_save heal_queue matches 8.. as @s run data modify entity @s Effects append value {Id:6b,Amplifier:2b,Duration:1}
execute if score $heal_save heal_queue matches 8.. run scoreboard players remove $heal_save heal_queue 8

execute if score $heal_save heal_queue matches 4.. as @s run data modify entity @s Effects append value {Id:6b,Amplifier:1b,Duration:1}
execute if score $heal_save heal_queue matches 4.. run scoreboard players remove $heal_save heal_queue 4

execute if score $heal_save heal_queue matches 2.. as @s run data modify entity @s Effects append value {Id:6b,Amplifier:0b,Duration:1}
execute if score $heal_save heal_queue matches 2.. run scoreboard players remove $heal_save heal_queue 2

execute if score $heal_save heal_queue matches 1.. as @s run data modify entity @s Effects append value {Id:10b,Amplifier:5b,Duration:1}
execute if score $heal_save heal_queue matches 1.. run scoreboard players remove $heal_save heal_queue 1