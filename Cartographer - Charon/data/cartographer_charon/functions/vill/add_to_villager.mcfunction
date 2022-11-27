#00000001-0000-0007-0000-001b0000000b
data modify storage cartographer_charon:vil slot.maxUses set value 1
data modify storage cartographer_charon:vil slot.rewardExp set value 0b
data modify storage cartographer_charon:vil slot.buy.id set value "minecraft:emerald"

execute if score $use_mob_essence ca.loot_table_rules matches 1.. run data modify storage cartographer_charon:vil slot.buy set value {id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}',Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:mending",lvl:1s}],SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}}}}

execute store result storage cartographer_charon:vil slot.buy.Count byte 1 if data storage cartographer_charon:bundle bundle.tag.Items[]
data modify storage cartographer_charon:vil slot.sell set from storage cartographer_charon:bundle bundle

data modify entity 00000001-0000-0007-0000-001b0000000b Offers.Recipes prepend from storage cartographer_charon:vil slot

