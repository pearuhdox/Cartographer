execute if entity @s[tag=ca.alchemist] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Potion (black)"}'},SkullOwner:{Id:[I;1507796338,-739685425,-1575619644,-920582632],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM3YTRmYTVlOWM0ZmU0MDg5MWU1YWMwNmEwMzM3YWRmMDIwMDVjMDAzOWVmODg1ZWE2M2MzNTI4YTZhNzRiMSJ9fX0="}]}}} 1

execute if entity @s[tag=ca.alchemist] run data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:alchemist PotionCopy
execute if entity @s[tag=ca.alchemist] run data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:alchemist PotionCopy
