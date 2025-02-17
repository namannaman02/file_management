# File Management API

This project provides a **File Upload API** built using **Spring Boot** with **PostgreSQL** as the database. The application is containerized using **Podman** and **podman-compose** for ease of setup and deployment.

## **Technologies Used**
- **Backend**: Spring Boot (Java)
- **Database**: PostgreSQL
- **Containerization**: Podman, Podman Compose

## **Running the Application**

### 1. Clone the repository
```bash
git clone https://github.com/namannaman02/file_management.git
cd file-management
```

### 2. Build and Start the Containers
Since we are using **Podman** for containerization, we will use the `podman-compose` tool to manage the containers.

**Build the containers:**
```bash
podman-compose build
```

**Start the containers:**
```bash
podman-compose up
```

This will start the **PostgreSQL database** and **Spring Boot application** in their respective containers. The application will be accessible at `http://localhost:8080`.

## **API Endpoints**

### **Upload a File**
```bash
curl -X POST "http://localhost:8080/files/upload" -F "file=@/path/to/your/file.jpg"
```
- Uploads a file to the server.
- Replace `/path/to/your/file.jpg` with the actual file path.
- Response: Returns the **file metadata** including the `id`, `filename`, `size`, and `createdAt`.

---

### **Get File Metadata**
```bash
curl -X GET "http://localhost:8080/files/{file_id}"
```
- Retrieves the metadata of a specific file by its ID.
- Replace `{file_id}` with the **file ID** from the upload response.

---

### **List All Files**
```bash
curl -X GET "http://localhost:8080/files"
```
- Lists all uploaded files along with their metadata.

---

### **Delete a File**
```bash
curl -X DELETE "http://localhost:8080/files/{file_id}"
```
- Deletes a file by its **file ID**.
- Replace `{file_id}` with the actual file ID you want to delete.

---

## **Database Configuration**
The PostgreSQL database is configured with the following details:
- **Username**: `user`
- **Password**: `password`
- **Database Name**: `filedb`

You can modify these details in the `application.properties` file if needed.

---

## **Podman Configuration**
The project uses **podman-compose** for container orchestration. Ensure you have **Podman** and **podman-compose** installed on your system.

To install **Podman**:
```bash
# On macOS with Homebrew
brew install podman
```

To install **podman-compose**:
```bash
# Using pip
pip install podman-compose
```