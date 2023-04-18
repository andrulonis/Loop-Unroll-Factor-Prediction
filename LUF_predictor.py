from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error
from sklearn.model_selection import train_test_split
from sklearn.multioutput import MultiOutputRegressor
from sklearn.dummy import DummyClassifier
from sklearn.metrics import r2_score
from sklearn import preprocessing
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def main():
    data = pd.read_csv("results.csv", delimiter=";")
    data = data[["Loop max trip count", "# Load instructions", "# Store instructions", "# Operands", 
                 "# Floating point operations", "# Operations", "# Branches", "# Memory operations", 
                 "Loop depth", "# Loops inside (first nest level)", "# Loops inside (all nest levels)", 
                 "Best factor for latency", "Best factor for area", "Best factor balanced"]]
    
    x = data.drop(["Best factor for latency", "Best factor for area", "Best factor balanced"], axis=1)
    y = data[["Best factor for latency", "Best factor for area", "Best factor balanced"]]

    scores = []
    errors = []

    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2)
    baseline = MultiOutputRegressor(DummyClassifier(strategy='most_frequent'))
    baseline.fit(x_train, y_train)
    y_predicted = baseline.predict(x_test)
    # print(f'accuracy of baseline = {baseline.score(y_test, y_predicted)}')

    for i in range(1):
        x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2)

        #TODO: figure out if needed and if so, what to do with huge numbers that skew this
        # scaler = preprocessing.StandardScaler()
        # scaler.fit(x_train)
        # x_train = scaler.transform(x_train)
        # x_test = scaler.transform(x_test)

        mor = MultiOutputRegressor(RandomForestRegressor())
        mor.fit(x_train, y_train)

        y_pred = mor.predict(x_test)

        score0 = r2_score(y_test.iloc[:,0], y_pred[:,0])
        score1 = r2_score(y_test.iloc[:,1], y_pred[:,1])
        score2 = r2_score(y_test.iloc[:,2], y_pred[:,2])

        error0 = mean_absolute_error(y_test.iloc[:,0], y_pred[:,0])
        error1 = mean_absolute_error(y_test.iloc[:,1], y_pred[:,1])
        error2 = mean_absolute_error(y_test.iloc[:,2], y_pred[:,2])
        
        scores.append([score0, score1, score2])
        errors.append([error0, error1, error2])
        # y_pred = mor.predict(x_test)
        # score0 = mor.score(x_test, y_test[:,0:1])
        # score1 = mor.score(x_test, y_test[:,1])
        # score2 = mor.score(x_test, y_test[:,2])
        # print(error)
        # y_pred = randomForest.predict(x_test)
        # score = randomForest.score(x_test, y_test)


    # mean_score = sum(scores) / len(scores)
    # mean_error = sum(errors) / len(errors)



    #TODO: this is just for after evaluation to predict actual unrolls
    # final_model = RandomForestRegressor()
    # final_model.fit(x, y)
    # y_pred = final_model.predict(x)

    # predicted_LUFs = [round(y) for y in y_pred]

if __name__ == "__main__":
    main()
