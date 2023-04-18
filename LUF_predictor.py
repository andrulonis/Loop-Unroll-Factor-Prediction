from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error
from sklearn.model_selection import train_test_split
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

    num_training_sessions = 1#0#00
    scores = []
    errors = []

    for i in range(num_training_sessions):
        x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2)

        randomForest = RandomForestRegressor()
        randomForest.fit(x_train, y_train)

        y_pred = randomForest.predict(x_test)
        score = randomForest.score(x_test, y_test)
        error = mean_absolute_error(y_test, y_pred)

        scores.append(score)
        errors.append(error)

    mean_score = sum(scores) / len(scores)
    mean_error = sum(errors) / len(errors)



    #TODO: this is just for after evaluation to predict actual unrolls
    final_model = RandomForestRegressor()
    final_model.fit(x, y)
    y_pred = final_model.predict(x)

    predicted_LUFs = [round(y) for y in y_pred]

if __name__ == "__main__":
    main()
