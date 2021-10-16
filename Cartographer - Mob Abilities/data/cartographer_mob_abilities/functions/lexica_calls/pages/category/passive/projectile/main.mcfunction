scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"Your comprehensive guide to foreign facts.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Mob Abilities.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Passive","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"------[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Armament","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/dragon_fireball=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Dragon Fireball","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Dragon Fireball.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3411"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/fire_charge=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Fire Charge","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Fire Charge.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3421"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/fireball=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Fireball","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Fireball.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3431"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/potion=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Potion","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Potion.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3441"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/shulker_bullet=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shulker Bullet","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Shulker Bullet.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3451"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/projectile/wither_skull=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Wither Skull","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Armament: Wither Skull.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3461"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 304"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

