from fastapi import FastAPI

from .routers import auth, post, user, vote

app = FastAPI(title="fastapi")


app.include_router(post.router)
app.include_router(user.router)
app.include_router(auth.router)
app.include_router(vote.router)


# https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
@app.get("/")
async def root():
    return {"message": "Hello World"}
