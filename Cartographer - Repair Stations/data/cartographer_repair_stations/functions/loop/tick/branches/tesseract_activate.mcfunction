tellraw @p[distance=..7] {"text":"As you approach the Repair Station, the Tesseract on top glows with energy.","color":"#E24FFF","italic":false}
tellraw @p[distance=..7] {"text":"Your destroyed items will now be saved inside the Tesseract!","color":"aqua","italic":false}
playsound minecraft:block.respawn_anchor.set_spawn block @p[distance=..7] ~ ~ ~ 1 1.5
scoreboard players set @p[distance=..7] tesseract 1
