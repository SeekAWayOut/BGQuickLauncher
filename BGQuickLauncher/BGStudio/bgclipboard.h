/*****************************************************************************
 *   BGStudio - Quick/Qml model, mis fun writer by BGStudio
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

#ifndef CLIPBOARD_H
#define CLIPBOARD_H

#include <QObject>
#include <QQmlEngine>

class BGClipBoard : public QObject
{
    Q_OBJECT
public:
    explicit BGClipBoard(QObject *parent = 0);
    Q_INVOKABLE void setText (const QString& text);
signals:

public slots:
};

QObject* BGClipBoard_singletontype_provider(QQmlEngine* /*engine*/, QJSEngine* /*scriptEngine*/);

#endif // CLIPBOARD_H
