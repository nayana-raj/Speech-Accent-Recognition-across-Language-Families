**We employ the following signal processing techniques on the audio files corresponding to the clean data:**

* Trimming each audio file to 5s each, for the purpose of more training and test data
* Running the audio files through a Voice Activity Detection algorithm, in order to eliminate silence periods longer than 300ms
* Downsampling the audio files to a value of 8000 Hz
