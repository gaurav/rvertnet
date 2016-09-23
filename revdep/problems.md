# Setup

## Platform

|setting  |value                                       |
|:--------|:-------------------------------------------|
|version  |R version 3.3.1 Patched (2016-08-17 r71112) |
|system   |x86_64, darwin13.4.0                        |
|ui       |RStudio (1.0.1)                             |
|language |(EN)                                        |
|collate  |en_US.UTF-8                                 |
|tz       |America/Los_Angeles                         |
|date     |2016-09-23                                  |

## Packages

|package  |*  |version  |date       |source                             |
|:--------|:--|:--------|:----------|:----------------------------------|
|RSQLite  |   |1.0.9011 |2016-09-23 |Github (rstats-db/RSQLite@cfacdec) |
|rvertnet |   |0.5.0    |2016-09-23 |local (ropensci/rvertnet@NA)       |

# Check results
1 packages with problems

## rgeospatialquality (0.3.2)
Maintainer: Javier Otegui <javier.otegui@gmail.com>  
Bug reports: https://github.com/ropenscilabs/rgeospatialquality/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: add_flags works properly guessing names for rvertnet dataset (@test_multiple_records.R#38) 
  2. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#51) 
  3. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#52) 
  4. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#53) 
  5. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#54) 
  6. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#55) 
  7. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#56) 
  8. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#57) 
  9. Failure: add_flags works properly with a 1-row data.frame (@test_multiple_records.R#58) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

