BOOTSTRAP=../bootstrap

dmcs -r:System.Windows.Forms GenerateResource.cs
mono GenerateResource.exe
mv Content.resx ../IncludeResources
rm GenerateResource.exe

mono $BOOTSTRAP/gppg.exe /gplex /nolines gplex.y
mv Parser.cs ../GPLEX

mono $BOOTSTRAP/gplex.exe gplex.lex
mv Scanner.cs ../GPLEX
mv GplexBuffers.cs ../GPLEX

