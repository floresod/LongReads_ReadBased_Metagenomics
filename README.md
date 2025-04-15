# LongReads_ReadBased_Metagenomics
Snakemake script to run metagenomics analyses on long reads generated with ONT

# Directories 
Include create the directories: 
`envs/` `resources/Data/Fastq/` `resources/Logs/` `resources/Outputs` `results/` `workflow/` `scripts/`

## resources/Data 
Transfer fasq.gz files into `resources/Data/Fastq/`

## resources/Logs
Will contain the logs generated during the workflow in each step/tool. 

## resources/Outputs
Will contain the output of the different tools that are not the main results.

## envs
Should contain the conda environments. 

## results
Will contain the desired results.

## scripts 
Will contain the scripts required to put together all the results. 



