from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

def main():
    uvicorn.run("fuel_smart:app", host="0.0.0.0", port=8000, reload=True)
