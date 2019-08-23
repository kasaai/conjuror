# conjuror

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build status](https://travis-ci.org/kasaai/conjuror.svg?branch=master)](https://travis-ci.org/kasaai/conjuror)
<!-- badges: end -->

## Overview

Data simulators are important for advancing insurance research because publicly available  datasets from industry are scarce. The conjuror package and conventions aim to unify the interfaces of data simulation packages and make them more accessible to researchers and practitioners. It provides a set of standardized methods and functions for package authors to implement and use, along with a set of principles for each research discipline developed with input from the community.

## Framework

The main class in conjuror is `incantation`, representing a specification that includes parameters needed to define a simulation run. The conjuror package provides the `scribe()` function as the constructor of incantations, and package authors can call it from a user-facing helper function. The `conjure()` method is an S3 generic, which should be implemented for each incantation class. In other words, a simulation package should provide at least two user-facing functions:

1. A helper function, e.g. `my_simulator()`, that takes user-input parameters and returns an object of class `c("my_simulator", "incantation")`.
2. A `conjure.my_simulator()` method that performs the actual simulation.

It is expected that parameters related to mathematical properties of the simulation be defined in the constructor, while parameters dealing with runtime behavior, such as random seeds and parallelism, be defined in the `conjure()` method.

## Example

See the [simulationmachine](https://github.com/kasaai/simulationmachine) package for a sample implementation of the conjuror interface.

## Installation

You can install the current development version of conjuror from GitHub with

``` r
remotes::install_github("kasaai/conjuror")
```
