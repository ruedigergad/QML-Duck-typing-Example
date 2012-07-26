// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: mno

    property int bar: 359

    function myMethod(){
        console.log("myMethod in MNO")
        return bar++
    }
}
