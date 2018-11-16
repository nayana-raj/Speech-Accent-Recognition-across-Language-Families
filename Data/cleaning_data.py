
# coding: utf-8

# In[1]:


__author__ = '{Nayana Raj}'
#import libs
import csv, numpy, pandas as pd 


# In[3]:


df = pd.read_csv('C:\\Users\\Nayana_2\\Desktop\\MA Semester III\\Analyzing Large Speech Corpora\\MLproject\Speech Accent Archive\\raw_data.csv')
#appending a new row 
df['l2_acq'] = '' 
#iterating through each row
for row in df[['l2_acq']].itertuples(index=True): 
    df['l2_acq']=df['age']-df['age_onset'] 
df
df.head()


# In[5]:


#omitting rows that don't have l2_acq>=15
df=df[df.l2_acq >=15] 
#writing to output file
df.to_csv('clean_data.csv', index=False) 
print('Writing done')


# In[ ]:


'''clean_data=open('clean_data.csv','w')
with clean_data:
    writer=csv.writer(clean_data, delimiter=',',quoting=csv.QUOTE_NONE)
    writer.writerow(df)

print("Writing complete")
'''

