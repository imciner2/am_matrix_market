function [A] = matrixmarket( collection, matrix )
%MATRIXMARKET Download a matrix from the NIST Matrix Market
%   
% Download the matrix 'matrix' from the NIST matrix market collection
% 'collection'. The matrix should be specified as a string 'set/matrix'.
% The first use a matrix will download the compressed file from the NIST
% server, then cache the matrix for future use, so future requests for the
% same matrix will use the local copy instead of downloading a new one.
%
% Example:
%    Download the BCSSTK01 matrix in the set BCSSTRUC1 (BCS Structural
%    Engineering Matrices):
%        A = matrixmarket( 'Hartwell-Boeing', 'bcsstruc1/bcsstk01' );
%

% Created by: Ian McInerney
% Created on: August 17, 2022
% SPDX-License-Identifier: MIT

% Constants
harwellMarketurl = 'https://math.nist.gov/pub/MatrixMarket2/Harwell-Boeing/';

% We will use a directory in the folder we are located in
[path, ~, ~] = fileparts( mfilename( 'fullpath' ) );

matdir = [path, filesep, 'matrices'];

if ~isfolder( matdir )
    mkdir( matdir );
end

if strcmpi(collection, 'Harwell-Boeing') || strcmpi(collection, 'hb')
    
    hbdir = [matdir, filesep, 'hb'];

    if ~isfolder( hbdir )
        mkdir( hbdir );
    end

    parts = regexpi( matrix, '(.*)\/(.*)', 'tokens');

    if length(parts{1}) ~= 2
        error( 'Matrix name must be given in set/matrix format' );
    end

    colname = parts{1}{1};
    matname = parts{1}{2};

    % Various filenames we will need
    matrixVarFile    = [hbdir, filesep, matname, '.mat'];
    matrixCompFile   = [hbdir, filesep, matname, '.mtx.gz'];
    matrixMarketFile = [hbdir, filesep, matname, '.mtx'];

    % Check if we already have downloaded the matrix, and if we have, use
    % that
    if isfile( matrixVarFile )
        load( matrixVarFile, 'A' );
        return;
    end

    % Download the file
    outfile = websave( matrixCompFile, [harwellMarketurl, colname, '/', matname, '.mtx.gz'] );
    gunzip(outfile);
    delete( matrixCompFile );

    % Load and then save the matrix for later use
    A = mmread( matrixMarketFile );
    delete( matrixMarketFile );
    save( matrixVarFile, 'A', '-mat' );
else
    error( 'Collection not implemented' );
end

end

