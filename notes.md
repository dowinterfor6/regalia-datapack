# Notes

## Fresh launch

CONFIG/REGEN set amount to 1, shakey hearts

Take damage first, can't eat anything, prevent power doesn't show up?:

List of powers:

<!-- human/sprinting
human/sprinting_logic
human/sprinting_status -->
<!-- human/regeneration_interupt
human/regeneration_status
human/regeneration_prevent
human/regeneration
human/regeneration_display -->
<!-- human/hunger -->
<!-- s_average/attributes
s_average/config -->
<!-- food/i/health
food/i/health_c#
food/i/duration
food/i/duration_c# -->
<!-- food/i/special
food/i/special_s_purge -->

Health didn't apply for some reason, race condition maybe
Eat first (food doesn't apply):

<!-- human/sprinting -->

human/waterfall_swimming

<!-- human/hunger -->

food/i/regeneration
food/i/category
food/tooltip

## After relog

CONFIG/REGEN set amount to 1, delay to 200

CONFIG: Refreshing (called twice?)
Refresh function called a lot upon opening chat box

Already taken damage, starts regen upon relog:

<!-- human/sprinting
human/sprinting_status
human/sprinting_logic -->
<!-- human/regeneration_interupt
human/regeneration_prevent
human/regeneration
human/regeneration_status
human/regeneration_display -->
<!-- human/hunger -->

human/hunger_diet
human/hunger_effects
human/hunger_immunity
human/hunger_feed
human/hunger_exhaustion
human/waterfall_swimming
config/health/h#

<!-- s_average/attributes
s_average/config -->

food/tooltip_d#
food/tooltip_r#
food/tooltip_h#
food/tooltip_c_side
food/tooltip_c_drink
food/tooltip_s_purge
food/tooltip_c_snack
food/tooltip_c_meal
food/tooltip
food/tooltip_base
food/i/regeneration_c#

<!-- food/i/health
food/i/health_c#
food/i/duration
food/i/duration_c# -->
<!-- food/i/special_s_purge
food/i/special -->

food/i/category_meal
food/i/category_snack
food/i/category_drink
food/i/category_none

## Race condition? notes

### Case 1:

Fresh launch with size set correctly:
(No config refresh)
first.mcfunction called
Config/scale 4x set, Config/health set
Weird purple bar bottom left shown (mana?)
Can't eat food
Upon damage, bar shows up and disappears, hearts shaking

Second launch:
Config refresh
Config/scale 4x set
Config/Health set (twice)
Config/Regen set amount and delay
Config/Sprint set
LOGIN:Awake
All above duplicated
Regen already kicked in (?)
Food able to be eaten

### Case 2

Fresh launch 