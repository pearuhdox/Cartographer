execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s {"text":"Death has allowed you to see beyond the veil, and you","color":"#F4BAFF","italic":true}
execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s {"text":"return to life with scraps of notes about the world beyond.","color":"#F4BAFF","italic":true}
execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s [{"text":"You have unlocked the ","color":"#EB87FF","italic":false},{"text":"❰ ","color":"light_purple"},{"text":"Death Note","color":"#6135F2","bold":true,"italic":false},{"text":" ❱","color":"light_purple"},{"text":" tab. ","color":"#EB87FF","italic":false}]
execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s {"text":"Open Advancements to see Lexica tabs (and view the Death Note).","color":"#EB87FF","italic":false}

execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2
execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.warden.agitated player @s ~ ~ ~ 1 0.7
execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5

function cartographer_charon:description_advancements