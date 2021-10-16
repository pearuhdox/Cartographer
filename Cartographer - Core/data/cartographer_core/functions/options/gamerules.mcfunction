
scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to toggle it!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Core and Gamerules","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Vanilla and Core gamerules.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Command Feedback","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, command feedback can be printed to chat.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/cmd_feedback"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Daylight Cycle","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, the daylight cycle does not progress.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/daylight_cycle"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Death Messages","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, a death message is printed to chat whenever a player dies.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/death_messages"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Forgive Dead Players","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, neutral mobs lose their anger when they kill a player.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/forgive_dead"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Immediate Respawn","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, players will immediately respawn on death, instead of seeing the death screen.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/immediate_respawn"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Insomnia","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, Phantoms will naturally spawn on players who have not slept recently.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/insomnia"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Keep Inventory","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, players do not drop their items or xp on death.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/keep_inventory"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Natural Mob Spawning","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, natural mobs can spawn in the world (with the correct conditions).","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/mob_spawning"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Mob Griefing","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, mobs will do terrain damage.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/mob_griefing"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Universal Anger","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"When enabled, angered neutral mobs will aggro on the nearest player, even if they didn't attack them.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/universal_anger"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Disable Anvils","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle to prevent the use of Anvils. Creative mode players overwrite this restriction.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/disable_anvil"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Disable Grindstones","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle to prevent the use of Grindstones. Creative mode players overwrite this restriction.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/disable_grindstone"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Disable Lexica Chat Prompts","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle to disable chat prompts when new effects are discovered and added to Lexica Cartographia.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/disable_lexica_prompt"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Global Reload Message","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle the reload message preset for new players.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/global_reload_msg"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Lexica Stand Behavior","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle the behavior of placed Lexica stands. (Either to open the lexica or give a lexica)","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/lexica_stand"}}]


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to Options.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/main"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

