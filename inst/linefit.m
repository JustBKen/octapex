# Copyright 2019 Anton Douginets
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function [A, B, dA, dB] = linefit(x, y, dy)
  # Lineare Regression (y = ax + b) mit Gewichtung nach dem Skript von U. Müller, S.41.
  # straightforward and easy, but has some drawbacks. (See Ref. 2)
  # takes:
  # x, y, dy vectors, with dy = s(y);
  # returns:
  # A, B - fit parameters,
  # dA, dB - their uncertainties.
  # Direct calculation by formulas in Mueller's Script (Ref. 1, p. 41)

  D = sum((x.**2)./dy.**2).*sum(1./dy.**2) - (sum(x./dy.**2)).**2;
  A = (sum(x.*y./dy.**2).*sum(1./dy.**2) - sum(x./dy.**2).*sum(y./dy.**2))./D;
  B = (sum((x.**2)./dy.**2).*sum(y./dy.**2) - sum(x.*y./dy.**2).*sum(x./dy.**2))./D;
  dA = sqrt(sum(1./dy.**2)./D);
  dB = sqrt(sum((x.**2)./dy.**2)./D);
endfunction
