import time

import psycopg2
from fastapi import FastAPI
from psycopg2.extras import RealDictCursor

from . import models
from .database import engine
from .routers import post, user

models.Base.metadata.create_all(bind=engine)

app = FastAPI()


while True:
    try:
        conn = psycopg2.connect(host="localhost", database="fastapi", user="fastapi", password="fastapi", cursor_factory=RealDictCursor)
        cursor = conn.cursor()
        print("Database connection was succesfull!")
        break
    except Exception as error:
        print("Connecting to database failed")
        print("Error: ", error)
        time.sleep(2)


app.include_router(post.router)
app.include_router(user.router)

# https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
@app.get("/")
async def root():
    return {"message": "Hello World"}
