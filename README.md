# Camera trap datasets

This repository contains the functionality to standardize camera trap data from [Agouti](https://agouti.eu) and the [LifeWatch camera trap research infrastructure (CATREIN)](https://www.lifewatch.be/en/camera-trap-research-infrastructure-catrein) so these can be published on [GBIF](https://www.gbif.org/). For reusable functions, see the [camtraptor](https://github.com/inbo/camtraptor) R package.

## Datasets



## Repo structure

The structure for each dataset in [datasets](datasets) is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/) and the [Checklist recipe](https://github.com/trias-project/checklist-recipe). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── data
│   ├── raw                  : Source data, input for mapping script
│   ├── interim              : Derived data for verification GENERATED
│   └── processed            : Darwin Core output of mapping script GENERATED
│
└── src
    └── dwc_mapping.Rmd      : Darwin Core mapping script
```
