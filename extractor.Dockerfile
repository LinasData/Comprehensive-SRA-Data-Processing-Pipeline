# Use the ncbi/sra-tools image as the base image
FROM ncbi/sra-tools:3.1.0

# Set the HOME environment variable
ENV HOME=/home/user

# Create the .ncbi directory in the home directory
RUN mkdir -p $HOME/.ncbi

# Copy user-settings.mkfg to the .ncbi directory
RUN cp /root/.ncbi/user-settings.mkfg $HOME/.ncbi/

# Configure vdb-config
RUN vdb-config -o n NCBI_SETTINGS && \
  echo 'NCBI_SETTINGS = "/home/user/.ncbi/user-settings.mkfg"' >> $HOME/.ncbi/user-settings.mkfg

# Set the working directory to /output
WORKDIR /output
