# Use the official ChromaDB image
FROM chromadb/chroma:latest

# Set environment variables
# This tells Chroma to listen on all interfaces so Liara can reach it
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV CHROMA_SERVER_PORT=8000


# Copy your local data into the container's default storage path
# This "bakes" your zip file data into the server
COPY ./data /chroma/chroma

# Expose the port
EXPOSE 8000