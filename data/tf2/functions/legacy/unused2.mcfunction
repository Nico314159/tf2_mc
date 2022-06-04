# Prevents TNT from destroying blocks. Unneeded both due to worldguard and because nothing uses TNT

execute as @e[type=minecraft:tnt,nbt={Fuse:70s}] if entity @s[] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:4b,Fuse:2,ignited:1}
kill @e[type=minecraft:tnt,nbt={Fuse:70s}]

execute as @e[type=minecraft:tnt_minecart, nbt={TNTFuse:3}] if entity @s[] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
kill @e[type=minecraft:tnt_minecart, nbt={TNTFuse:1}]