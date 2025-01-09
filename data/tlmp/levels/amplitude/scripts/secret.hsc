(global short secret_timer 0)
(script static void update_secret
	(if (not (= secret_timer -1)) (begin
	(if (volume_test_objects secret_trigger var_players)
		(set secret_timer (+ secret_timer 1))
		(set secret_timer 0)
	)

	(if (>= secret_timer 150) (begin 
		(if (game_is_authoritative) (object_create secret_banshee))
		(sound_impulse_start "sound\dialog\multiplayer1\warthog" none 1)
		(set secret_timer -1)
	))
	))
)