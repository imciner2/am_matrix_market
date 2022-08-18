function mats = mmMatrices()
%MMMATRICES Get a map of all matrices in the Matrix Market
%
% Returns a map containing the URL and the local cache directory
% for all matrices in the NIST Matrix Market. The key in the map is
% the lowercase name of the matrix (no set included). The value is
% a cell array where the first element is the URL (no file extension)
% and the second element is the local cache directory to store the
% matrix in.
%

% Created by: Ian McInerney
% Created on: August 18, 2022
% SPDX-License-Identifier: MIT

% Constants
harwellMarketurl = 'https://math.nist.gov/pub/MatrixMarket2/Harwell-Boeing/';

% Create a large map containing all the information about how to get the matrices
mats = containers.Map();

%% Harwell-Boeing collection
% From the AIRTFC: Air-traffic Control Model set
mats('zenios') = {[harwellMarketurl, 'airtfc/zenios'], 'hb'};

% From the ASTROPH: Nonlinear radiative transfer and statistical equilibrium in astrophysics set
mats('mcca') = {[harwellMarketurl, 'astroph/mcca'], 'hb'};
mats('mcfe') = {[harwellMarketurl, 'astroph/mcfe'], 'hb'};

% From the BCSSTRUC1: BCS Structural Engineering Matrices (eigenvalue matrices) set
mats('bcsstk01') = {[harwellMarketurl, 'bcsstruc1/bcsstk01'], 'hb'};
mats('bcsstk02') = {[harwellMarketurl, 'bcsstruc1/bcsstk02'], 'hb'};
mats('bcsstk03') = {[harwellMarketurl, 'bcsstruc1/bcsstk03'], 'hb'};
mats('bcsstk04') = {[harwellMarketurl, 'bcsstruc1/bcsstk04'], 'hb'};
mats('bcsstk05') = {[harwellMarketurl, 'bcsstruc1/bcsstk05'], 'hb'};
mats('bcsstk06') = {[harwellMarketurl, 'bcsstruc1/bcsstk06'], 'hb'};
mats('bcsstk07') = {[harwellMarketurl, 'bcsstruc1/bcsstk07'], 'hb'};
mats('bcsstk08') = {[harwellMarketurl, 'bcsstruc1/bcsstk08'], 'hb'};
mats('bcsstk09') = {[harwellMarketurl, 'bcsstruc1/bcsstk09'], 'hb'};
mats('bcsstk10') = {[harwellMarketurl, 'bcsstruc1/bcsstk10'], 'hb'};
mats('bcsstk11') = {[harwellMarketurl, 'bcsstruc1/bcsstk11'], 'hb'};
mats('bcsstk12') = {[harwellMarketurl, 'bcsstruc1/bcsstk12'], 'hb'};
mats('bcsstk13') = {[harwellMarketurl, 'bcsstruc1/bcsstk13'], 'hb'};
mats('bcsstm01') = {[harwellMarketurl, 'bcsstruc1/bcsstm01'], 'hb'};
mats('bcsstm02') = {[harwellMarketurl, 'bcsstruc1/bcsstm02'], 'hb'};
mats('bcsstm03') = {[harwellMarketurl, 'bcsstruc1/bcsstm03'], 'hb'};
mats('bcsstm04') = {[harwellMarketurl, 'bcsstruc1/bcsstm04'], 'hb'};
mats('bcsstm05') = {[harwellMarketurl, 'bcsstruc1/bcsstm05'], 'hb'};
mats('bcsstm06') = {[harwellMarketurl, 'bcsstruc1/bcsstm06'], 'hb'};
mats('bcsstm07') = {[harwellMarketurl, 'bcsstruc1/bcsstm07'], 'hb'};
mats('bcsstm08') = {[harwellMarketurl, 'bcsstruc1/bcsstm08'], 'hb'};
mats('bcsstm09') = {[harwellMarketurl, 'bcsstruc1/bcsstm09'], 'hb'};
mats('bcsstm10') = {[harwellMarketurl, 'bcsstruc1/bcsstm10'], 'hb'};
mats('bcsstm11') = {[harwellMarketurl, 'bcsstruc1/bcsstm11'], 'hb'};
mats('bcsstm12') = {[harwellMarketurl, 'bcsstruc1/bcsstm12'], 'hb'};
mats('bcsstm13') = {[harwellMarketurl, 'bcsstruc1/bcsstm13'], 'hb'};

% From the BCSSTRUC2: BCS Structural Engineering Matrices (linear equations) set
mats('bcsstk14') = {[harwellMarketurl, 'bccstruc2/bcsstk14'], 'hb'};
mats('bcsstk15') = {[harwellMarketurl, 'bccstruc2/bcsstk15'], 'hb'};
mats('bcsstk16') = {[harwellMarketurl, 'bccstruc2/bcsstk16'], 'hb'};
mats('bcsstk17') = {[harwellMarketurl, 'bccstruc2/bcsstk17'], 'hb'};
mats('bcsstk18') = {[harwellMarketurl, 'bccstruc2/bcsstk18'], 'hb'};

% From the BCSSTRUC3: BCS Structural Engineering Matrices (eigenvalue problems) set
mats('bcsstk19') = {[harwellMarketurl, 'bccstruc3/bcsstk19'], 'hb'};
mats('bcsstk20') = {[harwellMarketurl, 'bccstruc3/bcsstk20'], 'hb'};
mats('bcsstk21') = {[harwellMarketurl, 'bccstruc3/bcsstk21'], 'hb'};
mats('bcsstk22') = {[harwellMarketurl, 'bccstruc3/bcsstk22'], 'hb'};
mats('bcsstk23') = {[harwellMarketurl, 'bccstruc3/bcsstk23'], 'hb'};
mats('bcsstk24') = {[harwellMarketurl, 'bccstruc3/bcsstk24'], 'hb'};
mats('bcsstk25') = {[harwellMarketurl, 'bccstruc3/bcsstk25'], 'hb'};
mats('bcsstm19') = {[harwellMarketurl, 'bccstruc3/bcsstm19'], 'hb'};
mats('bcsstm20') = {[harwellMarketurl, 'bccstruc3/bcsstm20'], 'hb'};
mats('bcsstm21') = {[harwellMarketurl, 'bccstruc3/bcsstm21'], 'hb'};
mats('bcsstm22') = {[harwellMarketurl, 'bccstruc3/bcsstm22'], 'hb'};
mats('bcsstm23') = {[harwellMarketurl, 'bccstruc3/bcsstm23'], 'hb'};
mats('bcsstm24') = {[harwellMarketurl, 'bccstruc3/bcsstm24'], 'hb'};
mats('bcsstm25') = {[harwellMarketurl, 'bccstruc3/bcsstm25'], 'hb'};

% From the BCSSTRUC4: BCS Structural Engineering Matrices (eigenvalue problems and linear equations) set
mats('bcsstk26') = {[harwellMarketurl, 'bccstruc4/bcsstk26'], 'hb'};
mats('bcsstk27') = {[harwellMarketurl, 'bccstruc4/bcsstk27'], 'hb'};
mats('bcsstk28') = {[harwellMarketurl, 'bccstruc4/bcsstk28'], 'hb'};
mats('bcsstm26') = {[harwellMarketurl, 'bccstruc4/bcsstm26'], 'hb'};
mats('bcsstm27') = {[harwellMarketurl, 'bccstruc4/bcsstm27'], 'hb'};

% From the CIRPHYS: Circuit physics modeling set
mats('jpwh_991') = {[harwellMarketurl, 'cirphys/jpwh_991'], 'hb'};

% From the WATT: Petroleum engineering set
mats('watt__1') = {[harwellMarketurl, 'watt/watt__1'], 'hb'};
mats('watt__2') = {[harwellMarketurl, 'watt/watt__2'], 'hb'};

end
