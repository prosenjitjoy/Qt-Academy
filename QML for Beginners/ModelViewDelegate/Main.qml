pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt.labs.folderlistmodel

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Model View Delegate")

    // Component {
    //     id: weatherCondition
    //     RowLayout {
    //         id: conditionLayout
    //         required property string modelData
    //         spacing: 20
    //         Text {
    //             text: conditionLayout.modelData
    //             font.pixelSize: 30
    //             font.bold: true
    //         }
    //     }
    // }

    // ListView {
    //     anchors.fill: parent
    //     model: ["sunny", "cloudy", "rainy"]
    //     delegate: weatherCondition
    // }

    // Component {
    //     id: weatherDelegate
    //     RowLayout {
    //         id: weatherInfo
    //         required property string day
    //         required property real temp
    //         required property string condition

    //         ColumnLayout {
    //             Text {
    //                 text: weatherInfo.day
    //             }
    //             Text {
    //                 text: weatherInfo.temp + "°C"
    //             }
    //             Text {
    //                 text: weatherInfo.condition
    //             }
    //         }
    //     }
    // }

    // ColumnLayout {
    //     spacing: 8

    //     Repeater {
    //         model: [
    //             {
    //                 "day": "Monday",
    //                 "temp": 25,
    //                 "condition": "sunny"
    //             },
    //             {
    //                 "day": "Tuesday",
    //                 "temp": 24,
    //                 "condition": "cloudy"
    //             }
    //         ]

    //         delegate: weatherDelegate
    //     }
    // }

    // ListView {
    //     anchors.fill: parent
    //     model: 5
    //     delegate: Label {
    //         required property int modelData
    //         text: `I am item: ${modelData}`
    //     }
    // }

    // ListView {
    //     anchors.fill: parent
    //     model: ["sunny", "cloudy", "rainy"]
    //     delegate: Label {
    //         required property string modelData
    //         required property int index

    //         text: `${index+1}. ${modelData}`
    //     }
    // }

    // ListView {
    //     anchors.fill: parent
    //     model: [
    //         {"month": "August", "temp": 20, "color": "darkorange"},
    //         {"month": "September", "temp": 10, "color": "deepskyblue"},
    //         {"month": "October", "temp": 0, "color": "lightskyblue"}
    //     ]

    //     delegate: Label {
    //         required property string month
    //         required property int temp
    //         required color

    //         text: `${month}: ${temp}`
    //         font.pixelSize: 30
    //     }
    // }

    // ColumnLayout {
    //     anchors.fill: parent

    //     Repeater {
    //         model: 10
    //         delegate: Label {
    //             required property int modelData
    //             required property int index

    //             Layout.fillWidth: true

    //             text: `modelData: ${modelData}, index: ${index}`
    //         }
    //     }
    // }

    // ColumnLayout {
    //     anchors.fill: parent

    //     Repeater {
    //         model: ["red", "green", "blue", "cyan", "yellow", "magenta", "white", "black"]
    //         delegate: Label {
    //             id: labelDelegate
    //             required property string modelData
    //             required property int index

    //             Layout.fillWidth: true

    //             text: `modelData: ${modelData}, index: ${index}`

    //             background: Rectangle {
    //                 color: Qt.color(labelDelegate.modelData)
    //             }
    //         }
    //     }
    // }

    // ColumnLayout {
    //     anchors.fill: parent

    //     Repeater {
    //         model: [
    //             {"backgroundColor": "red", "color": "white"},
    //             {"backgroundColor": "green", "color": "white"},
    //             {"backgroundColor": "blue", "color": "white"},
    //             {"backgroundColor": "cyan", "color": "black"},
    //             {"backgroundColor": "yellow", "color": "black"},
    //             {"backgroundColor": "magenta", "color": "white"},
    //             {"backgroundColor": "white", "color": "black"},
    //             {"backgroundColor": "black", "color": "white"},
    //         ]
    //         delegate: Label {
    //             id: labelDelegate
    //             required property string backgroundColor
    //             required property int index
    //             required color

    //             Layout.fillWidth: true

    //             text: `backgroundColor: ${backgroundColor}, color: ${color}, index: ${index}`

    //             background: Rectangle {
    //                 color: Qt.color(labelDelegate.backgroundColor)
    //             }
    //         }
    //     }
    // }

    // Image {
    //     anchors.centerIn: parent
    //     source: Qt.resolvedUrl("assets/icons/icon0.svg")

    //     NumberAnimation on scale {
    //         duration: 1500
    //         easing.type: Easing.InOutCubic
    //         from: 0
    //         to: 1
    //     }

    //     NumberAnimation on rotation {
    //         duration: 1500
    //         easing.type: Easing.InOutCubic
    //         from: 0
    //         to: 90
    //     }
    // }

    // FolderListModel {
    //     id: folderModel
    //     folder: Qt.resolvedUrl("assets/")
    //     nameFilters: ["*.png"]
    // }

    // ColumnLayout {
    //     spacing: 8

    //     Repeater {
    //         model: folderModel
    //         delegate: Label {
    //             required property string fileName
    //             text: fileName
    //         }
    //     }
    // }

    // ListModel {
    //     id: weatherModel

    //     ListElement {
    //         time: "2024-06-10"
    //         day: "Monday"
    //         weather_code: 0
    //         temp_max: 21
    //         temp_min: 9
    //         units: "ºC"
    //     }
    //     ListElement {
    //         time: "2024-06-11"
    //         day: "Tuesday"
    //         weather_code: 1
    //         temp_max: 22
    //         temp_min: 10
    //         units: "ºC"
    //     }
    //     ListElement {
    //         time: "2024-06-12"
    //         day: "Wednesday"
    //         weather_code: 2
    //         temp_max: 23
    //         temp_min: 11
    //         units: "ºC"
    //     }
    // }

    // Component {
    //     id: weatherForecastDelegate

    //     RowLayout {
    //         required property string day
    //         required property int weather_code
    //         required property int temp_max
    //         required property int temp_min
    //         required property string units

    //         spacing: 8

    //         Image {
    //             source: Qt.resolvedUrl(`assets/icons/icon${weather_code}.svg`)
    //         }

    //         ColumnLayout {
    //             spacing: 3
    //             Label {
    //                 text: day
    //                 font.pixelSize: 20
    //             }

    //             RowLayout {
    //                 spacing: 2

    //                 Label {
    //                     text: `${temp_max}${units}`
    //                     font.pixelSize: 14
    //                 }

    //                 Label {
    //                     text: `${temp_min}${units}`
    //                     font.pixelSize: 14
    //                     color: "grey"
    //                 }
    //             }
    //         }
    //     }
    // }

    // ListView {
    //     id: forecastList
    //     anchors.fill: parent
    //     spacing: 8

    //     model: weatherModel
    //     delegate: weatherForecastDelegate
    // }

    // GridView {
    //     id: forecastList
    //     anchors.fill: parent
    //     cellWidth: 150
    //     cellHeight: 60

    //     model: weatherModel
    //     delegate: weatherForecastDelegate
    // }

    // ColumnLayout {
    //     anchors.fill: parent

    //     FolderListModel {
    //         id: folderListModel
    //         folder: Qt.resolvedUrl("assets/icons")
    //     }

    //     GridView {
    //         id: gridView
    //         Layout.fillWidth: true
    //         Layout.fillHeight: true

    //         model: folderListModel

    //         cellWidth: 100
    //         cellHeight: 100

    //         delegate: Rectangle {
    //             id: delegate

    //             required property url fileUrl
    //             required property string fileBaseName

    //             color: "transparent"
    //             border.color: "white"

    //             width: gridView.cellWidth
    //             height: gridView.cellHeight

    //             Rectangle {
    //                 anchors.fill: columnLayout
    //                 color: "transparent"
    //                 border.color: "red"
    //             }

    //             ColumnLayout {
    //                 id: columnLayout
    //                 anchors.centerIn: parent

    //                 Image {
    //                     source: delegate.fileUrl
    //                     Layout.fillWidth: true
    //                     horizontalAlignment: Qt.AlignHCenter
    //                     fillMode: Image.PreserveAspectFit
    //                 }

    //                 Label {
    //                     text: delegate.fileBaseName
    //                     horizontalAlignment: Qt.AlignHCenter
    //                     Layout.fillWidth: true
    //                 }
    //             }
    //         }
    //     }
    // }

    Pane {
        anchors.fill: parent
        padding: 4
        background: Image {
            source: Qt.resolvedUrl(`assets/images/image${weatherModel.weather_code}.jpg`)
            fillMode: Image.PreserveAspectCrop

            Rectangle {
                anchors.fill: parent
                color: "black"
                opacity: 0.5
            }
        }

        ColumnLayout {
            anchors.fill: parent
            enabled: !locationModel.busy && !weatherModel.busy

            // ListModel {
            //     id: weatherModel

            //     ListElement {
            //         time: "2024-06-10"
            //         weather_code: 0
            //         temp_max: 21
            //         temp_min: 9
            //         units: "ºC"
            //     }
            //     ListElement {
            //         time: "2024-06-11"
            //         weather_code: 1
            //         temp_max: 22
            //         temp_min: 10
            //         units: "ºC"
            //     }
            //     ListElement {
            //         time: "2024-06-12"
            //         weather_code: 2
            //         temp_max: 23
            //         temp_min: 11
            //         units: "ºC"
            //     }
            //     ListElement {
            //         time: "2024-06-13"
            //         weather_code: 0
            //         temp_max: 21
            //         temp_min: 9
            //         units: "ºC"
            //     }
            //     ListElement {
            //         time: "2024-06-14"
            //         weather_code: 1
            //         temp_max: 22
            //         temp_min: 10
            //         units: "ºC"
            //     }
            //     ListElement {
            //         time: "2024-06-15"
            //         weather_code: 2
            //         temp_max: 23
            //         temp_min: 11
            //         units: "ºC"
            //     }

            //     Component.onCompleted: append({
            //                                       "time": "2024-06-16",
            //                                       "weather_code": 95,
            //                                       "temp_max": 21,
            //                                       "temp_min": 9,
            //                                       "units": "ºC"
            //                                   })
            // }

            // ListModel {
            //     id: locationModel

            //     ListElement {
            //         locationText: "Berlin"
            //         weatherRequest: "GET weather for Berlin"
            //     }
            //     ListElement {
            //         locationText: "Brisbane"
            //         weatherRequest: "GET weather for Brisbane"
            //     }
            //     ListElement {
            //         locationText: "London"
            //         weatherRequest: "GET weather for London"
            //     }
            //     ListElement {
            //         locationText: "Paris"
            //         weatherRequest: "GET weather for Paris"
            //     }
            // }



            LiveWeatherModel {
                id: weatherModel
                weatherRequest: locationComboBox.currentValue ?? ""
                fahrenheit: fahrenheitSwitch.checked
            }

            LiveLocationModel {
                id: locationModel
                onUpdated: locationComboBox.currentIndex = 0
            }

            RowLayout {
                spacing: 32
                Label {
                    text: Qt.formatDateTime(new Date(), "ddd dd MMM") // e.g. Mon 12 Jul
                    font.pixelSize: 48
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop
                }
                Image {
                    visible: weatherModel.valid
                    Layout.preferredHeight: 48
                    Layout.preferredWidth: 48
                    fillMode: Image.PreserveAspectFit
                    source: Qt.resolvedUrl(`assets/icons/icon${weatherModel.weather_code}.svg`)
                }
                Label {
                    visible: weatherModel.valid
                    text: `${weatherModel.temp}${weatherModel.units}`
                    font.pixelSize: 48
                    Layout.alignment: Qt.AlignTop
                }
            }

            TextField {
                id: locationTextField

                text: "London"
                font.pixelSize: 48
                Layout.preferredWidth: window.width / 2
                palette.text: "white"

                background: Rectangle {
                    color: "black"
                    opacity: 0.5
                }

                onAccepted: locationModel.update(text)
                Component.onCompleted: locationModel.update(text)

                BusyIndicator {
                    anchors.right: parent.right
                    height: parent.height
                    visible: !enabled
                    palette.dark: "white"
                }
            }

            ComboBox {
                id: locationComboBox
                Layout.preferredWidth: window.width / 2

                model: locationModel

                textRole: "locationText"
                valueRole: "weatherRequest"

                onActivated: console.log(locationComboBox.currentText, locationComboBox.currentValue)
            }

            Switch {
                id: fahrenheitSwitch
                text: "ºC / ºF"
                font.pixelSize: 48
                checked: false
            }

            ListView {
                id: forecastListView
                Layout.fillWidth: true
                Layout.preferredHeight: 200
                Layout.alignment: Qt.AlignBottom

                orientation: ListView.Horizontal

                model: weatherModel

                delegate: ColumnLayout {
                    id: forecastDelegate

                    width: ListView.view.width / forecastListView.count

                    required property string time
                    required property int weather_code
                    required property int temp_max
                    required property int temp_min
                    required property string units

                    Label {
                        text: Qt.formatDateTime(new Date(forecastDelegate.time), "ddd")
                        Layout.alignment: Qt.AlignHCenter
                        font.pixelSize: 20
                    }
                    Image {
                        source: `assets/icons/icon${forecastDelegate.weather_code}.svg`
                        Layout.preferredHeight: 50
                        Layout.preferredWidth: 50
                        Layout.alignment: Qt.AlignHCenter
                        fillMode: Image.PreserveAspectFit
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                    }
                    Label {
                        text: forecastDelegate.temp_max + forecastDelegate.units
                        Layout.alignment: Qt.AlignHCenter
                        font.pixelSize: 15
                    }
                    Label {
                        text: forecastDelegate.temp_min + forecastDelegate.units
                        Layout.alignment: Qt.AlignHCenter
                        font.pixelSize: 13
                    }
                }

                add: Transition {
                    NumberAnimation {
                        property: "opacity"
                        duration: 500
                        from: 0
                        to: 1
                        easing.type: Easing.InOutCubic
                    }
                }
            }
        }

    }



    // ColumnLayout {
    //     anchors.fill: parent

    //     TextField {
    //         id: textField
    //         placeholderText: "Enter Location"
    //         Layout.preferredHeight: 40
    //         Layout.fillWidth: true
    //         onAccepted: label.text = "Weather for " + textField.text
    //     }

    //     Label {
    //         id: label
    //         text: ""
    //         Layout.fillWidth: true
    //         Layout.preferredHeight: 40
    //     }
    // }
}
