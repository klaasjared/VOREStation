//Pumpkins
/obj/structure/flora/pumpkin
	name = "pumpkin"
	icon = 'icons/obj/flora/pumpkins.dmi'
	desc = "A healthy, fat pumpkin. It looks as if it was freshly plucked from its vines and shows no signs of decay."
	icon_state = "decor-pumpkin"

/obj/effect/landmark/carved_pumpkin_spawn
	name = "jack o'lantern spawn"
	icon = 'icons/obj/flora/pumpkins.dmi'
	icon_state = "spawner-jackolantern"

/obj/effect/landmark/carved_pumpkin_spawn/New()
    var/new_pumpkin = pick(
		prob(70);/obj/structure/flora/pumpkin,
        prob(60);/obj/structure/flora/pumpkin/carved,
        prob(30);/obj/structure/flora/pumpkin/carved/scream,
        prob(30);/obj/structure/flora/pumpkin/carved/girly,
        prob(10);/obj/structure/flora/pumpkin/carved/owo)
    new new_pumpkin(src.loc)
    ..()

/obj/structure/flora/pumpkin/carved
	name = "jack o'lantern"
	desc = "A fat, freshly picked pumpkin. This one has a face carved into it! This one has develishly evil-looking eyes and a grinning mouth more than big enough for a very small person to hide in."
	icon_state = "decor-jackolantern"

/obj/structure/flora/pumpkin/carved/scream
	desc = "A fat, freshly picked pumpkin. This one has a face carved into it! This one has rounded eyes looking in completely opposite directions and a wide mouth, forever frozen in a silent scream. It looks ridiculous, actually."
	icon_state = "decor-jackolantern-scream"

/obj/structure/flora/pumpkin/carved/girly
	desc = "A fat, freshly picked pumpkin. This one has a face carved into it! This one has neatly rounded eyes topped with what appear to be cartoony eyelashes, completed with what seems to have been the carver's attempt at friendly, toothy smile. The mouth is easily the scariest part of its face."
	icon_state = "decor-jackolantern-girly"

/obj/structure/flora/pumpkin/carved/owo
	desc = "A fat, freshly picked pumpkin. This one has a face carved into it! This one has large, round eyes and a squiggly, cat-like smiling mouth. Its pleasantly surprised expression seems to suggest that the pumpkin has noticed something about you."
	icon_state = "decor-jackolantern-owo"

// Various decorá
/obj/structure/flora/log1
	name = "waterlogged trunk"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A part of a felled tree. Moss is growing across it."
	icon_state = "log1"

/obj/structure/flora/log2
	name = "driftwood"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "Driftwood carelessly lost in the water."
	icon_state = "log2"

/obj/structure/flora/lily1
	name = "red flowered lilypads"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A bunch of lilypads. A beautiful red flower grows in the middle of them."
	icon_state = "lilypad1"

/obj/structure/flora/lily2
	name = "yellow flowered lilypads"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A few lilypads. A sunny yellow flower stems from the water and from between the lilypads."
	icon_state = "lilypad2"

/obj/structure/flora/lily3
	name = "lilypads"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A group of flowerless lilypads."
	icon_state = "lilypad3"

/obj/structure/flora/smallbould
	name = "small boulder"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A small boulder, with its top smothered with moss."
	icon_state = "smallerboulder"

/obj/structure/flora/bboulder1
	name = "large boulder"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "Small stones sit beside this large boulder. Moss grows on the top of each of them."
	icon_state = "bigboulder1"
	density = 1

/obj/structure/flora/bboulder2
	name = "jagged large boulder"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "This boulder has had plates broken off it. Moss grows in the cracks and across the top."
	icon_state = "bigboulder2"
	density = 1

/obj/structure/flora/rocks1
	name = "rocks"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A bunch of mossy rocks."
	icon_state = "rocks1"

/obj/structure/flora/rocks2
	name = "rocks"
	icon = 'icons/obj/flora/amayastuff.dmi'
	desc = "A bunch of mossy rocks."
	icon_state = "rocks2"

///////////////////////////Moon Flora///////////////////////////

/obj/structure/flora/moon
	icon = 'icons/obj/flora/virgoflora.dmi'

/datum/category_item/catalogue/flora/whispingstalks
	name = "Whisping Stalks"
	desc = "Classification: Whisping Stalks\
	<br><br>\
	A common sight on the second moon of Virgo 3, the whisping stalks are a fungal \
	lifeform that has adapted to the toxic atmosphere of Virgo 3b. Like most 'plant \
	life' on Virgo 3b it is toxic to consume, though several places have taken the \
	small plant and made them into tiny houseplants. \
	<br>\
	Scientist have observed that the stalks give off a slight 'whisper' whenever \
	wind or air passes through the small blue bulbs on the plant's stalks. They \
	think that this is a survival tactic that wards off protential predators, \
	however this has not been confirmed. \
	<br>\
	The plant's bulbs are a deep blue color round with a hole through the center \
	where pollen forms and is thus distibuted by the wind."
	value = CATALOGUER_REWARD_EASY

/obj/structure/flora/moon/whispingstalks
	name = "strange stalks"
	desc = "This is an odd looking plant form. It make a very sublte sound when close."
	icon_state = "whispingstalks"
	catalogue_data = list(/datum/category_item/catalogue/flora/whispingstalks)

/obj/structure/flora/moon/whispingstalks/Initialize()
	icon_state = "[initial(icon_state)][rand(1,4)]"
	. = ..()

/datum/category_item/catalogue/flora/tallgrass
	name = "Fungal Strands"
	desc = "Classification: Fungal Strands\
	<br><br>\
	A common sight on the second moon of Virgo 3, these fungal stalks are tall growths \
	of concentrated fungus that is related to the fungus that coats the moon's surface. \
	It is likely that these taller growths are a sort of 'male' or 'female' form of \
	fungus that allows steady and continuous reproduction in the harsh atmosphere of \
	Virgo 3b.\
	<br>\
	Scientists have noted that the strands seem to absorb small trace amounts of Phoron \
	from the atmosphere which is likely the fungi's source of nutrients."
	value = CATALOGUER_REWARD_EASY

/obj/structure/flora/moon/tallgrass
	name = "tall growths"
	desc = "A tall grass like plant."
	icon_state = "grass"
	randomize_size = TRUE
	catalogue_data = list(/datum/category_item/catalogue/flora/tallgrass)

	harvest_tool = /obj/item/weapon/material/knife
	max_harvests = 1
	min_harvests = -4
	harvest_loot = list(
		/obj/item/seeds/wabback = 15,
		/obj/item/seeds/blackwabback = 1,
		/obj/item/seeds/wildwabback = 30
		)

/obj/structure/flora/moon/tallgrass/Initialize()
	icon_state = "[initial(icon_state)][rand(1,10)]"
	. = ..()

/obj/structure/flora/moon/tallgrass/get_harvestable_desc()
	return "<span class='notice'>\The [src] seems to be growing over something.</span>"