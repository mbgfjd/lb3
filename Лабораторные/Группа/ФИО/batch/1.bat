chcp 65001
mkdir "Скрытая папка"
mkdir "Не скрытая папка"
attrib +H "Скрытая папка"
xcopy /?
xcopy /? > "Не скрытая папка/copyhelp.txt"
xcopy ".\Не скрытая папка\copyhelp.txt" ".\Скрытая папка\copied_copyhelp.txt"