/turf/simulated/floor/flesh
	name = "flesh"
	desc = "This slick flesh ripples and squishes under your touch"
	icon = 'icons/turf/stomach_vr.dmi'
	icon_state = "flesh_floor"
	initial_flooring = /decl/flooring/flesh

/turf/simulated/floor/flesh/colour
	icon_state = "c_flesh_floor"
	initial_flooring = /decl/flooring/flesh

/turf/simulated/floor/flesh/attackby()
	return

/decl/flooring/flesh
	name = "flesh"
	desc = "This slick flesh ripples and squishes under your touch"
	icon = 'icons/turf/stomach_vr.dmi'
	icon_base = "flesh_floor"

/decl/flooring/grass/outdoors
	flags = TURF_REMOVE_SHOVEL

/decl/flooring/grass/outdoors/forest
	icon = 'icons/turf/outdoors.dmi'
	icon_base = "grass-dark"

/turf/simulated/floor/tiled/freezer/cold
	temperature = T0C - 5

//////////////////////////////Moon Turf//////////////////////////////

/decl/flooring/grass/moon
	name = "growth"
	desc = "A natural fungus that has adapted to the hostile climate."
	flags = TURF_REMOVE_SHOVEL
	icon = 'icons/turf/outdoors_vr.dmi'
	icon_base = "grass_moon"
	build_type = /obj/item/stack/tile/grass/moon
	has_base_range = 1