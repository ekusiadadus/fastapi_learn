from tokenize import String
from fastapi import FastAPI
from fastapi.params import Body
from pydantic import BaseModel

app = FastAPI()

class Post(BaseModel):
  title: str
  content: str
  published: bool = True

# request Get method url: "/"

# https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
@app.get("/") 
async def root():
  return {"message": "Hello World"}

@app.get("/posts")
def get_posts():
  return {"data": "This is your posts"}

@app.post("/createposts")
def create_posts(new_post: Post):
  return {"data": new_post}
# title str, content str