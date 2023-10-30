#Create the scoreboard used to enable or disable features to dynamically save performance.
scoreboard objectives add ca.loot_table_rules dummy
scoreboard objectives add ca.ltt_powerups dummy

setblock 4206900 20 4206900 minecraft:air replace

setblock 4206900 20 4206900 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:64b,Slot:0b,id:"minecraft:villager_spawn_egg",tag:{EntityTag:{ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],SkullOwner:{Id:[I;187268743,-1652207708,-1271708087,227093405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmJlNTRiNzY4ZjRmNWVlMDljMDViZGE1NzFkNDkwZmZmMmNiZDQ0MDMyYWI0YWU4YWE2NTcwOTk4Mzk3MDYzMSJ9fX0="}]}}}}],CustomName:'{"text":"Essence Trader","color":"dark_aqua","bold":true,"italic":false}',Offers:{Recipes:[{buy:{Count:8b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:8b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:2b,id:"minecraft:experience_bottle"},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:6b,id:"minecraft:arrow"},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:12b,id:"minecraft:dried_kelp"},uses:0,xp:0},{buy:{Count:4b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:bread"},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:cooked_chicken"},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},buyB:{Count:4b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:cooked_beef"},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:8b,id:"minecraft:torch"},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:4b,id:"minecraft:cyan_stained_glass"},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:4b,id:"minecraft:prismarine"},uses:0,xp:0},{buy:{Count:3b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:4b,id:"minecraft:deepslate_bricks"},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:healing"}},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:potion",tag:{Potion:"minecraft:long_swiftness"}},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:potion",tag:{Potion:"minecraft:long_strength"}},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:strong_healing"}},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:3b,id:"minecraft:tipped_arrow",tag:{CustomPotionColor:6901877,custom_potion_effects:[{amplifier:1b,duration:80,id:"minecraft:slowness"}],HideFlags:32,Potion:"minecraft:awkward",display:{Lore:['{"text":"Slowness II (0:04)","color":"red","italic":false}'],Name:'{"text":"Barbed Arrow","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},buyB:{Count:4b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:3b,id:"minecraft:tipped_arrow",tag:{CustomPotionColor:2566704,custom_potion_effects:[{amplifier:0b,duration:40,id:"minecraft:blindness"}],HideFlags:32,Potion:"minecraft:awkward",display:{Lore:['{"text":"Blindness (0:02)","color":"red","italic":false}'],Name:'{"text":"Illuision Arrow","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:3b,id:"minecraft:tipped_arrow",tag:{CustomPotionColor:15209,custom_potion_effects:[{amplifier:7b,duration:20,id:"minecraft:levitation"},{amplifier:0b,duration:30,id:"minecraft:slow_falling"}],HideFlags:32,Potion:"minecraft:awkward",display:{Lore:['{"text":"Levitation VIII","color":"red","italic":false}','{"text":"Slow Falling (0:02)","color":"red","italic":false}'],Name:'{"text":"Phantom Bone Arrow","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:6b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{CustomPotionColor:16764830,custom_potion_effects:[{amplifier:0b,duration:240,id:"minecraft:regeneration"},{amplifier:0b,duration:240,id:"minecraft:fire_resistance"}],Potion:"minecraft:null",display:{Name:'{"text":"Extinguisher","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:6b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{CustomPotionColor:11403249,custom_potion_effects:[{amplifier:100b,duration:100,id:"minecraft:nasuea"},{amplifier:1b,duration:40,id:"minecraft:regeneration"}],HideFlags:32,Potion:"minecraft:null",display:{Lore:['{"text":"Cleansing","color":"blue","italic":false}','{"text":"Regeneration II (0:02)","color":"blue","italic":false}'],Name:'{"text":"Antidote","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:6b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:lingering_potion",tag:{CustomPotionColor:10710783,custom_potion_effects:[{amplifier:1b,duration:600,id:"minecraft:speed"},{amplifier:0b,duration:600,id:"minecraft:night_vision"},{amplifier:0b,duration:600,id:"minecraft:absorption"}],HideFlags:32,Potion:"minecraft:water",display:{Lore:['{"text":"Speed II (0:30)","color":"blue","italic":false}','{"text":"Absorption (0:30)","color":"blue","italic":false}','{"text":"Night Vision (0:30)","color":"blue","italic":false}'],Name:'{"text":"Endersoup","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:2b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{CustomPotionColor:87150,custom_potion_effects:[{amplifier:0b,duration:600,id:"minecraft:invisibility"}],display:{Name:'{"text":"Liquefied Illusion","color":"white","italic":false}'}}},uses:0,xp:0},{buy:{Count:3b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:splash_potion",tag:{CustomPotionColor:16774912,custom_potion_effects:[{amplifier:1b,duration:600,id:"minecraft:regeneration"},{amplifier:1b,duration:240,id:"minecraft:absorption"}],LiquefiedTotem:1,display:{Name:'{"text":"Liquefied Totem","color":"white","italic":false}'}}},uses:0,xp:0}]},VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:snow"},Willing:0b},display:{Name:'{"text":"Spawn General Essence Trader","color":"dark_aqua","italic":false}'}}},{Count:64b,Slot:4b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},{Count:64b,Slot:8b,id:"minecraft:villager_spawn_egg",tag:{EntityTag:{ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],SkullOwner:{Id:[I;187268743,-1652207708,-1271708087,227093405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmJlNTRiNzY4ZjRmNWVlMDljMDViZGE1NzFkNDkwZmZmMmNiZDQ0MDMyYWI0YWU4YWE2NTcwOTk4Mzk3MDYzMSJ9fX0="}]}}}}],CustomName:'{"text":"Essence Trader","color":"dark_aqua","bold":true,"italic":false}',Offers:{Recipes:[{buy:{Count:8b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},uses:0,xp:0},{buy:{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;-1454960145,263799667,-1517564240,-399223796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE3YWE5MmQyNDIzMzQ0NDNlZDQ5Zjg3MGFiNTZmYmU1NDIzMjJlYTA0NzNhOTFhMzNhNmY4MzAyZDU1YmY1ZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}','[{"text":"Equal to 8 ","color":"gray","italic":false},{"text":"Mob Essence","color":"dark_aqua","italic":false},{"text":".","color":"gray","italic":false}]'],Name:'{"text":"Compressed Mob Essence","color":"dark_aqua","italic":false}'}}},maxUses:2147483647,rewardExp:0b,sell:{Count:8b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}],HideFlags:1,SkullOwner:{Id:[I;1927509704,-492089604,-1707993161,-498451464],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUyMjljMzQ4NTRhNzI2MTg1ZTg0YzcwMzQ0MGU2ZGMzNDA3NDc1NDA3YWRhNWYxYjI3YmIyYzExNTZlYWMyZSJ9fX0="}]}},display:{Lore:['{"text":"Can be converted into a variety","color":"gray","italic":false}','{"text":"of useful consumables via","color":"gray","italic":false}','{"text":"an Essence Vendor trader.","color":"gray","italic":false}'],Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}}},uses:0,xp:0}]},VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:snow"},Willing:0b},display:{Name:'{"text":"Spawn Essence Trader Template","color":"dark_aqua","italic":false}'}}}]}