# A fork of SBRG/iModulonMiner, updated and designed for analysis of *Zymomonas mobilis*, publication to be submitted soon

This repository presents a computational workflow to compute and characterize all iModulons for a selected organism. This occurs in five steps:
1. Gather all publicly available RNA-seq data for the organism ([Step 1](1_download_metadata))
2. Process the RNA-seq data ([Step 2](2_process_data))
3. Inspect data to identify high-quality datasets ([Step 3](3_quality_control))
4. Compute iModulons ([Step 4](4_optICA))
5. Characterize iModulons using [PyModulon](https://github.com/SBRG/pymodulon) ([Step 5](5_characterize_iModulons))

## Background
**iModulons** are **i**ndependently-**modul**ated group of genes that are computed through Independent Component Analysis (ICA) of a gene expression dataset. To learn more about iModulons or explore published iModulons, visit [iModulonDB](https://imodulondb.org) or see our publications for [*Escherichia coli*](https://www.nature.com/articles/s41467-019-13483-w), [*Staphylococcus aureus*](https://www.pnas.org/content/117/29/17228), or [*Bacillus subtilis*](https://www.nature.com/articles/s41467-020-20153-9).

Here, we introduce the concept of the **Modulome** for an organism, which is the set of all iModulons that can be computed for the organism based on publicly available RNA-seq data. The computational pipeline provides a step-by-step workflow to compute the Modulome for *Bacillus subtilis*.

## Setup

### Docker
This repository is forked from https://github.com/SBRG/iModulonMiner, which has semi-functional Docker functionality. I made this pipeline to be run on a remote server that was not compatible with Docker, so I have not modified the Docker files. I'm unsure if this functionality works, but I have left it in case it is needed:

To begin, install [Docker](https://docs.docker.com/get-docker/) and [Nextflow](https://www.nextflow.io/).

### Local installation
You can also run each program locally, with all requirements listed in the conda `environment.yml` file.

## Cite

Please cite the following pre-print: [Mining all publicly available expression data to compute dynamic microbial transcriptional regulatory networks](https://www.biorxiv.org/content/10.1101/2021.07.01.450581v1)
