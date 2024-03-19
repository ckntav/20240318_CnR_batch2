#!/bin/sh
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=32G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


mkdir -p /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_AR_R1881_rep1


/cvmfs/soft.computecanada.ca/easybuild/software/2020/avx2/Core/bowtie2/2.5.1/bin/bowtie2 -1 /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/raw/cnr_batch2/fastp_output/VCaP_AR_R1881_rep1_1.fastq.gz -2 /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/raw/cnr_batch2/fastp_output/VCaP_AR_R1881_rep1_2.fastq.gz -x /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/input/bowtie2_genome_index_homo_sapiens/Homo_sapiens.GRCh38 --local --very-sensitive-local --no-mixed --no-discordant --phred33 -I 10 -X 700 --threads 8 2> /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_AR_R1881_rep1/VCaP_AR_R1881_rep1.bowtie2.log | /cvmfs/soft.computecanada.ca/easybuild/software/2020/avx2/Core/samtools/1.17/bin/samtools view -bS > /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_AR_R1881_rep1/VCaP_AR_R1881_rep1.bam
