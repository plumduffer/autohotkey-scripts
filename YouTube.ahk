#Requires AutoHotkey v2.0
#SingleInstance Force
#MaxThreadsPerHotkey 1
SetTitleMatchMode 2

; Increase the hotkey threshold to avoid the warning
#HotIf WinExist("- YouTube")
    Media_Next::YouTubeControl("l")
    Media_Prev::YouTubeControl("j")
#HotIf

; Function to handle the YouTube controls
YouTubeControl(key) {
    static lastTime := 0
    currentTime := A_TickCount
    
    ; Add a small delay between executions (300ms)
    if (currentTime - lastTime < 300)
        return
    
    lastTime := currentTime
    
    Try {
        if WinExist("- YouTube") {
            WinActivate
            Send key
        }
    }
    Catch {
        ; If there's an error, do nothing - don't try to pass through
    }
}
