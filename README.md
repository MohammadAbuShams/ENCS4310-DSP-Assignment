# ENCS4310-DSP-Assignment

This repository contains MATLAB code for Assignment 1 of the Digital Signal Processing (DSP) course (ENCS4310) at Birzeit University.

## Problem Overview

The continuous-time signal is defined as:

$$
x(t) = \cos(2\pi \cdot 2 \cdot t) + 0.5 \cdot \cos(2\pi \cdot 50 \cdot t) + 0.25 \cdot \cos(2\pi \cdot 80 \cdot t)
$$

- **Sampling frequency (Fs):** 160 samples/sec
- **Objective:** 
  1. Analyze the signal
  2. Apply a moving average filter
  3. Plot frequency response and spectra

## Tasks

### a) Plot x[n] for 1 second (160 samples)

The signal is sampled for 1 second, resulting in 160 samples. We use MATLAB's `plot()` and `stem()` functions to visualize the discrete-time signal.

### b) Apply a Moving Average Filter

The moving average filter is defined as:

$$
y[n] = \frac{1}{M+1} \sum_{k=0}^{M} x[n-k]
$$


We explore different window sizes (M = 0, M = 4, M = 10) and analyze the filter's frequency response using the `freqz()` function.

### c) Plot Output Sequence

We calculate and plot the output sequence `y[n]` using the `filter()` function for different window sizes (M = 0, M = 4, M = 10).

### d) Plot Frequency Spectrum

We compute and plot the frequency spectrum of the input signal $$ \( X(e^{j\omega}) \) $$ and the output signal $$ \( Y(e^{j\omega}) \) $$ using the `fft()` function.

### e) Find the Optimal Window Size

By experimenting with different window sizes, we determine the optimal window size (M) to extract the first sinusoidal component $$
\cos(2\pi \cdot 2 \cdot t)
$$

## MATLAB Functions Used

- `plot()` - Plot continuous data
- `stem()` - Plot discrete data
- `freqz()` - Compute and plot frequency response
- `filter()` - Apply the moving average filter
- `fft()` - Compute the Fast Fourier Transform

## Conclusion

The optimal window size (M) to isolate the first sinusoidal signal $$
\cos(2\pi \cdot 2 \cdot t)
$$

 was determined through frequency analysis of the filtered output.

