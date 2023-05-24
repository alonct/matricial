## Copyright (C) 2022 USUARIO
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} LUGaussSinPerm (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: USUARIO <USUARIO@LAPTOP-H8I2AUEL>
## Created: 2022-02-07

function [L,U] = LUGaussSinPerm (A)
  [m,n]=size(A);
  if m ~= n
    error('dimensiones incompatibles');
  end
%
  for j=1:n-1
    piv=A(j,j);
    if (abs( piv) <1e-10 )
      warning('Gauss sin permutaciones: elemento nulo en diagonal');
    end
    for i=j+1:n
      A(i,j)=A(i,j)/piv;
      A(i,j+1:n)=A(i,j+1:n)-(A(i,j)*A(j,j+1:n));
    end
    end
    L=tril(A,-1)+eye(n);
    U=triu(A);
  endfunction
