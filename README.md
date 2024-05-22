# SRA Data Processing Pipeline

## Overview
This Docker Compose configuration defines a three-step workflow for processing Sequence Read Archive (SRA) data:

- Fetch Data: Downloads SRA data using prefetch
- Convert FASTQ: Converts SRA data to FASTQ format using fasterq-dump
- Generate Quality Reports: Analyzes the FASTQ data with fastqc and combines reports with multiqc

## Requirements
- Docker: https://docs.docker.com/desktop/install/
- Docker Compose: https://docs.docker.com/compose/install/
- SRA Toolkit: Pre-installed in the Docker image built in this workflow
- SRA ID: Replace ${SRA_ID} with the specific SRA accession number you want to process

## Usage
1. Clone repository
2. Change mode to executable
3. Run Docker diamond
4. Run line:
   ```
   chmod -x user.sh
   ```
5. Run user.sh and provide proper SRA_ID
