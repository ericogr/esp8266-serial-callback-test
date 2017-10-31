#ifndef __APPLICATION_H__
#define __APPLICATION_H__

#include <SmingCore/SmingCore.h>

Timer _Timer;
String _ValueReceived;
uint16_t _Count = 0;

void init();
void IRAM_ATTR serialCallback(Stream &source, char arrivedChar, uint16_t availableCharsCount);
void IRAM_ATTR timerCallback();

#endif
