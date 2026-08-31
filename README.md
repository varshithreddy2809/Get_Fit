# Gym Membership System

A Jakarta EE 10 web application for managing gym memberships, workouts, and fitness planning.

## Technology Stack
- **Java 21** with Jakarta Servlet API 6.1.0
- **Apache Tomcat 11**
- **JSP** for frontend
- **MySQL** for database

## Local Setup

### Prerequisites
- Java 21+
- Maven 3.9+
- MySQL Server (for database)

### Build & Run Locally
```bash
# Build the project
mvn clean package

# Deploy to local Tomcat or run with embedded server
```

## Deployment

### Deploy to Render (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **Create Render Account**
   - Go to https://render.com
   - Sign up with GitHub

3. **Create Web Service**
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Build command: `mvn clean package`
   - Start command: Leave empty (Docker handles it)
   - Select "Docker" as runtime
   - Click "Create Web Service"

4. **Configure Environment**
   - In Render dashboard, add environment variables:
     - `DB_HOST` - Your database host
     - `DB_USER` - Database username
     - `DB_PASSWORD` - Database password
   - Update [GymDBConnection.java](src/main/java/com/gym/utility/GymDBConnection.java) to use these variables

### Deploy to Railway

1. **Push to GitHub** (same as above)

2. **Go to https://railway.app**
   - Click "Create" → "New Project"
   - Select "Deploy from GitHub"
   - Choose your repository
   - Railway auto-detects Java and deploys

### Deploy to Heroku Alternative (Fly.io)
Similar process - connect GitHub and auto-deploy.

## Project Structure
```
Gym_Membership/
├── src/main/java/          # Java source code
│   └── com/gym/
│       ├── controller/     # Servlet controllers
│       ├── dao/           # Database access
│       ├── model/         # Data models
│       ├── service/       # Business logic
│       └── utility/       # Database connection
├── src/main/webapp/        # JSP pages and web resources
├── Dockerfile             # Docker configuration for cloud deployment
├── .dockerignore          # Files to exclude from Docker
├── .gitignore            # Files to exclude from Git
├── .classpath            # Eclipse classpath
├── .project              # Eclipse project
└── build/                # Compiled output

## Key Files
- **GymDBConnection.java** - Configure database connection here
- **LoginController.java** - Login logic
- **WorkoutController.java** - Workout management
- **BMICalculator.java** - BMI calculation service

## Database Setup
Ensure your MySQL database is running with required tables. Update credentials in:
`src/main/java/com/gym/utility/GymDBConnection.java`

## Troubleshooting

### Build fails
- Ensure Java 21 is installed: `java -version`
- Clear Maven cache: `mvn clean`

### Database connection error
- Verify MySQL is running
- Check credentials in GymDBConnection.java
- Ensure database exists

### Port 8080 already in use
- Change port in Tomcat configuration
- Or stop other services on that port

## License
This project is for educational purposes.
