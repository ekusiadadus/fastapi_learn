from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from .routers import auth, post, user, vote

app = FastAPI(title="fastapi")

origins = ["*"]
app.add_middleware(CORSMiddleware, allow_origins=origins, allow_credentials=True, allow_methods=["*"], allow_headers=["*"])

app.include_router(post.router)
app.include_router(user.router)
app.include_router(auth.router)
app.include_router(vote.router)


# https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
@app.get("/")
async def root():
    return {"message": "Hello World"}
