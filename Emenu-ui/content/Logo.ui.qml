/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Image{
    source:"images/1logo_do.png"

    Image{
        id: image
        visible: false
        anchors.fill:parent
        source:"images/2logo_hong.png"
    }
    Image{
        id: image1
        visible: false
        anchors.fill: parent
        source:"images/3logo_xanh.png"
    }

    Image{
        id: image2
        visible: false
        anchors.fill: parent
        source:"images/4logo_xanhnhe.png"
    }
    Image{
        id: image3
        visible: false
        anchors.fill: parent
        source:"images/5logo_xanhla.png"
    }
    Image{
        id: image4
        visible: false
        anchors.fill: parent
        source:"images/6logo_vang.png"
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: -1
                running: true
                duration: 950
                to: 950
                from: 0
            }
        ]
        enabled: true
        endFrame: 950
        startFrame: 0

        KeyframeGroup {
            target: image
            property: "visible"
            Keyframe {
                value: true
                frame: 150
            }
        }

        KeyframeGroup {
            target: image1
            property: "visible"
            Keyframe {
                value: true
                frame: 300
            }
        }

        KeyframeGroup {
            target: image2
            property: "visible"
            Keyframe {
                value: true
                frame: 450
            }
        }

        KeyframeGroup {
            target: image3
            property: "visible"
            Keyframe {
                value: true
                frame: 600
            }
        }

        KeyframeGroup {
            target: image4
            property: "visible"
            Keyframe {
                value: true
                frame: 750
            }
        }
    }

    Timeline {
        id: timeline1
        animations: [
            TimelineAnimation {
                id: timelineAnimation1
                loops: 1
                running: true
                duration: 950
                to: 950
                from: 0
            }
        ]
        enabled: false
        endFrame: 950
        startFrame: 0
    }
}
