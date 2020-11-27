
#Setup all necessary scoreboard commands.

scoreboard objectives add helper_stun_show dummy
scoreboard objectives add helper_rage_show dummy

#Setup custom status effect scoreboards.

scoreboard objectives add effect_stunned dummy
scoreboard objectives add effect_shocked dummy
scoreboard objectives add effect_bleed dummy
scoreboard objectives add effect_vuln dummy
scoreboard objectives add effect_rage dummy

scoreboard objectives add effect_cloaked dummy

#Start initial required looping to trigger enchant effects.

function cartographer_custom_statuses:loop/tick/base
schedule function cartographer_custom_statuses:loop/1_second/base 30t