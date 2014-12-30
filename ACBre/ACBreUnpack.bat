@echo off
cd override
tisunpack ARAC*.tiz
del ARAC*.tiz
tisunpack AC*.tiz
del AC*.tiz
del tisunpack.exe