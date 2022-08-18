function [A] = anymatrix_matrixmarket( matrix )
%ANYMATRIX_MATRIXMARKET Download a matrix from the NIST Matrix Market
%   
% Download the matrix 'matrix' from the NIST matrix market. The matrix
% should be specified as a string 'set/matrix'. The first use a matrix will
% download the compressed file from the NIST server, then cache the matrix
% for future use, so future requests for the same matrix will use the local
% copy instead of downloading a new one.
%
% Example:
%    Download the BCSSTK01 matrix in the set BCSSTRUC1 (BCS Structural
%    Engineering Matrices):
%        A = anymatrix_matrixmarket( 'bcsstruc1/bcsstk01' );
%

% Created by: Ian McInerney
% Created on: August 17, 2022
% SPDX-License-Identifier: MIT

% This function is also called when querying the properties
if strcmpi( matrix, 'am_properties' )
    handle = str2func(matrix);
    A = handle();
    return
end

% Get information about every matrix in the matrix market collection
mmMats = mmMatrices();

% We will use a directory in the folder we are located in
[path, ~, ~] = fileparts( mfilename( 'fullpath' ) );

rootMatdir = [path, filesep, 'matrices'];

if ~isfolder( rootMatdir )
    mkdir( rootMatdir );
end

% We operate on lower-case matrix names for all the files/lookups
matrix = lower( matrix );

% Make sure the matrix is actually a matrix market matrxix
if ~isKey(mmMats, matrix)
    errmsg = strcat( matrix, ' is not a valid Matrix Market matrix' );
    error( errmsg );
end

matInfo = mmMats(matrix);
matrixDir = [rootMatdir, filesep, matInfo{2}];
matrixURL = [matInfo{1}, '.mtx.gz'];

if ~isfolder( matrixDir )
    mkdir( matrixDir );
end

% Various filenames we will need
matrixVarFile    = [matrixDir, filesep, matrix, '.mat'];
matrixCompFile   = [matrixDir, filesep, matrix, '.mtx.gz'];
matrixMarketFile = [matrixDir, filesep, matrix, '.mtx'];

% Check if we already have downloaded the matrix, and if we have, use that
if isfile( matrixVarFile )
    load( matrixVarFile, 'A' );
    return;
end

% Download the file
outfile = websave( matrixCompFile, matrixURL );
gunzip(outfile);
delete( matrixCompFile );

% Load and then save the matrix for later use
A = mmread( matrixMarketFile );
delete( matrixMarketFile );
save( matrixVarFile, 'A', '-mat' );

end

