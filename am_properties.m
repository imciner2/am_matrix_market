function [P] = am_properties()

P = {
    %% Harwell-Boeing collection
    % From the AIRTFC: Air-traffic Control Model set
    'airtfc/zenios', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}

    % From the ASTROPH: Nonlinear radiative transfer and statistical equilibrium in astrophysics set
    'astroph/mcca', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'astroph/mcfe', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}

    % From the BCSSTRUC1: BCS Structural Engineering Matrices (eigenvalue matrices) set
    'bcsstruc1/bcsstk01', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstruc1/bcsstk02', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstruc1/bcsstk03', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk04', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk05', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk06', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk07', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk08', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstruc1/bcsstk09', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk10', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk11', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk12', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstk13', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse'}
    'bcsstruc1/bcsstm01', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm02', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bcsstruc1/bcsstm03', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm04', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm05', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient', 'diagonally dominant'}
    'bcsstruc1/bcsstm06', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstruc1/bcsstm07', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm08', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstruc1/bcsstm09', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstruc1/bcsstm10', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm11', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bcsstruc1/bcsstm12', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}
    'bcsstruc1/bcsstm13', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'rank deficient'}

    % From the BCSSTRUC2: BCS Structural Engineering Matrices (linear equations) set
    'bccstruc2/bcsstk14', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc2/bcsstk15', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc2/bcsstk16', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc2/bcsstk17', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc2/bcsstk18', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}

    % From the BCSSTRUC3: BCS Structural Engineering Matrices (eigenvalue problems) set
    'bccstruc3/bcsstk19', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'ill conditioned'}
    'bccstruc3/bcsstk20', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bccstruc3/bcsstk21', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc3/bcsstk22', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc3/bcsstk23', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bccstruc3/bcsstk24', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse'}
    'bccstruc3/bcsstk25', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc3/bcsstm19', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bccstruc3/bcsstm20', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bccstruc3/bcsstm21', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bccstruc3/bcsstm22', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bccstruc3/bcsstm23', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant'}
    'bccstruc3/bcsstm24', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant', 'ill conditioned'}
    'bccstruc3/bcsstm25', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'diagonally dominant', 'ill conditioned'}

    % From the BCSSTRUC4: BCS Structural Engineering Matrices (eigenvalue problems and linear equations) set
    'bccstruc4/bcsstk26', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'bccstruc4/bcsstk27', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc4/bcsstk28', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded'}
    'bccstruc4/bcsstm26', {'real', 'symmetric', 'positive definite', 'fixed size', 'square', 'sparse', 'banded', 'diagonally dominant'}
    'bccstruc4/bcsstm27', {'real', 'symmetric', 'indefinite', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}

    % From the CIRPHYS: Circuit physics modeling set
    'cirphys/jpwh_991', {'real', 'fixed size', 'square', 'sparse', 'banded'}

    % From the WATT: Petroleum engineering set
    'watt/watt__1', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    'watt/watt__2', {'real', 'fixed size', 'square', 'sparse', 'banded', 'ill conditioned'}
    };
end
