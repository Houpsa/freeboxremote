/*
 * Copyright (C) 2013 Lucien XU <sfietkonstantin@free.fr>
 *
 * You may use this file under the terms of the BSD license as follows:
 *
 * "Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in
 * the documentation and/or other materials provided with the
 * distribution.
 * * The names of its contributors may not be used to endorse or promote 
 * products derived from this software without specific prior written 
 * permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
 */ 

#include "style.h"
#include <QtCore/QtGlobal>

static const int MARGIN = 12;
static const int BUTTON_SIZE_FREEMANTLE = 110;
static const int BUTTON_SIZE_HARMATTAN = 120;

Style::Style(QObject *parent) :
    QObject(parent)
{
#if defined(Q_WS_MAEMO_5)
    m_platform = Freemantle;
#elif defined(MEEGO_EDITION_HARMATTAN)
    m_platform = Harmattan;
#else
    m_platform = Unknown;
#endif
    // Debug
    m_platform = Freemantle;
}

Style::Platform Style::platform() const
{
    return m_platform;
}

int Style::margin() const
{
    return MARGIN;
}

int Style::buttonSize() const
{
    switch (m_platform) {
    case Freemantle:
        return BUTTON_SIZE_FREEMANTLE;
    case Harmattan:
        return BUTTON_SIZE_HARMATTAN;
    default:
        return 0;
    }
}
