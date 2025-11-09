# 🚀 Learn Spring Web Apps

A comprehensive Spring Boot learning project demonstrating the fundamentals of building web applications with Spring MVC, JSP views, and form validation.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Running the Application](#running-the-application)
- [Application Modules](#application-modules)
- [Configuration](#configuration)
- [Learning Resources](#learning-resources)

## 🎯 Overview

This project serves as a hands-on learning repository for understanding Spring Boot web application development. It includes practical implementations of common web application patterns including authentication, CRUD operations, and form handling with validation.

## ✨ Features

- **Authentication System**: Simple username/password authentication
- **Todo Management**: Complete CRUD operations for managing todo items
- **JSP Views**: Server-side rendering with JSP and JSTL
- **Form Validation**: Bean validation with Spring Validation
- **Bootstrap UI**: Responsive UI with Bootstrap 5
- **MVC Architecture**: Clean separation of concerns with Spring MVC

## 🛠️ Technologies Used

- **Java**: 25
- **Spring Boot**: 3.5.7
- **Spring MVC**: Web layer framework
- **JSP & JSTL**: View templates
- **Bootstrap**: 5.1.3
- **jQuery**: 3.6.0
- **Maven**: Build tool
- **Lombok**: Boilerplate code reduction
- **Tomcat**: Embedded servlet container

## 📁 Project Structure

```
learn-spring-webapps/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/productivity/springboot/myfirstwebapp/
│   │   │       ├── MyfirstwebappApplication.java
│   │   │       ├── hello/
│   │   │       │   └── SayHelloController.java
│   │   │       ├── login/
│   │   │       │   ├── AuthenticationService.java
│   │   │       │   └── loginController.java
│   │   │       └── todo/
│   │   │           ├── Todo.java
│   │   │           ├── TodoController.java
│   │   │           └── TodoService.java
│   │   └── resources/
│   │       ├── META-INF/resources/WEB-INF/jsp/
│   │       │   ├── addTodo.jsp
│   │       │   ├── listTodos.jsp
│   │       │   ├── loginJsp.jsp
│   │       │   └── sayHello.jsp
│   │       └── application.properties
│   └── test/
├── pom.xml
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- Java JDK 25 or compatible version
- Maven 3.6+ (or use included Maven Wrapper)
- Your favorite IDE (IntelliJ IDEA, Eclipse, VS Code)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/glitches-coder/learn-spring-webapps.git
   cd learn-spring-webapps
   ```

2. **Build the project**
   ```bash
   ./mvnw clean install
   ```
   
   On Windows:
   ```bash
   mvnw.cmd clean install
   ```

## 🏃 Running the Application

### Using Maven

```bash
./mvnw spring-boot:run
```

### Using Java

```bash
./mvnw clean package
java -jar target/myfirstwebapp-0.0.1-SNAPSHOT.jar
```

### Access the Application

Once the application starts, access it at:
```
http://localhost:8080
```

## 📦 Application Modules

### 1. Hello Module
- **Controller**: `SayHelloController`
- **View**: `sayHello.jsp`
- **Purpose**: Basic "Hello World" example demonstrating Spring MVC request mapping

### 2. Login Module
- **Controller**: `loginController`
- **Service**: `AuthenticationService`
- **View**: `loginJsp.jsp`
- **Purpose**: Demonstrates form-based authentication and session management

### 3. Todo Module
- **Entity**: `Todo.java`
- **Controller**: `TodoController`
- **Service**: `TodoService`
- **Views**: 
  - `listTodos.jsp` - Display all todos
  - `addTodo.jsp` - Add/edit todo form
- **Purpose**: Full CRUD operations with form validation

## ⚙️ Configuration

### Application Properties

The application is configured via `application.properties`:

```properties
spring.application.name=myfirstwebapp
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp
logging.level.org.springframework=info
```

### Key Dependencies

- **spring-boot-starter-web**: Core web functionality
- **spring-boot-starter-validation**: Bean validation support
- **tomcat-embed-jasper**: JSP compilation
- **jstl**: JSP Standard Tag Library
- **bootstrap & jquery**: Frontend libraries via WebJars

## 📚 Learning Resources

This project covers the following Spring Boot concepts:

1. **Spring MVC Fundamentals**
   - Request mapping and controller methods
   - Model and view resolution
   - Form handling and data binding

2. **JSP and JSTL**
   - Server-side rendering
   - JSTL core tags and formatting
   - Expression Language (EL)

3. **Validation**
   - Bean Validation annotations
   - Custom validation messages
   - Form error handling

4. **Service Layer**
   - Business logic separation
   - Service components
   - Dependency injection

5. **Project Structure**
   - Maven project organization
   - Spring Boot conventions
   - Resource management

## 🤝 Contributing

This is a learning project, but suggestions and improvements are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -m 'Add some improvement'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

## 📄 License

This project is open source and available for educational purposes.

## 👤 Author

**Aditya Mohapatra** ([@glitches-coder](https://github.com/glitches-coder))

---

**Happy Learning! 🎓**

For questions or discussions about this project, feel free to open an issue or reach out through GitHub.
