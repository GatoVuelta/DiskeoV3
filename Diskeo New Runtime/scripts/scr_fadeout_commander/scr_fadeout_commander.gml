function scr_fadeout_commander()
{

//Satic elements alpha
global.fade_in = false;
global.fade_out = true;

//Text inputs
with (oInputFirstLine){fade_out = true; init_x_threshold = -500}
with (oInputSecondLine){fade_out = true; init_x_threshold = -500}
with (oInputTooltip0){fade_out = true; init_x_threshold = -500}
with (oInputCustomHeading){fade_out = true; init_x_threshold = -500}
with (oInputBTN_link){fade_out = true; init_x_threshold = -500}
with (oInputBTN_txt){fade_out = true; init_x_threshold = -500}

//Tabs
with (oDW_tabbtn_0){fade_out = true; init_x_threshold = -500}
with (oDW_tabbtn_1){fade_out = true; init_x_threshold = -500}

//Dropdowns
with (oDW_tab0){fade_out = true; init_x_threshold = -500}
with (oDW_tab1){fade_out = true; init_x_threshold = -500}

with (oDW_tabpic0){fade_out = true; init_x_threshold = -500}
with (oDW_tabpic1){fade_out = true; init_x_threshold = -500}

//LM Items
with (oButtonTXTST){fade_out = true; init_x_threshold = -300}
with (oButtonPICST){fade_out = true; init_x_threshold = -300}
with (oButtonBNTS){fade_out = true; init_x_threshold = -300}
with (oButtonTIME){fade_out = true; init_x_threshold = -300}
with (oButtonProfiles){fade_out = true; init_x_threshold = -300}
with (oButtonPalette){fade_out = true; init_x_threshold = -300}
with (oButtonCog){fade_out = true; init_x_threshold = -300}

//Preview
with (oPreview0){fade_out = true; init_x_threshold = -500}
with (oButton_PRVW_1){fade_out = true; init_x_threshold = -500}
with (oButton_PRVW_2){fade_out = true; init_x_threshold = -500}
with (oButton_pres_savefile){fade_out = true; init_x_threshold = -500}
with (oButton_pres_refresh){fade_out = true; init_x_threshold = -500}

//ScrollableArea
with (o_scrollbar_pics){fade_out = true; init_x_threshold = -700}
with (o_scrollbar_pres){fade_out = true; init_x_threshold = -700}

//ActionButtons
with (oButtonUpdateDRP){fade_out = true; init_x_threshold = -500}
with (oToggle_BTN){fade_out = true; init_x_threshold = -500}

}