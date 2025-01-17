(global boolean secret_done false)

(script static void update_secret
  (if (not secret_done) (begin
	(if (game_is_authoritative) (begin
		(if (> (device_get_position secret_button) 0) (begin
			(object_create secret_hog)
		))
	))

	(if (<= (unit_get_health secret_biped) 0) (begin
		(object_create secret_thanos)
		(object_set_permutation secret_thanos default thanos0)
		(object_set_scale secret_thanos 35 240)
		(set secret_done true)
	))
  ))
)