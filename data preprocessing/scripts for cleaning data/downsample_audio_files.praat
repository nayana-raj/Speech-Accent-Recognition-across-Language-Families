# This Praat script will change the sample rate of a number of audio 
#files, downsample them to 8000 Hz and save to another directory.


form Change sample rate in sound files
   sentence Sound_file_extension .wav
   comment Enter directory from which files should be imported:
   sentence InputDirectory C:\Users\Nayana_2\Desktop\MLproject\rough data\
   comment Enter directory to which resampled files should be saved: 
   sentence OutputDirectory  C:\Users\Nayana_2\Desktop\MLproject\rough data\output dir\
endform

Create Strings as file list... list 'InputDirectory$'*'sound_file_extension$'
numberOfFiles = Get number of strings
for file to numberOfFiles
	select Strings list
	sound$ = Get string... file
	Read from file... 'InputDirectory$''sound$'
	objectname$ = selected$ ("Sound", 1)
	select Sound 'objectname$'
	Filter (pass Hann band): 0, 8000, 100 
	Write to WAV file... 'OutputDirectory$''objectname$'.wav
	Remove
	select Sound 'objectname$'
	Remove
endfor

select Strings list
Remove

