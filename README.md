# Camera trap datasets

This repository contains the functionality to standardize camera trap data from [Agouti](https://agouti.eu) and the [LifeWatch camera trap research infrastructure](https://www.lifewatch.be/bio-logging-and-camera-trapping-services), so these can be published on [GBIF](https://www.gbif.org/). For reusable functions, see the [camtrapdp](https://inbo.github.io/camtrapdp) R package.

## Datasets

Title | IPT | GBIF
--- | --- | ---
GMU8_LEUVEN - Camera trap observations in region Hallerbos - Hoegaarden, Belgium | |
MUNTJAC_ANTWERP - Camera trap observations of Chinese muntjac in forested areas near Antwerp (Belgium) | [muntjac_antwerp](https://ipt.inbo.be/resource?r=muntjac_antwerp) | [DOI](https://doi.org/10.15468/pequ4z)
MICA - Muskrat and coypu camera trap observations in Belgium, the Netherlands and Germany | [mica-agouti](https://ipt.inbo.be/resource?r=mica-agouti) | [DOI](https://doi.org/10.15468/5tb6ze)

## Repo structure

The structure for each dataset in [datasets](datasets) is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/) and the [Checklist recipe](https://github.com/trias-project/checklist-recipe). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── data
│   ├── raw                      : Source data, input for script
│   └── processed                : Camtrap DP output of script GENERATED
│
└── src
    └── data_preparation.Rmd     : Data cleaning and preparation script
```
