/*
    Copyright 2019 Wolfgang Thaller.

    This file is part of Retro68.

    Retro68 is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Retro68 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Retro68.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

#include <Stream.h>
#include <OpenTransport.h>
#include <stdint.h>

class OpenTptStream : public Stream
{
    static const long kReadBufferSize = 4096;
    uint8_t readBuffer[kReadBufferSize];

    bool connected = false;

    TEndpoint *listenerEndpoint;
    TEndpoint *endpoint;
    TCall call;

    void tryListening();
    void tryReading();
public:
    virtual void write(const void* p, size_t n) override;

    void idle();

    OpenTptStream();
    ~OpenTptStream();
};


