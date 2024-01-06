scoreboard players remove @s ca.wave_count 1

setblock ~ ~ ~ spawner replace

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 2

scoreboard players set @s ca.wave_time 2

execute unless score @s ca.wave_count matches 0 run kill @e[type=experience_orb,distance=..1.5]

execute if score @s ca.wave_count matches 1 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 1 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 2 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 2 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 3 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 3 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 4 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 4 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 5 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 5 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 6 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 6 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 7 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 7 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 8 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 8 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 9 on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 9 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'
execute if score @s ca.wave_count matches 10.. on passengers if entity @s[type=text_display] run data modify entity @s text set value '[{"text":"🔥","color":"#FF6314","italic":false},{"text":" 10 ","color":"#FF6314","bold":true,"italic":false},{"text":"🔥","color":"#FF6314","italic":false}]'

execute rotated 0 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 90 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 180 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 270 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 7.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 97.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 187.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 277.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 15 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 105 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 195 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 285 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 22.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 112.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 202.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 292.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 30 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 120 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 210 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 300 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 37.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 127.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 217.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 307.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 45 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 135 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 225 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 315 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 52.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 142.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 232.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 322.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 60 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 150 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 240 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 330 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 67.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 157.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 247.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 337.5 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 75 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 165 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 255 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force
execute rotated 345 0 run particle flame ~ ~0.25 ~ ^ ^ ^1000000 0.0000001 0 force

execute rotated 82.5 0 run particle flame ~ ~0.25 ~ 0.25 0.1 0.25 0 12 normal
execute rotated 172.5 0 run particle flame ~ ~0.25 ~ 0.25 0.1 0.25 0 12 normal
execute rotated 262.5 0 run particle flame ~ ~0.25 ~ 0.25 0.1 0.25 0 12 normal
execute rotated 352.5 0 run particle flame ~ ~0.25 ~ 0.25 0.1 0.25 0 12 normal