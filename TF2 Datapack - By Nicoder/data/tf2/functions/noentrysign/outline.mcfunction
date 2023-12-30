particle block_marker barrier ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
scoreboard players add $i tf2.var 1
execute if score $i tf2.var >= $y tf2.var if score $line tf2.var matches 1..3 unless score $line tf2.var matches 2 run function tf2:__private__/if_else/45
execute if score $i tf2.var >= $horizontal tf2.var if score $line tf2.var matches 2..4 unless score $line tf2.var matches 3 run function tf2:__private__/if_else/46
execute if score $line tf2.var matches 1 positioned ^ ^1 ^ run function tf2:noentrysign/outline
execute if score $line tf2.var matches 2 positioned ^-1 ^ ^ run function tf2:noentrysign/outline
execute if score $line tf2.var matches 3 positioned ^ ^-1 ^ run function tf2:noentrysign/outline
execute if score $line tf2.var matches 4 positioned ^1 ^ ^ run function tf2:noentrysign/outline