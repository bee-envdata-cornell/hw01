# Homework 1 — Looking at Data
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Homework 1 for [BEE 4850/5850](https://envdata.viveks.me), Spring 2027. Due **Thu 4 Feb 2027**.
Covers Week 1: generative models, exploratory analysis, visualization.

## Learning Objectives

- say what makes a model generative, and what that buys over a fitted curve;
- write a generative model for a described process and separate assumptions given from assumptions supplied;
- identify how a figure's marks, axes and framing shape what a reader concludes;
- read a real environmental record, aggregate it, and decide what counts as an incomplete year.

## Data

`data/sewells_point_hourly.csv` — NOAA CO-OPS station 8638610 (Sewells Point, VA), hourly water
level, MSL datum, GMT, 1928–2024. Public domain. 835,065 rows; hours with no observation are omitted,
so rows-per-year is hours actually recorded. Rebuild with `./fetch_gauge_data.sh`.

Five years are materially incomplete: 1930, 1942, 1943 (wartime), 1966, 1975. The record maximum
(2.032 m, 1933) is the Chesapeake–Potomac hurricane.

**Students keep their annual maxima — Homework 2 uses them.**
