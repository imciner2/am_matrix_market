function [P] = am_properties()

P = {
    %% Harwell-Boeing collection
    % From the ACOUST: Acoustic scattering set
    'young1c', {'complex', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'young2c', {'complex', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'young3c', {'complex', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'young4c', {'complex', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}

    % From the AIRTFC: Air-traffic Control Model set
    'zenios', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}

    % From the ASTROPH: Nonlinear radiative transfer and statistical equilibrium in astrophysics set
    'mcca', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'mcfe', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}

    % From the BCSSTRUC1: BCS Structural Engineering Matrices (eigenvalue matrices) set
    'bcsstk01', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstk02', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstk03', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk04', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk05', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk06', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk07', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk08', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstk09', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk10', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk11', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk12', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk13', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstm01', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm02', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstm03', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm04', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm05', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient', 'diagonally dominant'}
    'bcsstm06', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstm07', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm08', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstm09', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstm10', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm11', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstm12', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstm13', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}

    % From the BCSSTRUC2: BCS Structural Engineering Matrices (linear equations) set
    'bcsstk14', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk15', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk16', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk17', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk18', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}

    % From the BCSSTRUC3: BCS Structural Engineering Matrices (eigenvalue problems) set
    'bcsstk19', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'ill conditioned'}
    'bcsstk20', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bcsstk21', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk22', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk23', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bcsstk24', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse'}
    'bcsstk25', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstm19', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bcsstm20', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bcsstm21', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bcsstm22', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bcsstm23', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bcsstm24', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant', 'ill conditioned'}
    'bcsstm25', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant', 'ill conditioned'}

    % From the BCSSTRUC4: BCS Structural Engineering Matrices (eigenvalue problems and linear equations) set
    'bcsstk26', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bcsstk27', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstk28', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstm26', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstm27', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}

    % From the CIRPHYS: Circuit physics modeling set
    'jpwh_991', {'real', 'fixed size', 'square', 'sparse', 'banded'}

    % From the WATT: Petroleum engineering set
    'watt__1', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'watt__2', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    };
end
