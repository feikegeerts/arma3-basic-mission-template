//////////////////////////////////////////////////////////////////////////
//START EARPLUGS CODE
waituntil {!isnull (finddisplay 46)};

		_OPRbreathing = alive player;
		_OPRtrig=true;
		_OPRdude = player;

			while {_OPRtrig} do {

				sleep 0.001;

					if (_OPRbreathing) then {
						_OPRstartingpos = position player;
						sleep 0.001;
						_OPRposition = position _OPRdude;

						_OPRstationary = _OPRstartingpos select 0 == _OPRposition select 0 && _OPRstartingpos select 1 == _OPRposition select 1;

						if (_OPRstationary) then {} else {_OPRtrig=false;};

					};
			};

uisleep 1;

5 fadeSound 1;
earplugsout=true;

[] spawn {cmKeyPress = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 210) then {[] call cm_Earplugs_FUNc;};"];};

systemChat "Earplugs code has been initialized. Use INSERT to toggle earplugs.";
//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
