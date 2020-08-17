updurl = https://github.com/Radmir-AutoHotKey/Alex_Vespucci/raw/master/%D0%A2%D1%80%D0%B5%D0%BD%D0%B5%D1%80.exe
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nНастраиваем систему обновления.
RegWrite,REG_SZ ,HKEY_CURRENT_USER, SoftWare\AHK, put2, %A_Desktop%\https://github.com/Radmir-AutoHotKey/Alex_Vespucci/raw/master/%D0%A2%D1%80%D0%B5%D0%BD%D0%B5%D1%80.exe
RegRead, put2, HKEY_CURRENT_USER, SoftWare\AHK, put2
sleep, 5000
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nСкачиваем обновленную версию.
URLDownloadToFile, %updurl%, %put2%
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nЗапускаем обновленную версию.
sleep, 3000
Run, %put2%
