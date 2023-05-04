from sklearn.ensemble import RandomForestRegressor
from sklearn.neighbors import KNeighborsRegressor
from sklearn.svm import SVR
from sklearn.neural_network import MLPRegressor
from sklearn.multioutput import MultiOutputRegressor
from sklearn.dummy import DummyClassifier
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import math

unroll_factors = np.array([1,2,4,8,16,32,64])
alpha = [0.9, 0.1, 0.5]
max_int = 2147483647

def train_model(x, y, z, model):
    scores = []
    errors = []

    for i in range(1000):
        x_train, x_test, y_train, y_test, _, z_test = train_test_split(x, y, z, test_size=0.2)

        scaler = preprocessing.StandardScaler()
        scaler.fit(x_train)
        x_train = scaler.transform(x_train)
        x_test = scaler.transform(x_test)

        if model not in unroll_factors: 
            mor = MultiOutputRegressor(model)
            mor.fit(x_train, y_train)

            y_pred = mor.predict(x_test)
            y_pred = rounder(unroll_factors)(y_pred)
        else:
            y_pred = np.full(y_test.shape, model)

        y_test = y_test.to_numpy()
        z_test = z_test.to_numpy()
        
        score = []
        error = []
        for pred, test, latency_area in zip(y_pred, y_test, z_test):
            for i in range(3):
                if (pred[i] == test[i]):
                    score.append(1)
                    error.append(0)
                else:
                    score.append(0)
                    error.append(abs(math.log(pred[i],2) - math.log(test[i],2)))
                # TODO: remove or use this evaluation
                # base_latency = latency_area[0]
                # base_area = latency_area[1]
                # pred_latency = latency_area[2 * int(math.log(pred[i],2))]
                # pred_area = latency_area[1 + 2 * int(math.log(pred[i],2))]
                # test_latency = latency_area[2 * int(math.log(test[i],2))]
                # test_area = latency_area[1 + 2 * int(math.log(test[i],2))]
                # pred_impact = alpha[i] * (base_latency - pred_latency) / base_latency + (1 - alpha[i]) * (base_area - pred_area) / base_area
                # test_impact = alpha[i] * (base_latency - test_latency) / base_latency + (1 - alpha[i]) * (base_area - test_area) / base_area
                # print(pred_impact, test_impact)
                # score.append(pred_impact / test_impact)
        
        scores.append(score)
        errors.append(error)

    sum0 = 0
    sum1 = 0
    sum2 = 0
    error0 = 0
    error1 = 0
    error2 = 0
    num_zeros = 0
    for score in scores:
        sum0 += score[0]
        sum1 += score[1]
        sum2 += score[2]
    for error in errors:
        if (error[0] == 0):
            num_zeros += 1
        if (error[1] == 0):
            num_zeros += 1
        if (error[2] == 0):
            num_zeros += 1
        error0 += error[0]
        error1 += error[1]
        error2 += error[2]
    
    mean_score = list(map(lambda x: x/len(scores), [sum0, sum1, sum2]))
    mean_error = list(map(lambda x: x/len(errors), [error0, error1, error2]))
    print(mean_score)
    print(mean_error)
    print(num_zeros)

def rounder(values):
    def f(x):
        idx = np.argmin(np.abs(values - x))
        return values[idx]
    return np.frompyfunc(f, 1, 1)

def main():
    data = pd.read_csv("loops_data.csv", delimiter=";")
    data = data[["Loop max trip count", "# Load instructions", "# Store instructions", "# Operands", 
                 "# Floating point operations", "# Operations", "# Branches", "# Memory operations", 
                 "Loop depth", "# Loops inside (first nest level)", "# Loops inside (all nest levels)", 
                 "Is outermost", "Is innermost", "Has loop carried dependencies", 
                 "Best factor for latency", "Best factor for area", "Best factor balanced",
                 "1 Latency", "1 Area", "2 Latency", "2 Area", "4 Latency", "4 Area", 
                 "8 Latency", "8 Area", "16 Latency", "16 Area", "32 Latency", "32 Area", 
                 "64 Latency", "64 Area"]]
    
    data["Trip count known"] = 0
    for index, row in data.iterrows():
        if row["Loop max trip count"] >= max_int:
            data.at[index, "Loop max trip count"] = -1
            data.at[index, "Trip count known"] = 0
        else:
            data.at[index, "Trip count known"] = 1

    x = data.drop(["Best factor for latency", "Best factor for area", "Best factor balanced", 
                   "1 Latency", "1 Area", "2 Latency", "2 Area", "4 Latency", "4 Area", 
                   "8 Latency", "8 Area", "16 Latency", "16 Area", "32 Latency", "32 Area", 
                   "64 Latency", "64 Area"], axis=1)
    y = data[["Best factor for latency", "Best factor for area", "Best factor balanced"]]
    z = data[["1 Latency", "1 Area", "2 Latency", "2 Area", "4 Latency", "4 Area", 
                          "8 Latency", "8 Area", "16 Latency", "16 Area", "32 Latency", "32 Area", 
                          "64 Latency", "64 Area"]]

    # TODO: optimise the hyperparams
    models = [
        # RandomForestRegressor(warm_start=True), 
        # KNeighborsRegressor(n_neighbors=1),
        # SVR(gamma=0.0001, C=1000), 
        # MLPRegressor(max_iter=10000)
    ]
    
    # Models predictions
    for model in models:
        train_model(x, y, z, model)

    # Baselines for always predicting x unroll factor
    for unroll in unroll_factors:
        train_model(x, y, z, unroll)

    #TODO: this is just for after evaluation to predict actual unrolls
    # final_model = RandomForestRegressor()
    # final_model.fit(x, y)
    # y_pred = final_model.predict(x)

    # predicted_LUFs = [round(y) for y in y_pred]

if __name__ == "__main__":
    main()
