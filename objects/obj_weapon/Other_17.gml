/// @description RecoilController

var _recoilStep = recoilPowerCurrent * recoilFactor;
recoilPowerCurrent = approach(recoilPowerCurrent, 0, _recoilStep);