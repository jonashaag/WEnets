# WAWEnets Reference Implementations
MATLAB/Octave and C++ implementations of Wideband Audio Waveform Evaluation networks or WAWEnets.

This WAWEnets implementation produces one or more speech quality or intelligibility values for each input speech signal without using reference speech signals.
WAWEnets are convolutional neural networks and they have been trained using full-reference objective speech quality and speech intelligibility values.

Details can be found in [the WAWEnets paper.](https://www.its.bldrdoc.gov/publications/details.aspx?pub=3242)<sup id="wawenets">[1](#f1)</sup>

If you need to cite our work, please use the following:

```
@INPROCEEDINGS{
   9054204,
   author={A. A. {Catellier} and S. D. {Voran}},
   booktitle={ICASSP 2020 - 2020 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP)},
   title={Wawenets: A No-Reference Convolutional Waveform-Based Approach to Estimating Narrowband and Wideband Speech Quality},
   year={2020},
   volume={},
   number={},
   pages={331-335},
}
```

## MATLAB/Octave implementation
Instructions for using the MATLAB/Octive implementation are found [here](matlab/readme.md).

## C++ Implementation
A C++ implementation will be available soon.

-------------------------------------
<b id="f1">1</b> Andrew A. Catellier & Stephen D. Voran, "WAWEnets: A No-Reference Convolutional Waveform-Based Approach to Estimating Narrowband and Wideband Speech Quality," ICASSP 2020 - 2020 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), Barcelona, Spain, 2020, pp. 331-335. [↩](#wawenets)