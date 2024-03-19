#!/bin/sh
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=8G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


mkdir -p /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/fastqc_beforetrim_output/VCaP_IgG_R1881_rep1_R2


/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/fastqc/0.11.9/fastqc --outdir /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/fastqc_beforetrim_output/VCaP_IgG_R1881_rep1_R2 --format fastq /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/raw/cnr_batch2/raw_fastq/NS.LH00487_0035.001.UDI0020_i7---UDI0020_i5.SB-FK-UL_VCAP_CnR_IgG_R1881_10nM_30min_R1_R2.fastq.gz
