mcs GenerateResource.cs
mono GenerateResource.exe
mv Content.resx ../IncludeResources
rm GenerateResource.exe

gppg /gplex /nolines gplex.y
mv parser.cs ../GPLEX

gplex gplex.lex
mv Scanner.cs ../GPLEX

if not exist GplexBuffers.cs goto finish
mv GplexBuffers.cs ../GPLEX

:finish
REM Ended