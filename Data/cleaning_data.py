'''
The raw data is cleaned so as to get rid of missing values and omit speakers who have been speaking English for more than 15 years, 
so as to preserve L1 effects on L2
'''
__author__ = '{Nayana Raj}'

#import libs
import csv, numpy, pandas as pd 
df = pd.read_csv('C:\\Users\\Nayana_2\\Desktop\\MA Semester III\\Analyzing Large Speech Corpora\\MLproject\Speech Accent Archive\\raw_data.csv')

#appending a new row 
df['l2_acq'] = '' 

#iterating through each row
for row in df[['l2_acq']].itertuples(index=True): 
    df['l2_acq']=df['age']-df['age_onset'] 
df

#omitting rows that don't have l2_acq>=15
df=df[df.l2_acq >=15] 

#writing to output file
df.to_csv('clean_data.csv', index=False) 
print('Writing done')

