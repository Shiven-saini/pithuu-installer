import QtQuick 2.0

Rectangle {
    width: 900
    height: 600
    color: "#efefef"

    // Timer to control slide transitions
    Timer {
        id: slideTimer
        interval: 5000 // 5 seconds per slide
        running: true
        repeat: true
        onTriggered: {
            currentSlide = (currentSlide + 1) % slides.length;
        }
    }

    // List of slide images
    property var slides: [
        "slide-1.png",
        "slide-2.png",
        "slide-3.png"
    ]
    property int currentSlide: 0

    // Display the current slide
    Image {
        id: slideImage
        source: slides[currentSlide]
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit // Ensures the image fits without cropping
    }

    // Optional navigation buttons (if needed)
    Rectangle {
        id: prevButton
        width: 50
        height: 50
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        color: "gray"
        opacity: 0.5
        Text {
            text: "<"
            anchors.centerIn: parent
            font.pixelSize: 24
            color: "white"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                currentSlide = (currentSlide - 1 + slides.length) % slides.length;
            }
        }
    }

    Rectangle {
        id: nextButton
        width: 50
        height: 50
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        color: "gray"
        opacity: 0.5
        Text {
            text: ">"
            anchors.centerIn: parent
            font.pixelSize: 24
            color: "white"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                currentSlide = (currentSlide + 1) % slides.length;
            }
        }
    }
}
