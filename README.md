# SchoolSync – Back-End API for School Management System

## ⚙️ -- Project Overview  
**SchoolSync** is a back-end REST API developed for a fictional school management platform. Built as part of the Back End Development module (Module 4), it handles core operations for managing students, teachers, classes, and subjects — with role-based access and secure authentication.

## 🎯 -- Objectives  
- Build a structured, scalable back-end using Node.js and Express  
- Implement CRUD operations for key school entities  
- Set up secure authentication and role-based access  
- Store and manage data using MongoDB and Mongoose

## 🧰 -- Technologies & Tools  
- **Node.js + Express** – Server and routing  
- **MongoDB + Mongoose** – Database and data modeling  
- **JWT + bcrypt** – Authentication and password security  
- **Postman** – API testing  
- **dotenv** – Environment variable management

## 📂 -- Project Structure  
- `/models/` → Mongoose schemas (Student, Teacher, Class)  
- `/routes/` → API route definitions  
- `/controllers/` → Business logic  
- `/middleware/` → Auth and error handling  
- `server.js` → App entry point  
- `.env` → Config for DB and JWT

## 🔐 -- Authentication & Roles  
- **Users:** Admin, Teacher, Student  
- **Login via JWT** with hashed passwords (bcrypt)  
- Access control via middleware (e.g. only admins can delete users)

## 🚀 -- Key Features  
- Full CRUD for:
  - Students  
  - Teachers  
  - Classes  
  - Subjects  
- Role-based route protection  
- Error handling for invalid routes and missing fields  
- Scalable folder structure for future features

## 🧪 -- API Testing  
Tested using **Postman** with pre-configured collections for:  
- Registration & Login  
- Authenticated requests by role  
- CRUD on all entities

## 📌 -- Notes  
This is a back-end only project. No front-end UI is included.  
To run locally, create a `.env` file with:  
