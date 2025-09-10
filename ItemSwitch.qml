import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    anchors.fill: parent

    // 定义画面组件
    Component {
        id: homePage
        Rectangle {
            color: "lightblue"
            Text {
                anchors.centerIn: parent
                text: "🏠 首页画面"
                font.pixelSize: 24
            }
        }
    }

    Component {
        id: profilePage
        Rectangle {
            color: "lightgreen"
            Text {
                anchors.centerIn: parent
                text: "👤 个人资料画面"
                font.pixelSize: 24
            }
        }
    }

    Component {
        id: favoritesPage
        Rectangle {
            color: "lightyellow"
            Text {
                anchors.centerIn: parent
                text: "⭐ 我的收藏\n这里显示收藏的内容"
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Component {
        id: securityPage
        Rectangle {
            color: "lightcoral"
            Text {
                anchors.centerIn: parent
                text: "🛡️ 安全中心\n账户安全和隐私设置"
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    // 主布局
    Column {
        anchors.fill: parent

        // 导航栏
        Row {
            spacing: 10
            padding: 10

            Button {
                text: "🏠 首页"
                onClicked: stackView.push(homePage)
            }

            Button {
                text: "👤 资料"
                onClicked: stackView.push(profilePage)
            }

            Button {
                text: "⭐ 收藏"
                onClicked: stackView.push(favoritesPage)
            }

            Button {
                text: "🛡️ 安全"
                onClicked: stackView.push(securityPage)
            }
        }

        // 内容区域
        StackView {
            id: stackView
            width: parent.width
            height: parent.height - 60
            initialItem: homePage
        }
    }
}
