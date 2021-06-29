function scr_fadeout_commander()
{

//Satic elements alpha
global.fade_in = false;
global.fade_out = true;

//Text inputs
with (oInputFirstLine){fade_out = true; init_x_threshold = -500}
with (oInputSecondLine){fade_out = true; init_x_threshold = -500}

//Dropdowns
with (oDW_tab0){fade_out = true; init_x_threshold = -500}
with (oDW_tab1){fade_out = true; init_x_threshold = -500}

//LM Items
with (oButtonTXTST){fade_out = true; init_x_threshold = -300}
with (oButtonPICST){fade_out = true; init_x_threshold = -300}
with (oButtonProfiles){fade_out = true; init_x_threshold = -300}
with (oButtonPalette){fade_out = true; init_x_threshold = -300}
with (oButtonCog){fade_out = true; init_x_threshold = -300}

//Preview
with (oPreview0){fade_out = true; init_x_threshold = -500}

//ActionButtons
with (oButtonUpdateDRP){fade_out = true; init_x_threshold = -500}

}