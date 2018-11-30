**We employ the following signal processing techniques on the audio files corresponding to the clean data:**

* Cleaned csv data containing speaker info manually for missing values.
* Converted mp3 files to wav with Audacity macros.
* Running the audio files through a Voice Activity Detection algorithm, in order to eliminate silence periods longer than ~300ms.
* Audio files split into segments of 5s each using a Praat script.
* Downsampled trimmed files to 8000 Hz using Praat.
* MFCC features were extracted using Python.
