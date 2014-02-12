_targetveh = cursorTarget;


if !(locked _targetveh) then {
sleep 0.1;
_targetveh lock true;
TitleText [format["%1 locked",_targetveh], "PLAIN DOWN"];
}
else
{
sleep 0.1;
_targetveh lock false;
TitleText [format["%1 unlocked",_targetveh], "PLAIN DOWN"];
};