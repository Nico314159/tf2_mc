particle block_marker barrier ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
scoreboard players add $i tf2.var 1
execute if score $i tf2.var >= $longest tf2.var run return 1
$execute positioned $(param) run function tf2:noentrysign/diagonal with storage tf2:vars