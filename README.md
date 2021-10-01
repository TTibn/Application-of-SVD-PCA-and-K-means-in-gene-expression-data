# Application of SVD, PCA and K-means in gene expression data (10.000) of 20 human samples for predicting gene expression values (Illumina probesets).

This project concerns the study of the known technique SVD  from linear algebra and machine learning algorithms such as principal component analysis (PCA) to reduce noise in arithmetic tables and reduce data dimensions. It also involves machine learning algorithms using Euclidean distance to predict gene expression values.

This work uses gene expression data given in three files. A) The data.txt (tab delimited file) file contains all the gene expressions for 20 human samples, where the genes are per line and the samples per column. For example, the value at table position (2,3) corresponds to the second gene for the third sample.

B) The geneNames.txt file contains all the names of the genes (Illumina probesets) and C) the classes.txt file the categorization of each sample where the first 10 are from cancer tissue and the remaining 10 from healthy people. The data is a subset of truly free data available on the GEO website (https://www.ncbi.nlm.nih.gov/sites/GDSbrowser/).
