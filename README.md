# LongReads_ReadBased_Metagenomics
Snakemake script to run metagenomics analyses on long reads generated with ONT

It uses some snakemake biowrappers, therefore the dependency `snakemake-wrapper-utils=0.7.2` must be installed in the snakemake environment.

# Directories 
Include the following directories: 
`envs/` `resources/Data/` `resources/Logs/` `resources/Outputs` `results/` `workflow/` `scripts/`

## resources/Data/ 
Transfer fasq.gz files into `resources/Data/`

## resources/Logs/
Will contain the logs generated during the workflow in each step/tool. 

## resources/Outputs/
Will contain the output of the different tools that are not the main results.

## resources/Databases/ 
The databases required for the workflow. The best strategy is to create symbolic links pointing to the databases available for everyone.

## envs/
Should contain the conda environments. 

## results/
Will contain the desired results.

## scripts/ 
Will contain the scripts required to put together all the results into `results/CombinedResults` in case that this is required.



