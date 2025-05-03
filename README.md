# Database-Final-Project-wk8-Precious-Mumbi
 
  Library Management + Task Manager API Project

📚 Question 1: Library Management Database (MySQL)

This is a relational database for managing books, categories, members, and book loans.

🧾 Features:
- 4 related tables
- Proper use of PK, FK, UNIQUE, NOT NULL
- Sample data inserted

📥 Setup:
1. Open MySQL Workbench.
2. Run the script: library_management.sql.

📊 ERD Screenshot:
https://github.com/PreciousMumbi/Database-Final-Project-wk8-Precious-Mumbi/blob/main/ERD.png

---

🧠 Question 2: Task Manager API (FastAPI + MySQL)

A RESTful API built using FastAPI with full CRUD capabilities for managing tasks.

💻 Features:
- CRUD endpoints for Tasks and Users
- Connected to MySQL database
- Uses SQLAlchemy ORM

🔧 Setup Instructions:
1. Clone the repo.
2. Navigate to question2/
3. Create a virtual environment:

   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   
4. Install dependencies:
   
   pip install -r requirements.txt
   
5. Run the app:
   
   uvicorn main:app --reload
   

🗃️ Database:
Run task_manager.sql to set up the database schema.
