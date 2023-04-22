import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


Page{
    id:root

    property string currentSongName: "select a song"
    property string currentArtistName: "default"
    property string currentAlbulmPath: "/images/Hero.jpg"

//    signal btnClicked();

    Rectangle{
        id:navigation;
        width: 244;
        anchors.left: parent.left;
        anchors.top: parent.top;
        anchors.bottom: playCtl.top;

        ButtonGroup{
            id:navBtngroup
        }


        ListView {
            id: songListPanel
            width: parent.width
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            model: SongList{}    //Maybe adding song from database or local device is a better design
            delegate: Test2ContentNavBtn { songText: title; artistText: "安室奈美恵"; imagePathText: "images/"+imagePath; }

            flickableDirection: Flickable.AutoFlickDirection
            clip:true
            spacing: 5
            focus: true
        }

    }

    Test2ContentAlb{
        id:albulm
        anchors.left: navigation.right;
        anchors.top: parent.top;
        anchors.right: parent.right
        anchors.bottom: playCtl.top;

        songText: currentSongName
        artistText: currentArtistName
        imagePathText: currentAlbulmPath
    }

    Test2ContentPly{
        id:playCtl
        anchors.bottom: parent.bottom
    }

//    Connections{
//        target:root
//        function onBtnClicked(){
//        console.log("test")
//        }
//    }

    Component.onCompleted: {
        console.log("test2")
    }

}
