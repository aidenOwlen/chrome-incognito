$p0 = "--incognito"
$p1 = " http://192.168.1.119"
$p3 = " http://www.google.com"
$p2 = ShellExecute("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", $p0 & $p3)


WinWait("Google - Google Chrome")
ShellExecute("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", $p0 & $p1)
WinSetState("192.168.1.119 - Google Chrome","",@SW_HIDE)
WinActivate ("Chrome")
WinWaitActive("Google - Google Chrome")
Send("^{TAB}")
WinSetState("Google - Google Chrome","",@SW_HIDE)