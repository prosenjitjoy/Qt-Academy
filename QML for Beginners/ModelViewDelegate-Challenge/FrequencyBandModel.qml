import QtQuick

ListModel {
    id: root
    // The Model is JSON Array of JSON objects which has data in the form
    // [ { volumeLevel : n1 }, { volumeLevel : n2 } , ... ]
    property int interval: 50
    property int frequencyBands: 50

    onFrequencyBandsChanged: updateBands()
    Component.onCompleted: updateBands()

    function updateBands() {
        if (frequencyBands > root.count) {
            root.addBars(frequencyBands - root.count)
        } else if (frequencyBands < root.count) {
            root.removeBars(root.count - frequencyBands)
        }
    }

    function addBars(count: int) {
        for (var index=0; index<count; index++) {
            root.append({volumeLevel: 0})
        }
    }

    function removeBars(count: int) {
        root.remove(root.count - count, count)
    }

    function updateBandData() {
        for (var index=0; index<root.count; index++) {
            const oldValue = root.get(index)["volumeLevel"]
            const newValue = Math.min(1, Math.max(oldValue + ((Math.random()-0.5)*0.1), 0))
            root.setProperty(index, "volumeLevel", newValue)
        }
    }

    property Timer dataGenerator: Timer {
        interval: root.interval
        repeat: true
        running: root.count > 0
        onTriggered: root.updateBandData()
    }
}
