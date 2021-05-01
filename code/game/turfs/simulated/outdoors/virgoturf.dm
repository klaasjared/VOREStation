//////////////////////////////Moon Turf//////////////////////////////

/datum/category_item/catalogue/flora/moon_grass
	name = "Sivian Flora - Moss"
	desc = "A natural moss that has adapted to the sheer cold climate of Sif. \
	The moss came to rely partially on bioluminescent bacteria provided by the local tree populations. \
	As such, the moss often grows in large clusters in the denser forests of Sif. \
	The moss has evolved into it's distinctive blue hue thanks to it's reliance on bacteria that has a similar color."
	value = CATALOGUER_REWARD_TRIVIAL

/turf/simulated/floor/outdoors/grass/moon
	name = "growth"
	icon_state = "grass_sif0"
	initial_flooring = /decl/flooring/grass/moon
	edge_blending_priority = 4
	grass_chance = 5
	var/tree_chance = 2

	grass_types = list(
		/obj/structure/flora/moon/whispingstalks = 2,
		/obj/structure/flora/moon/tallgrass = 15
		)

	catalogue_data = list(/datum/category_item/catalogue/flora/moon_grass)
	catalogue_delay = 2 SECONDS

/turf/simulated/floor/outdoors/grass/moon/Initialize()
	if(tree_chance && prob(tree_chance) && !check_density())
		new /obj/structure/flora/tree/sif(src)
	. = ..()
