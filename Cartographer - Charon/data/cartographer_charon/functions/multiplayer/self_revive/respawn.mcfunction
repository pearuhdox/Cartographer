clear @s

give @p golden_sword{TrialByFire:1b,display:{Name:'{"text":"Trial by Fire","color":"aqua","italic":false}',Lore:['{"text":"Knockback I","color":"gray","italic":false}','{"text":"Unbreakable","color":"gray","italic":false}','{"text":"Curse of Vanishing","color":"red","italic":false}','{"text":" "}','{"text":"You have until your shade fades.","color":"dark_gray","italic":true}','{"text":"Pick yourself back up! Good luck!","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}','{"text":"+4 Armor","color":"blue","italic":false}','{"text":"+20% Speed","color":"blue","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-2028924358,1107640340,-1814457508,1632303884],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-249195047,-1431288717,-1988120727,124539786],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1776945712,-146718698,-1927250537,-93458100],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;1731362831,1518289861,-1200891620,-842358217],Slot:"mainhand"}]} 1

effect give @s regeneration 6 4

function cartographer_charon:multiplayer/self_revive/position

tag @s remove watched_die_already
scoreboard players set @s dt.death 0

scoreboard players set @s ca.self_revive_timer 601