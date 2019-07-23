# octapex
## Octave for Physics Experiments
A GNU/Octave package aiming to:
- provide a toolkit for calculations necessary in university physics lab work - built primarily according to the needs of HU Berlin's Grundpraktikum
- provide means for quick preliminary analysis of experimental data, with the results exportable for further processing with more sophisticated tools.

Since Octave, being a specialized scripting language, is fairly easy to learn and is more efficient for the tasks it was designed for (numerical work), it seems to be a good choice for a quick model/hypothesis test, preprocessing/visualisation of large amounts of homogenous data, or some quick calculation that booting up something more versatile for would be overkill.

## todo:
- Establish design principles:
  - user-friendliness and speed of use, while maintaining necessary functionality - without reinventing the wheel
  - with data and callables being main objects of operation, develop a comfortable format to keep them in
  - concrete list of desired functionality
- make a test dataset
- implement shit:
  - v0.4:
    - cull/reogrganize existing code
    - define and implement minimal required functionality
  - later:
    - todo
- documentation:
  - v0.4: document the code remaining after the above + start wiki
  - later:
    - accompanying manual
    - a full wiki page here, doubling the manual
    - evtl. eine kleine Einführung in Octave für Studis

=================================================================================
#### **Old todo (obviously outdated):**
- hypothesis verification
- Damping coefficient for nonlinear least squares (LMA?)
- Fehlerrechnung im Rahmen des linearen Modells - siehe P. Schäfer
- Korrelationsmatrix aus Daten berechnen - für NLSQ?
- documentation
- format this repo's wiki, readme etc.
- rewrite getwavg() to account for correlation of input data
