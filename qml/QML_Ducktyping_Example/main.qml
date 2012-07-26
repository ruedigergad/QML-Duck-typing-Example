// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: mainRectangle

    width: 1100
    height: 400

    /*
     * This property holds the dynamically created object.
     * Note that it does not have any specific type information aside from QtObject.
     */
    property QtObject myObjectInstance;

    Row{
        /*
         * Here some "buttons" are used to dynamically instantiate objects of different types.
         * Note that we use C++ and QML based types.
         */
        id: objectSelectionButtonRow

        anchors{top: parent.top; left: parent.left; right: parent.right; margins: 20}

        height: 150

        spacing: 20

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "blue"

            Text {
                text: qsTr("Type A")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type A.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; A {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "green"

            Text {
                text: qsTr("Type B")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type B.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; B {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "yellow"

            Text {
                text: qsTr("Type C")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type C.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; C {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "lightgray"

            Text {
                text: qsTr("Type D\nWithout Method!")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type D.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; D {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "purple"

            Text {
                text: qsTr("Type UVW")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type UVW.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; UVW {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "red"

            Text {
                text: qsTr("Type XYZ")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type XYZ.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; import test 1.0; XYZ {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "orange"

            Text {
                text: qsTr("Type QRS")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type QRS.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; QRS {}', mainRectangle)
                }
            }
        }

        Rectangle {
            height: parent.height - 2 * parent.anchors.margins
            width: height

            color: "lightblue"

            Text {
                text: qsTr("Type MNO")
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Creating object of type MNO.")
                    myObjectInstance = Qt.createQmlObject('import QtQuick 1.0; MNO {}', mainRectangle)
                }
            }
        }
    }

    Rectangle{
        /*
         * This button is used to call the actual method on the myObjectInstance.
         */

        id: executeButton

        anchors{
            top: objectSelectionButtonRow.bottom; left: parent.left; right: parent.right; bottom: parent.bottom; margins: 20
        }

        color: "gray"

        Text {
            text: qsTr("Execute")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                /*
                 * Here we execute the method on our dynamically created object.
                 * Note that we do not rely on any type information.
                 * If the method/function is present it will be executed, else an error will occur.
                 *
                 * This is what Duck-typing is about:
                 * "If I see an animal that walks like a duck, quacks like a duck,
                 *  and looks like a duck, I call that animal a 'duck'."
                 *
                 * In our case we do not rely on inheritance hierarchies etc. but just execute whatever
                 * method/function is there that has the name "myMethod".
                 */
                var ret = myObjectInstance.myMethod()
                /*
                 * We can even have some methods return values while others don't.
                 */
                console.log("ret: " + ret + "\n")
            }
        }
    }
}
