from sqlalchemy.orm import Session
from models import User, Task

def get_users(db: Session):
    return db.query(User).all()

def create_user(db: Session, name: str, email: str):
    user = User(name=name, email=email)
    db.add(user)
    db.commit()
    db.refresh(user)
    return user

def get_tasks(db: Session):
    return db.query(Task).all()

def create_task(db: Session, user_id: int, title: str, description: str):
    task = Task(user_id=user_id, title=title, description=description)
    db.add(task)
    db.commit()
    db.refresh(task)
    return task

