# .gitpod.Dockerfile
FROM continuumio/miniconda3

# Set the working directory
WORKDIR /workspace

# Copy the environment.yml file to the container
COPY environment.yml .

# Install the dependencies
RUN conda env create -f environment.yml

# Activate the environment
RUN echo "source activate morig" > ~/.bashrc