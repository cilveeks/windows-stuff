createInitialDesktops(NumInitialDesktops)
{
    global DesktopCount, CurrentDesktop

    OutputDebug, Creating %NumInitialDesktops% initial desktops

    Current := CurrentDesktop

    Loop, % NumInitialDesktops - DesktopCount
    {
        createVirtualDesktop()
    }

    OutputDebug, Switching back to desktop %Current%
    _switchDesktopToTarget(Current)
}

createInitialDesktops(5)

!`::switchDesktopByNumber(1)
!1::switchDesktopByNumber(2)
!2::switchDesktopByNumber(3)
!3::switchDesktopByNumber(4)
!4::switchDesktopByNumber(5)

#`::MoveCurrentWindowToDesktop(1)
#1::MoveCurrentWindowToDesktop(2)
#2::MoveCurrentWindowToDesktop(3)
#3::MoveCurrentWindowToDesktop(4)
#4::MoveCurrentWindowToDesktop(5)

#d::createVirtualDesktop()

