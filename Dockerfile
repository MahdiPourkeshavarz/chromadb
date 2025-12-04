# Start from the official ChromaDB image (assuming this is the base you are using)
FROM chromadb/chroma:latest

# Set the environment variable to explicitly tell Chroma where to find the data
# We assume the uploaded folder is at the root of the deployment directory.
ENV CHROMA_SERVER_ROOT_PATH /dishdash_vector_db
ENV CHROMA_SERVER_NO_COPY_ON_STARTUP true

# Chroma runs on port 8000 by default, EXPOSE is optional but good practice
EXPOSE 8000

# The default entrypoint for the chromadb image is sufficient
# CMD ["uvicorn", "chroma.server.api:app", "--host", "0.0.0.0", "--port", "8000"]