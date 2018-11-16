**We employ the following signal processing techniques on the audio files corresponding to the clean data:**

* Trimming each audio file to 5s each, for the purpose of more training and test data
* Downsampling the audio files to a value of 8000 Hz
* Running the audio files through a Voice Activity Detection algorith, in order to eliminate silence periods longer than 300ms
