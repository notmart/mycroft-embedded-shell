/*
 * Copyright 2018 by Marco Martin <mart@kde.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick 2.0
import QtQuick.Controls 2.2 as Controls
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import org.kde.kirigami 2.5 as Kirigami
import "quicksettings"

Item {
    id: root
    width: 500
    height: 600
    Item {
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }
        height: Kirigami.Units.gridUnit * 2
        clip: slidingPanel.position <= 0
        SlidingPanel {
            id: slidingPanel
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
            }
            Kirigami.Theme.colorSet: Kirigami.Theme.Window
            height: root.height
        }
    }
}
