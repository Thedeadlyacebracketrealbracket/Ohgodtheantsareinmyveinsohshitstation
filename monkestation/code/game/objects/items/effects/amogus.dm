/obj/item/effect_granter/amogus
	name = "Amogus Yourself"
	icon_state = "nugget"

/obj/item/effect_granter/amogus/grant_effect(mob/living/carbon/granter)
	if(issimian(granter))
		to_chat(granter, span_notice("Sorry but simians are to small to be turned into amogus you have not been charged."))
		return FALSE
	granter.apply_large_displacement_icon(/obj/effect/distortion/large/amogus)
	granter.AddElement(/datum/element/waddling)
	granter.can_be_held = TRUE
	granter.w_class = WEIGHT_CLASS_TINY
	. = ..()
