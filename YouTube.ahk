#Requires AutoHotkey v2.0
#SingleInstance Force
#MaxThreadsPerHotkey 1
SetTitleMatchMode 2

HotIfWinExist "- YouTube"
    *Media_Next::
    {
        Try {
            ControlFocus "Chrome_RenderWidgetHostHWND1", "- YouTube"
            ControlSend "l","Chrome_RenderWidgetHostHWND1","- YouTube"
        }
        Catch {
            Return
        }
    }

    *Media_Prev::
    {
        Try {
            ControlFocus "Chrome_RenderWidgetHostHWND1", "- YouTube"
            ControlSend "j","Chrome_RenderWidgetHostHWND1","- YouTube"
        }
        Catch {
            Return
        }
    }
Return