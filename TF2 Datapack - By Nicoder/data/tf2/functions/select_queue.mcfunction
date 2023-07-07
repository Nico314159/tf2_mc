clear @s written_book
tag @s add tf2.in_queue
tp @s[scores={tf2.queue_type=1}] 10 25 25 0 0
tp @s[scores={tf2.queue_type=2}] -10 25 25 0 0
tp @s[scores={tf2.queue_type=3}] -30 25 25 0 0
scoreboard players add @s tf2.batch_number 0