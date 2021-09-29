import pandas as pd

for i in range(1,11):
    path = '/content/colabdata/Batches/Batch' +str(i) +'pre.csv'
    with open(path, newline='') as csvfile:
        df = pd.read_csv(csvfile, dtype='float', na_values=['??', 'None', 'NaN'])
    
    #Parse data into state and input data
    U = df.iloc[4:,1:10]
    U['PAA flow(Fpaa:PAA flow (L/h))'] = df.iloc[4:,16]
    
    #print(U.keys())
    
    X = df.iloc[4:,10:16]
    # #interpolate the missing values in the dataset
    X['Viscosity(Viscosity_offline:centPoise)'] = df.iloc[4:]['Viscosity(Viscosity_offline:centPoise)'].interpolate(method='linear', axis =0)
    X['PAA concentration offline(PAA_offline:PAA (g L^{-1}))'] = df.iloc[4:]['PAA concentration offline(PAA_offline:PAA (g L^{-1}))'].interpolate(method='linear', axis =0)
    X['Offline Penicillin concentration(P_offline:P(g L^{-1}))'] = df.iloc[4:]['Offline Penicillin concentration(P_offline:P(g L^{-1}))'].interpolate(method='linear', axis =0)
    X['NH_3 concentration off-line(NH3_offline:NH3 (g L^{-1}))'] = df.iloc[4:]['NH_3 concentration off-line(NH3_offline:NH3 (g L^{-1}))'].interpolate(method='linear', axis =0)
    X['Oxygen in percent in off-gas(O2:O2  (%))'] = df.iloc[4:]['Oxygen in percent in off-gas(O2:O2  (%))']
    #print(X.keys())
    
    pathU = '/content/colabdata/Batches/Batch_' +str(i) +'_input.pkl'
    pathX = '/content/colabdata/Batches/Batch_' +str(i) +'_state.pkl'
    U.to_pickle(pathU)
    X.to_pickle(pathX)
