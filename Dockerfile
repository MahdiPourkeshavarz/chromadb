# Use the official ChromaDB image
FROM chromadb/chroma:latest

# Set environment variables
# This tells Chroma to listen on all interfaces so Liara can reach it
ENV CHROMA_SERVER_HOST=0.0.0.0
ENV CHROMA_SERVER_PORT=8000

# OPTIONAL: Set up authentication (highly recommended for public servers)
# Remove the # from the next 3 lines if you want a password (token)
ENV CHROMA_SERVER_AUTH_PROVIDER="chromadb.auth.token.TokenAuthServerProvider"
ENV CHROMA_SERVER_AUTH_CREDENTIALS_PROVIDER="chromadb.auth.token.TokenConfigServerAuthCredentialsProvider"
ENV CHROMA_SERVER_AUTH_CREDENTIALS="meitipk"

# Copy your local data into the container's default storage path
# This "bakes" your zip file data into the server
COPY ./data /chroma/chroma

# Expose the port
EXPOSE 8000