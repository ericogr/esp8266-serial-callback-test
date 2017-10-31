#include "application.h"

void init() {
    WifiAccessPoint.enable(false);
    WifiStation.enable(true);

    Serial.begin(115200);
    Serial.setCallback(&serialCallback);

    _Timer.initializeMs(10, timerCallback).start();
}

void serialCallback(Stream &source, char arrivedChar, uint16_t availableCharsCount) {
    _Count++;
    char buff[availableCharsCount];

    for (int i = 0; i < availableCharsCount; i++) {
        buff[i] = source.read();
    }

    _ValueReceived = String(buff, availableCharsCount);
}

void timerCallback() {
    if (_ValueReceived.length() > 0) {
        String count(_Count);
        debug_i("count %s, rec %s", count.c_str(), _ValueReceived.c_str());
        _ValueReceived = "";
    }
}
