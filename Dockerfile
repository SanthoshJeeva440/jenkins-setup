FROM jenkins/jenkins:lts

# Skip the setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Create default admin user (change username/password as needed)
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

EXPOSE 8080
