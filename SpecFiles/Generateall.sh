#!/bin/bash

dmcs -r:System.Windows.Forms GenerateResource.cs
mono GenerateResource.exe
mv Content.resx ../IncludeResources
rm GenerateResource.exe

gppg /gplex /nolines gplex.y
mv parser.cs ../GPLEX

gplex gplex.lex
mv Scanner.cs ../GPLEX

mv GplexBuffers.cs ../GPLEX
