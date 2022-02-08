from fastapi import FastAPI
from pydantic import BaseSettings

from . import models
from .database import engine
from .routers import auth, post, user

models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="fastapi")


app.include_router(post.router)
app.include_router(user.router)
app.include_router(auth.router)


# https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
@app.get("/")
async def root():
    return {"message": "Hello World"}
