# Anymatrix Matrix Market interface

This repository provides an interface to the [NIST Matrix Market](https://math.nist.gov/MatrixMarket/) from [Anymatrix](https://github.com/mmikaitis/anymatrix).


## Installation

This group can be installed in Anymatrix with the name `matrixmarket` by running
```
anymatrix('g', 'matrixmarket', 'imciner2/am_matrix_market');
```

## Usage

### Listing matrices

All the matrices available from the Matrix Market can be obtained by running
```
anymatrix('groups', 'matrixmarket')
```

### Obtaining matrices

To get a matrix from the Matrix Market, you only need to know the unique name for the matrix, such as `bcsstk01`, 'zenios`, etc, then run the command
```
A = anymatrix('matrixmarket/name');
```
substituting the unique name after the slash.
Note that the matrix name must be all lowercase.

## Notes

Matrices are only downloaded when requested, so an internet connection is needed when a matrix is first requested.
After a matrix is downloaded once, it will be cached in a MATLAB `mat` file for any future uses.
