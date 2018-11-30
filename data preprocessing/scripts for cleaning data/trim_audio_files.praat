## trim_audio_files.praat
## This script opens all the sound files in a given directory, 
## and trims each file into smaller clips of 5s each

form Enter input and output directory
	comment Enter directory from which files should be imported:
	sentence InputDirectory C:\Users\Nayana_2\Desktop\MLproject\rough data\
	#By specifying a Keyword, you can open only those files
	#that begin with a particular sequence of characters
	sentence Keyword amharic
	sentence Filetype wav
	comment Enter directory to which trimmed files should be saved:
	sentence OutputDirectory C:\Users\Nayana_2\Desktop\MLproject\rough data\output dir\
endform

createDirectory ("output")
Create Strings as file list... list 'InputDirectory$'*'filetype$'
n_of_files = Get number of strings

#to work on each audio file
for file to n_of_files
	select Strings list
	current_file$ = Get string... file
	cf=Read from file... 'InputDirectory$''current_file$'
	dur= Get total duration
	start_time=0
	end_time=5
	#to work on each 5s clip
	while start_time < dur 
		selectObject: cf
			Extract part: start_time, end_time, "rectangular", 1, "yes"
			Write to WAV file... 'OutputDirectory$'\'start_time'-'end_time''current_file$'
		start_time=start_time+5
		end_time=end_time+5
	endwhile
endfor

