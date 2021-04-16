########################################
# File: Cartographer Lib - Entity Hit Detection - Load Message
#
# Author: PearUhDox | Date: 3/8/2021
#
# Description: Added load message for Gibbsly's entity hit detection system so Cartographer can verify its installation.
########################################

tellraw @a [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Entity Hit Detection by gibbsly (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by gibbsly. Required for all datapacks. Runs entity hit and player hit detection.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
tag @a add ehid_check