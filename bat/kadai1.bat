@echo off
setlocal enabledelayedexpansion

pause

FOR /F "tokens=1-2" %%A IN (data-setA.txt) DO (
  set COMPANY=%%A
  md !COMPANY!

  set NUMBER=%%B
  md !COMPANY!\!NUMBER!


  for /F "tokens=1-3" %%C IN (data-setB.txt) DO (
      set NUMBER2=%%C
      set NAME=%%D
      set POSITION=%%E

      if "!COMPANY!\!NUMBER!" == "!COMPANY!\!NUMBER2!" (
          rename !COMPANY!\!NUMBER! !NUMBER!_!NAME!
       ) 

       copy nul !COMPANY!\!NUMBER!_!NAME!\katagaki
        
        if exist !COMPANY!\!NUMBER!_!NAME!\katagaki (
        
            echo !POSITION! > !COMPANY!\!NUMBER!_!NAME!\katagaki

        )
  )

)
pause


 