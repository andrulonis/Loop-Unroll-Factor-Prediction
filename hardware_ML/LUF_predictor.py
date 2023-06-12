from sklearn.ensemble import RandomForestRegressor
from sklearn.neighbors import KNeighborsRegressor
from sklearn.svm import SVR
from sklearn.neural_network import MLPRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.linear_model import LinearRegression
from sklearn.multioutput import MultiOutputRegressor
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import math

unroll_factors = np.array([1,2,4,8,16,32,64])
alpha = [0.9, 0.1, 0.5]
max_int = 2147483647

def train_model(x, y, z, model, name):
    scores = []
    errors = []
    impact_errors = []
    
    for i in range(5000):
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
        impact_error = []
        for pred, test, latency_area in zip(y_pred, y_test, z_test):
            for i in range(3):
                if (pred[i] == test[i]):
                    score.append(1)
                    error.append(0)
                else:
                    score.append(0)
                    error.append(abs(math.log(pred[i],2) - math.log(test[i],2)))

                base_latency = latency_area[0]
                base_area = latency_area[1]
                pred_latency = latency_area[2 * int(math.log(pred[i],2))]
                pred_area = latency_area[1 + 2 * int(math.log(pred[i],2))]
                test_latency = latency_area[2 * int(math.log(test[i],2))]
                test_area = latency_area[1 + 2 * int(math.log(test[i],2))]
                pred_impact = alpha[i] * (base_latency - pred_latency) / base_latency + (1 - alpha[i]) * (base_area - pred_area) / base_area
                test_impact = alpha[i] * (base_latency - test_latency) / base_latency + (1 - alpha[i]) * (base_area - test_area) / base_area
                impact_error.append(test_impact - pred_impact)
        
        scores.append(score)
        errors.append(error)
        impact_errors.append(impact_error)

    sum0=sum1=sum2=error0=error1=error2=impact_error0=impact_error1=impact_error2=best_impact0=best_impact1=best_impact2 = 0
    for score in scores:
        sum0 += score[0]
        sum1 += score[1]
        sum2 += score[2]
    for error in errors:
        error0 += error[0]
        error1 += error[1]
        error2 += error[2]
    for impact_error in impact_errors:
        impact_error0 += impact_error[0]
        impact_error1 += impact_error[1]
        impact_error2 += impact_error[2]
    
    mean_score = list(map(lambda x: x/len(scores), [sum0, sum1, sum2]))
    mean_error = list(map(lambda x: x/len(errors), [error0, error1, error2]))
    mean_impact_error = list(map(lambda x: x/len(impact_errors), [impact_error0, impact_error1, impact_error2]))
    print(name)
    print(f"Mean score: {mean_score}")
    print(f"Mean error: {mean_error}")
    print(f"Mean impact error: {mean_impact_error}\n")

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
    
    # Part for correlation matrix, commented out as it had to be done only once
    # corr_matrix = data.drop(["1 Latency", "1 Area", "2 Latency", "2 Area", "4 Latency", "4 Area", 
    #                       "8 Latency", "8 Area", "16 Latency", "16 Area", "32 Latency", "32 Area", 
    #                       "64 Latency", "64 Area"], axis=1).corr()
    # fig, ax = plt.subplots(figsize=(8, 6))
    # heatmap = ax.pcolor(corr_matrix, cmap='coolwarm')
    # ax.set_xticks(np.arange(0.5,18.5, step = 1), ["Loop max trip count", "# Load instructions", "# Store instructions", "# Operands", 
    #              "# Floating point operations", "# Operations", "# Branches", "# Memory operations", 
    #              "Loop depth", "# Loops inside (first nest level)", "# Loops inside (all nest levels)", 
    #              "Is outermost", "Is innermost", "Has loop carried dependencies", "Trip count known",
    #              "Best factor for latency", "Best factor for area", "Best factor balanced"], 
    #              rotation = 45, ha="right", rotation_mode="anchor")
    # ax.set_yticks(np.arange(0.5,18.5, step = 1), ["Loop max trip count", "# Load instructions", "# Store instructions", "# Operands", 
    #              "# Floating point operations", "# Operations", "# Branches", "# Memory operations", 
    #              "Loop depth", "# Loops inside (first nest level)", "# Loops inside (all nest levels)", 
    #              "Is outermost", "Is innermost", "Has loop carried dependencies", "Trip count known",
    #              "Best factor for latency", "Best factor for area", "Best factor balanced"])
    # ax.invert_yaxis()
    # plt.colorbar(heatmap)
    # plt.title('Correlation Matrix', fontsize=16)
    # plt.tight_layout()
    # plt.savefig("Correlation matrix.png")

    models = [
        (LinearRegression(), "Linear"),
        (DecisionTreeRegressor(), "Decision Tree"),
        (RandomForestRegressor(), "Random Forest"),
        (KNeighborsRegressor(n_neighbors=1), "KNN"),
        (SVR(C=1000), "SVM"),
        (MLPRegressor(max_iter=20000, early_stopping=True, random_state=1), "MLP")
    ]
    
    # Models' predictions
    for model in models:
        train_model(x, y, z, model[0], model[1])

    # Baselines for always predicting x unroll factor
    for unroll in unroll_factors:
        train_model(x, y, z, unroll, f"Unroll: {unroll}")

if __name__ == "__main__":
    main()
