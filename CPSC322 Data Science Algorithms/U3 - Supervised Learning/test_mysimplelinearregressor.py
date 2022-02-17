from statistics import LinearRegression
import numpy as np
from mysimplelinearregressor import MySimpleLinearRegressor
from sklearn.linear_model import LinearRegression

def test_mysimplelinearregressor_fit():
    np.random.seed(0)
    X_train = [[val] for val in range(100)]
    y_train = [row[0] * 2 + np.random.normal(0,25) for row in X_train] # 1D

    X_test = [[150]] # 2D

    lin_reg = MySimpleLinearRegressor()
    lin_reg.fit(X_train, y_train)
    y_predicted = lin_reg.predict(X_test)
    print(y_predicted)

    # assert that the computed slope and intercept (e.g. the model) is correct
    # start by checking against a desk calculation
    slope_solution = 1.924917458430444
    intercept_solution = 5.211786196055144
    assert np.isclose(lin_reg.slope, slope_solution)
    assert np.isclose(lin_reg.intercept, intercept_solution)

    sklearn_lin_reg = LinearRegression()
    sklearn_lin_reg.fit(X_train, y_train)
    
    assert np.isclose(lin_reg.slope, sklearn_lin_reg.coef_[0])
    assert np.isclose(lin_reg.intercept, sklearn_lin_reg.incercept_)

def test_mysimplelinearregressor_predict():
    np.random.seed(0)
    X_train = [[val] for val in range(100)]
    y_train = [row[0] * 2 + np.random.normal(0,25) for row in X_train] # 1D

    X_test = [[150]] # 2D

    lin_reg = MySimpleLinearRegressor()
    lin_reg.fit(X_train, y_train)
    y_predicted = lin_reg.predict(X_test)
    y_predicted_solution = [[293.94940496062173]]
    assert np.allclose(lin_reg.predict(), y_predicted_solution)

    sklearn_lin_reg = LinearRegression()
    sklearn_lin_reg.fit(X_train, y_train)
    
    assert np.allclose(lin_reg.predict(), sklearn_lin_reg.predict())


    # TODO: We should add more test cases so that we can be really ROBUST
    # The data will be provided in PA4, I just have to do the assert statements correctly
    # TDD: Write the unit tests before you write the units themselves
    # by unit --> function
    # by writing the unit tests first, you have a good idea about how the units should be implemented