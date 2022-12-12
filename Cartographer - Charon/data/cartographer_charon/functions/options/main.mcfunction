
scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to toggle it!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Charon","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Vanilla and Core gamerules.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Death Mode","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set the death mode that Charon uses to create death piles on the ground.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/death_mode"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Multiplayer Shades","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle on/off Multiplayer Shades. Shades can be revived by other players to return them back to the death location. ","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/multiplayer"}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Lexica Death Note","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable or Disable the Death Note, the Lexica tag that shows all active death effects and modes. (When the player dies the first time.)","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/use_death_note"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Death Compass","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable or Disable the Death Compass, which gives the player a custom Recovery Compass when they die.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/death_compass"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Spawner Defenses","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable or Disable Spawner Defenses, which reprime nearby spawners when players die.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/spawner_defenses"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Retain Potion Effects","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable or Disable Retaining Potion Effects, which restores their potion effects are restored at 50% remaining duration on respawn.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/retain_pots"}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Void Ruleset","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set how the void treats players from a couple modes.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/void_setting"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Void Home Ruleset","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set custom void home rules (aka where death effects are run for void deaths/in general.)","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/void_home_setting"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Set Void Home Location","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to set the position for the void home ruleset. You MUST also forceload this position with /forceload!","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/set_home_location"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Item Drop Rules »","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set which items or slots can drop or always drop.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/drop_rules/main"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Drop Rates »","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set drop rates for items and experience.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/drop_rates/main"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Death Tax Rules »","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Set penalties or conditions that affect dropped items.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_charon:options/globals/tax_rules/main"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to Options.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/main"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

