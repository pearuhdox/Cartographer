
#Setup all necessary scoreboard commands.

scoreboard objectives add mimic_anger dummy

#Setup all necessary helper scoreboards.

scoreboard objectives add open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add open_echest minecraft.custom:minecraft.open_enderchest

#Start initial required looping to trigger enchant effects.

function preyshock:loop/tick/base
function preyshock:loop/1_second/base
function preyshock:loop/3_second/base
function preyshock:loop/5_second/base