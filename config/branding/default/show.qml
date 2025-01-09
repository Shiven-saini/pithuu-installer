

import QtQuick 2.0;
import calamares.slideshow 1.0;
import io.calamares.ui 1.0  // Calamares internals: Branding

Presentation
{
    id: presentation

    Timer {
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    function onActivate() { }
    function onLeave() { }

    Rectangle {
        id: mybackground
        anchors.fill: parent
        color: Branding.styleString(Branding.SidebarBackground)
        z: -1
    }

    ImageSlide {
        src: "slide-1.png"
    }

    ImageSlide {
        src: "slide-2.png"
    }

    ImageSlide {
        src: "slide-3.png"
    }

}
