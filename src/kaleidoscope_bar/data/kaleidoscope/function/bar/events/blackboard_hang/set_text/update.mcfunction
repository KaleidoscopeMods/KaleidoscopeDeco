$data modify entity @n[tag=k_board_text,type=text_display,scores={dc_uid=$(score)}] text merge value $(value)
$data modify entity @n[tag=k_board_text,type=text_display,scores={dc_uid=$(score)}] text.extra[0] set value "\n"
$data modify entity @n[tag=k_board_text,type=text_display,scores={dc_uid=$(score)}] text.extra[2] set value "\n"
$data modify entity @n[tag=k_board_text,type=text_display,scores={dc_uid=$(score)}] text.extra[4] set value "\n         "
$data modify entity @n[tag=k_board_text,type=text_display,scores={dc_uid=$(score)}] alignment set value "$(align)"

$tag @n[tag=dc_pivot,type=marker,scores={dc_uid=$(score)}] $(lock) kaleidoscope_bar_blackboard_bind