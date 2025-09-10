import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: 800
    height: 600
    visible: true
    title: "画面切换示例"

    ItemSwitch{
        id:item_switch01
        // 设置位置和大小
        x: 50
        y: 50
        width: parent.width * 0.8  // 使用比例尺寸
        height: parent.height * 0.7
    }

}
