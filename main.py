from fastapi import FastAPI, HTTPException, Query

app = FastAPI()


@app.get("/greet/")
async def greet(name: str = Query(...)):
    return {"message": f"Hello, {name}"}
