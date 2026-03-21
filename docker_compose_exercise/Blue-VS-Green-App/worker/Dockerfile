FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS builder

# Create a working directory
WORKDIR /Worker

# Copy the .csproj file and restore
COPY Worker.csproj .
RUN dotnet restore

# Copy source files to the image
COPY . .

# Build the project
RUN dotnet publish -c Release -o /out

# Specify app image
FROM mcr.microsoft.com/dotnet/core/runtime:3.1

# Specify working directory for this stage
WORKDIR /Worker

# Copy the /out directory from the build stage into the runtime image
COPY --from=builder /out .

# Tell Docker what command to run when our image is executed inside a container
ENTRYPOINT ["dotnet", "Worker.dll"]