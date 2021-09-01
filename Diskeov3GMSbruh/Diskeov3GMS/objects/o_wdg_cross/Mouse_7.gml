if (element_enable)
{
	np_clearpresence();
	__np_shutdown();
	
	if (global.experiment_nodejs)
	{
		with(oButtonUpdateDRP)
		{
			if (procid_actual != -1)
			{
				ProcIdKill(procid_actual)
			}
		}
	}
	
	game_end();
}