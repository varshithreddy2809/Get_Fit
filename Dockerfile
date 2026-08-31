# Multi-stage build: Build stage
FROM maven:3.9-eclipse-temurin-21 AS builder

WORKDIR /app

# Copy the entire project
COPY . .

# Build the WAR file
RUN mvn clean package -DskipTests

# Runtime stage: Use Tomcat with Java 21
FROM tomcat:11-jdk21-temurin

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy built WAR file as ROOT so it deploys at root context
COPY --from=builder /app/target/Gym_Membership.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Health check configuration
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:8080/health || exit 1

# Start Tomcat
CMD ["catalina.sh", "run"]
