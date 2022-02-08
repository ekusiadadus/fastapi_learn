from app import schemas
from app.main import app
from fastapi.testclient import TestClient

client = TestClient(app)


def test_root():
    res = client.get("/")
    print(res.json().get("message"))
    assert res.json().get("message") == "Hello World"
    assert res.status_code == 200


def test_create_user(client):
    res = client.post("/users/", json={"email": "test1@gmail.com", "password": "password"})

    new_user = schemas.UserOut(**res.json())
    assert new_user.email == "test1@gmail.com"
    assert res.status_code == 201
