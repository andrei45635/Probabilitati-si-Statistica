## Copyright (C) 2022 iacob
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
## @deftypefn {} {@var{retval} =} randexp (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: iacob <iacob@DESKTOP-MAJM3B1>
## Created: 2022-11-28

function retval = randexp (lambda, N=1000)
  retval = -1/lambda * log(1-rand(1,N))
endfunction
