from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from database import SessionLocal, engine, Base
import crud

Base.metadata.create_all(bind=engine)

app = FastAPI()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.get("/users/")
def list_users(db: Session = Depends(get_db)):
    return crud.get_users(db)

@app.post("/users/")
def add_user(name: str, email: str, db: Session = Depends(get_db)):
    return crud.create_user(db, name, email)

@app.get("/tasks/")
def list_tasks(db: Session = Depends(get_db)):
    return crud.get_tasks(db)

@app.post("/tasks/")
def add_task(user_id: int, title: str, description: str, db: Session = Depends(get_db)):
    return crud.create_task(db, user_id, title, description)
