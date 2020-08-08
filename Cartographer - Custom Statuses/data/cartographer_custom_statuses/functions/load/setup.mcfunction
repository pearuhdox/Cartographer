
#Setup all necessary scoreboard commands.

scoreboard objectives add helper_stun_show dummy
scoreboard objectives add helper_rage_show dummy

#Setup custom status effect scoreboards.

scoreboard objectives add effect_stunned dummy
scoreboard objectives add effect_shocked dummy
scoreboard objectives add effect_bleed dummy
scoreboard objectives add effect_vuln dummy
scoreboard objectives add effect_rage dummy

#Start initial required looping to trigger enchant effects.

function cartographer_custom_statuses:loop/tick/base
function cartographer_custom_statuses:loop/1_second/base

#Give the players a tag for the load message.

tag @a add custom_statuses