import pandas as pd

for i in range(1,11):
    path = '/content/colabdata/Raman/Batch' +str(i) +'_region.csv'
    with open(path, newline='') as csvfile:
        df = pd.read_csv(csvfile, dtype='float', na_values=['??', 'None', 'NaN'])

    df = df.iloc[11:][:]
    path = '/content/colabdata/Raman/coeff' +str(i) +'.pkl'
    df.to_pickle(path)
