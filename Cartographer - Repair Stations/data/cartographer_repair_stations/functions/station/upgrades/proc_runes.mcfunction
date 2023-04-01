playsound minecraft:entity.guardian.death block @a[distance=..16] ~ ~ ~ 2 1.5

execute at 31182015-1851-6191-8192-300000000001 run particle minecraft:wax_off ~0.2 ~ ~0.2 0.1 0.1 0.1 1 10 normal

data modify entity 31182015-1851-6191-8192-000000000010 text set value '{"text":"! -= Bonus Repair =- !","color":"yellow","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}'
scoreboard players set $display_warning ca.repair_station_state 80