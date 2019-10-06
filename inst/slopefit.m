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

function [A, dA] = slopefit(x, y, dy)
  # Lineare Regression (y = ax) mit Gewichtung nach dem Skript von U. Müller, S.41-42
  # straightforward and easy, but has some drawbacks. (See Ref. 2)
  # takes:
  # x, y, dy vectors, with dy = s(y);
  # returns:
  # A - fit parameter (slope),
  # dA - uncertainty in A.
  # Direct calculation by formulas in Mueller's Script (Ref. 1, p. 41)

  A = sum(x.*y./dy.**2)/sum((x.**2)./dy.**2);
  dA = sqrt(1/sum((x.**2)./dy.**2));
endfunction
