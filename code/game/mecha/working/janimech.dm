
////////////Wreckage////////////

/obj/effect/decal/mecha_wreckage/janimech
	name = "Janimech wreckage"
	icon = 'icons/mecha/mecha_vr.dmi'
	icon_state = "janimech-broken"

////////////Mech////////////

/obj/mecha/working/janimech
	name = "L-APLU \"Jones\""
	desc = "Light Autonomous Power Loader Unit. A lighter, more nimble version of the APLU."
	icon = 'icons/mecha/mecha_vr.dmi'
	icon_state = "janimech"
	initial_icon = "janimech"
	step_in = 4
	step_energy_drain = 4
	max_temperature = 0
	health = 100
	maxhealth = 100
	wreckage = /obj/effect/decal/mecha_wreckage/janimech
	cargo_capacity = 6

	minimum_penetration = 0

	encumbrance_gap = 2

	starting_components = list(
		/obj/item/mecha_parts/component/hull,
		/obj/item/mecha_parts/component/actuator,
		/obj/item/mecha_parts/component/electrical
		)

	icon_scale_x = 1
	icon_scale_y = 1

/obj/mecha/working/janimech/Destroy()
	for(var/atom/movable/A in src.cargo)
		A.loc = loc
		var/turf/T = loc
		if(istype(T))
			T.Entered(A)
		step_rand(A)
	cargo.Cut()
	..()