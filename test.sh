#!/bin/sh
rustxmp runner test.rs
cat test.rs | rustxmp
