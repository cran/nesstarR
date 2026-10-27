## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----libs---------------------------------------------------------------------
library(nesstarR)

## ----parse--------------------------------------------------------------------
path <- system.file("extdata", "example.Nesstar", package = "nesstarR")
x <- nesstar_parse(path)
x

## ----datasets-----------------------------------------------------------------
nesstar_datasets(x)

## ----variables----------------------------------------------------------------
nesstar_variables(x, dataset_number = 1)

## ----read---------------------------------------------------------------------
nesstar_read_dataset(x, dataset_number = 1)

## ----read-columns-------------------------------------------------------------
nesstar_read_dataset(x, dataset_number = 1, columns = c("AGE", "NAME"))

## ----metadata-----------------------------------------------------------------
meta <- nesstar_metadata(x)
meta$datasets[[1]]$variables[[1]]

## ----export-------------------------------------------------------------------
out <- nesstar_export(x, output_dir = tempdir())
basename(out)
read.csv(out[1])

