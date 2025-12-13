# tests/test_app.py
from src.model_predict import predict


def test_prediction():
    result = predict([8.3252, 41.0, 6.9841, 1.0238, 322.0, 2.5556, 37.88, -122.23])
    assert isinstance(result, (int, float))
    assert 0.0 <= result <= 5.0
