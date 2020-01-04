/// @description WaveSelector

waveSwitchTimer = increase_timer(waveSwitchTimer);

var _timeIsOver = check_timer(waveSwitchTimer, waveSwitchTime);

if (_timeIsOver)
{
	currentWave = ChooseRandomWave();
	waveData = GetWaveData(currentWave);
}