John Bruce
11/28/2017

The R Markdown notebooks here show how the shRNA screen data from the 
Novartis DRIVE project can be analyzed. The dataset contains read counts 
for 398 cancer cell lines screened for 7837 genes with an average of 20 
shRNAs per gene. The publication about this project (McDonald et al, 2017) 
is available at http://www.cell.com/cell/pdf/S0092-8674(17)30812-7.pdf. DRIVE 
raw data is available at https://data.mendeley.com/datasets/y3ds55n88r/4 .

The notebook RSA/src/R/preprocessing.Rmd (and its html version, 
preprocessing.html) shows how the raw data (which are downloaded from an S3 
bucket and placed in the RSA/data folder) are processed to produce 
RSA/data/countdata.rds. This output file has rows corresponding to shRNA 
sequences and gene symbols, and columns corresponding to cell lines. The 
values are normalized log2 Fold-Change relative to the plasmid control. 
This file is then used as an input for analysis using the RSA, ATARIS and 
DEMETER algorithms.  The ATARIS and DEMETER analysis notebooks are kept in 
their respective directories, while the RSA notebook is in the currect 
directory.

The notebook RSA/src/R/RSA.Rmd (and RSA.html) describe the processing of the 
RSA/data/countdata.rds, to perform the RSA algorithm analysis. The output file 
that results, all.rsa.out, is written into the RSA/data directory. This file 
is available at 
https://s3.amazonaws.com/ps-informatics/bioinformatics/data/Project_DRIVE/RSA_output/all.out .

Other files in this directory are child documents of the main notebook file.
