;; commonly used global vars
(global boolean return_bool false)
(global string return_string none)
(global unit return_unit none)
(global object_definition return_object_definition none)
(global cutscene_flag return_flag red_teleport_v_flag)


;; calls update functions for custom grenade starts and backpack weapons
(global object_list var_players (player0))
(script continuous main_update
	;; memory saves
	(set var_players (players))

	;; do the things!
	(update_teleporters)
	(update_backpacks)
	(update_grenades)

)