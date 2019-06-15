
@rem @echo ----------------------------------------------------------------
@rem context.exe context.218.kolibri /c
@rem fasm context.218.asm

@echo ----------------------------------------------------------------
@context.218.exe context.219.kolibri /c
@if %errorlevel% NEQ 0 (
  echo .................................................
  echo "ERROR TO COMPILE CONTEXT 218 -> 219"
  exit /b %errorlevel%
)
@fasm context.219.asm
@if %errorlevel% NEQ 0 (
  echo .................................................
  echo "ERROR TO COMPILE ASM -> EXE"
  exit /b %errorlevel%
)

@context.219.exe example.ctx /k
@if %errorlevel% NEQ 0 (
  echo .................................................
  echo "ERROR TO COMPILE CONTEXT 219 -> KOLIBRI"
  exit /b %errorlevel%
)
@fasm example.asm
@if %errorlevel% NEQ 0 (
  echo .................................................
  echo "ERROR TO COMPILE ASM -> EXE"
  exit /b %errorlevel%
)
