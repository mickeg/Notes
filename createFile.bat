forfiles /M *.md /D -30 /C "cmd /C move @file .\archive\"

SET DT=%date:/=-%
IF [%1] == [] (SET context="") ELSE (SET context="_"%1)
(
ECHO # %DT% 
ECHO ## NOTES
)>%DT%%context%.md