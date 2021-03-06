/*****************************************************************************
 *   BGQLCreator - Develop IDE for BGQuickLauncher, for Quick/Qml
 *   Copyright (C) 2017  Shubin Hu, SeekAWAyOut@gmail.com
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ****************************************************************************/

#ifndef SOURCEEDITORAREA_H
#define SOURCEEDITORAREA_H

#include <QMdiArea>
#include <QMenu>
#include "sourceeditor.h"

class SourceEditorArea : public QMdiArea
{
    Q_OBJECT
public:
    explicit SourceEditorArea(QWidget *parent = 0);
    void setRelWidget (QMenu* winMenu);
    void setRelActions (QAction* saveAll);

signals:
    void newEditorCreated (SourceEditor* editor);

public slots:
    void openSource (const QString& filePath);
    bool saveAllSource ();
    bool closeAllEditor();
    bool closeEditor (const QString& filePath);
private:
    QMenu* WinMenu;
};

#endif // SOURCEEDITORAREA_H
