setblock ~ ~1 ~ air replace

setblock ~ ~ ~ barrier replace
execute if score $gl_budget_models ca.gamerule matches 1.. run setblock ~ ~ ~ chiseled_deepslate replace

execute align xyz positioned ~0.5 ~0.5 ~0.5 unless score $gl_budget_models ca.gamerule matches 1.. run summon minecraft:block_display ~ ~ ~ {Invulnerable:1b,Tags:["ca.multichoice_piece"],block_state:{Name:"minecraft:gray_concrete"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 0.200f, 0.000f,-0.500f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.multichoice_piece"],block_state:{Name:"minecraft:lodestone"},interpolation_duration:0,start_interpolation:0,transformation:[0.900f, 0.000f, 0.000f,-0.450f,0.000f, 0.900f, 0.000f,-0.450f,0.000f, 0.000f, 0.900f,-0.450f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.multichoice_piece","ca.multichoice_carpet_lower"],block_state:{Name:"minecraft:red_carpet"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 3.000f, 0.000f,0.270f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.multichoice_piece","ca.multichoice_top","ca.multichoice_carpet_upper"],block_state:{Name:"minecraft:yellow_carpet"},interpolation_duration:0,start_interpolation:0,transformation:[0.495f, 0.000f, 0.495f,-0.500f,0.000f, 1.000f, 0.000f,0.410f,-0.495f, 0.000f, 0.495f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:text_display",Tags:["ca.multichoice_piece"],text:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"yellow","italic":false},{"text":"] top to view.","color":"white","italic":false},{"text":"\\n! Only one can be taken !","color":"red","italic":false}]',background: 1086816127,billboard:"vertical",interpolation_duration:0,start_interpolation:0,transformation:[0.600f, 0.000f, 0.000f,0.000f,0.000f, 0.600f, 0.000f,0.650f,0.000f, 0.000f, 0.600f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:villager",CustomName:'{"text":"Multichoice Pedestal","italic":false}',NoAI:1b,Silent:1b,Tags:["ca.multichoice_villager","ca.multichoice_piece"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],VillagerData:{level:99,profession:"minecraft:none",type:"minecraft:plains"},Offers:{Recipes:[{buy:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Item Potentials","color":"red","italic":false}',Lore:['{"text":"These are the items on the sides of","color":"gray","italic":false}','{"text":"the pedestal. Only one can be taken.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:mending",lvl:1s}]}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Item Potentials","color":"red","italic":false}',Lore:['{"text":"These are the items on the sides of","color":"gray","italic":false}','{"text":"the pedestal. Only one can be taken.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:mending",lvl:1s}]}}}]}}]}]}]}]}]}

execute align xyz positioned ~0.5 ~0.5 ~0.5 if score $gl_budget_models ca.gamerule matches 1.. run summon minecraft:block_display ~ ~ ~ {Tags:["ca.multichoice_piece","ca.multichoice_carpet_lower","ca.multichoice_top","ca.multichoice_carpet_upper"],block_state:{Name:"minecraft:red_carpet"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.550f,0.000f, 3.300f, 0.000f,0.300f,0.000f, 0.000f, 1.100f,-0.550f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:text_display",Tags:["ca.multichoice_piece"],text:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"yellow","italic":false},{"text":"] top to view.","color":"white","italic":false},{"text":"\\n! Only one can be taken !","color":"red","italic":false}]',background: 1086816127,billboard:"vertical",interpolation_duration:0,start_interpolation:0,transformation:[0.600f, 0.000f, 0.000f,0.000f,0.000f, 0.600f, 0.000f,0.650f,0.000f, 0.000f, 0.600f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:villager",CustomName:'{"text":"Multichoice Pedestal","italic":false}',NoAI:1b,Silent:1b,Tags:["ca.multichoice_villager","ca.multichoice_piece"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],VillagerData:{level:99,profession:"minecraft:none",type:"minecraft:plains"},Offers:{Recipes:[{buy:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Item Potentials","color":"red","italic":false}',Lore:['{"text":"These are the items on the sides of","color":"gray","italic":false}','{"text":"the pedestal. Only one can be taken.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:mending",lvl:1s}]}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Item Potentials","color":"red","italic":false}',Lore:['{"text":"These are the items on the sides of","color":"gray","italic":false}','{"text":"the pedestal. Only one can be taken.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:mending",lvl:1s}]}}}]}}]}]}

execute as @e[type=villager,tag=ca.multichoice_villager,sort=nearest,limit=1] at @s run function cartographer_loot_additions:multichoice/trader

kill @s