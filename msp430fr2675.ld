/* ============================================================================ */
/* Copyright (c) 2021, Texas Instruments Incorporated                           */
/*  All rights reserved.                                                        */
/*                                                                              */
/*  Redistribution and use in source and binary forms, with or without          */
/*  modification, are permitted provided that the following conditions          */
/*  are met:                                                                    */
/*                                                                              */
/*  *  Redistributions of source code must retain the above copyright           */
/*     notice, this list of conditions and the following disclaimer.            */
/*                                                                              */
/*  *  Redistributions in binary form must reproduce the above copyright        */
/*     notice, this list of conditions and the following disclaimer in the      */
/*     documentation and/or other materials provided with the distribution.     */
/*                                                                              */
/*  *  Neither the name of Texas Instruments Incorporated nor the names of      */
/*     its contributors may be used to endorse or promote products derived      */
/*     from this software without specific prior written permission.            */
/*                                                                              */
/*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" */
/*  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,       */
/*  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR      */
/*  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR            */
/*  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,       */
/*  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,         */
/*  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; */
/*  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,    */
/*  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR     */
/*  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,              */
/*  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                          */
/* ============================================================================ */

/* This file supports MSP430FR2675 devices. */
/* Version: 1.212 */
/* Default linker script, for normal executables */

OUTPUT_ARCH(msp430)
ENTRY(_start)

MEMORY {
  TINYRAM          : ORIGIN = 0x0006, LENGTH = 0x001A /* END=0x001F, size 26 */
  BSL0             : ORIGIN = 0x1000, LENGTH = 0x0800 /* END=0x17FF, size 2048 */
  TLVMEM           : ORIGIN = 0x1A00, LENGTH = 0x0200 /* END=0x1BFF, size 512 */
  BOOTCODE         : ORIGIN = 0x1C00, LENGTH = 0x0400 /* END=0x1FFF, size 1024 */
  ROMLIB           : ORIGIN = 0xC0000, LENGTH = 0x4000 /* END=0xC3FFF, size 16384 */
  BSL1             : ORIGIN = 0xFFC00, LENGTH = 0x0400 /* END=0xFFFFF, size 1024 */
  RAM              : ORIGIN = 0x2000, LENGTH = 0x1800 /* END=0x37FF, size 6144 */
  INFOMEM          : ORIGIN = 0x1800, LENGTH = 0x0200 /* END=0x19FF, size 512 */
  FRAM (rx)        : ORIGIN = 0x8000, LENGTH = 0x7F80 /* END=0xFF7F, size 32640 */
  JTAGSIGNATURE    : ORIGIN = 0xFF80, LENGTH = 0x0004
  BSLSIGNATURE     : ORIGIN = 0xFF84, LENGTH = 0x0004
  BSLCONFIGURATIONSIGNATURE : ORIGIN = 0xFF88, LENGTH = 0x0002
  BSLCONFIGURATION : ORIGIN = 0xFF8A, LENGTH = 0x0002
  BSLI2CADDRESS    : ORIGIN = 0xFFA0, LENGTH = 0x0002
  VECT0            : ORIGIN = 0xFFA2, LENGTH = 0x0002
  VECT1            : ORIGIN = 0xFFA4, LENGTH = 0x0002
  VECT2            : ORIGIN = 0xFFA6, LENGTH = 0x0002
  VECT3            : ORIGIN = 0xFFA8, LENGTH = 0x0002
  VECT4            : ORIGIN = 0xFFAA, LENGTH = 0x0002
  VECT5            : ORIGIN = 0xFFAC, LENGTH = 0x0002
  VECT6            : ORIGIN = 0xFFAE, LENGTH = 0x0002
  VECT7            : ORIGIN = 0xFFB0, LENGTH = 0x0002
  VECT8            : ORIGIN = 0xFFB2, LENGTH = 0x0002
  VECT9            : ORIGIN = 0xFFB4, LENGTH = 0x0002
  VECT10           : ORIGIN = 0xFFB6, LENGTH = 0x0002
  VECT11           : ORIGIN = 0xFFB8, LENGTH = 0x0002
  VECT12           : ORIGIN = 0xFFBA, LENGTH = 0x0002
  VECT13           : ORIGIN = 0xFFBC, LENGTH = 0x0002
  VECT14           : ORIGIN = 0xFFBE, LENGTH = 0x0002
  VECT15           : ORIGIN = 0xFFC0, LENGTH = 0x0002
  VECT16           : ORIGIN = 0xFFC2, LENGTH = 0x0002
  VECT17           : ORIGIN = 0xFFC4, LENGTH = 0x0002
  VECT18           : ORIGIN = 0xFFC6, LENGTH = 0x0002
  VECT19           : ORIGIN = 0xFFC8, LENGTH = 0x0002
  VECT20           : ORIGIN = 0xFFCA, LENGTH = 0x0002
  VECT21           : ORIGIN = 0xFFCC, LENGTH = 0x0002
  VECT22           : ORIGIN = 0xFFCE, LENGTH = 0x0002
  VECT23           : ORIGIN = 0xFFD0, LENGTH = 0x0002
  VECT24           : ORIGIN = 0xFFD2, LENGTH = 0x0002
  VECT25           : ORIGIN = 0xFFD4, LENGTH = 0x0002
  VECT26           : ORIGIN = 0xFFD6, LENGTH = 0x0002
  VECT27           : ORIGIN = 0xFFD8, LENGTH = 0x0002
  VECT28           : ORIGIN = 0xFFDA, LENGTH = 0x0002
  VECT29           : ORIGIN = 0xFFDC, LENGTH = 0x0002
  VECT30           : ORIGIN = 0xFFDE, LENGTH = 0x0002
  VECT31           : ORIGIN = 0xFFE0, LENGTH = 0x0002
  VECT32           : ORIGIN = 0xFFE2, LENGTH = 0x0002
  VECT33           : ORIGIN = 0xFFE4, LENGTH = 0x0002
  VECT34           : ORIGIN = 0xFFE6, LENGTH = 0x0002
  VECT35           : ORIGIN = 0xFFE8, LENGTH = 0x0002
  VECT36           : ORIGIN = 0xFFEA, LENGTH = 0x0002
  VECT37           : ORIGIN = 0xFFEC, LENGTH = 0x0002
  VECT38           : ORIGIN = 0xFFEE, LENGTH = 0x0002
  VECT39           : ORIGIN = 0xFFF0, LENGTH = 0x0002
  VECT40           : ORIGIN = 0xFFF2, LENGTH = 0x0002
  VECT41           : ORIGIN = 0xFFF4, LENGTH = 0x0002
  VECT42           : ORIGIN = 0xFFF6, LENGTH = 0x0002
  VECT43           : ORIGIN = 0xFFF8, LENGTH = 0x0002
  VECT44           : ORIGIN = 0xFFFA, LENGTH = 0x0002
  VECT45           : ORIGIN = 0xFFFC, LENGTH = 0x0002
  RESETVEC         : ORIGIN = 0xFFFE, LENGTH = 0x0002
}

SECTIONS
{
  .jtagsignature      : {} > JTAGSIGNATURE
  .bslsignature       : {} > BSLSIGNATURE
  .bslconfigsignature : {} > BSLCONFIGURATIONSIGNATURE
  .bslconfig          : {} > BSLCONFIGURATION
  .bsli2caddress      : {} > BSLI2CADDRESS

  __interrupt_vector_0   : { KEEP (*(__interrupt_vector_0 )) } > VECT0
  __interrupt_vector_1   : { KEEP (*(__interrupt_vector_1 )) } > VECT1
  __interrupt_vector_2   : { KEEP (*(__interrupt_vector_2 )) } > VECT2
  __interrupt_vector_3   : { KEEP (*(__interrupt_vector_3 )) } > VECT3
  __interrupt_vector_4   : { KEEP (*(__interrupt_vector_4 )) } > VECT4
  __interrupt_vector_5   : { KEEP (*(__interrupt_vector_5 )) } > VECT5
  __interrupt_vector_6   : { KEEP (*(__interrupt_vector_6 )) } > VECT6
  __interrupt_vector_7   : { KEEP (*(__interrupt_vector_7 )) } > VECT7
  __interrupt_vector_8   : { KEEP (*(__interrupt_vector_8 )) } > VECT8
  __interrupt_vector_9   : { KEEP (*(__interrupt_vector_9 )) } > VECT9
  __interrupt_vector_10  : { KEEP (*(__interrupt_vector_10)) } > VECT10
  __interrupt_vector_11  : { KEEP (*(__interrupt_vector_11)) } > VECT11
  __interrupt_vector_12  : { KEEP (*(__interrupt_vector_12)) } > VECT12
  __interrupt_vector_13  : { KEEP (*(__interrupt_vector_13)) } > VECT13
  __interrupt_vector_14  : { KEEP (*(__interrupt_vector_14)) } > VECT14
  __interrupt_vector_15  : { KEEP (*(__interrupt_vector_15)) } > VECT15
  __interrupt_vector_16  : { KEEP (*(__interrupt_vector_16)) } > VECT16
  __interrupt_vector_17  : { KEEP (*(__interrupt_vector_17)) } > VECT17
  __interrupt_vector_18  : { KEEP (*(__interrupt_vector_18)) } > VECT18
  __interrupt_vector_19  : { KEEP (*(__interrupt_vector_19)) KEEP (*(__interrupt_vector_captivate)) } > VECT19
  __interrupt_vector_20  : { KEEP (*(__interrupt_vector_20)) KEEP (*(__interrupt_vector_ecomp0)) } > VECT20
  __interrupt_vector_21  : { KEEP (*(__interrupt_vector_21)) KEEP (*(__interrupt_vector_port6)) } > VECT21
  __interrupt_vector_22  : { KEEP (*(__interrupt_vector_22)) KEEP (*(__interrupt_vector_port5)) } > VECT22
  __interrupt_vector_23  : { KEEP (*(__interrupt_vector_23)) KEEP (*(__interrupt_vector_port4)) } > VECT23
  __interrupt_vector_24  : { KEEP (*(__interrupt_vector_24)) KEEP (*(__interrupt_vector_port3)) } > VECT24
  __interrupt_vector_25  : { KEEP (*(__interrupt_vector_25)) KEEP (*(__interrupt_vector_port2)) } > VECT25
  __interrupt_vector_26  : { KEEP (*(__interrupt_vector_26)) KEEP (*(__interrupt_vector_port1)) } > VECT26
  __interrupt_vector_27  : { KEEP (*(__interrupt_vector_27)) KEEP (*(__interrupt_vector_adc)) } > VECT27
  __interrupt_vector_28  : { KEEP (*(__interrupt_vector_28)) KEEP (*(__interrupt_vector_eusci_b1)) } > VECT28
  __interrupt_vector_29  : { KEEP (*(__interrupt_vector_29)) KEEP (*(__interrupt_vector_eusci_b0)) } > VECT29
  __interrupt_vector_30  : { KEEP (*(__interrupt_vector_30)) KEEP (*(__interrupt_vector_eusci_a1)) } > VECT30
  __interrupt_vector_31  : { KEEP (*(__interrupt_vector_31)) KEEP (*(__interrupt_vector_eusci_a0)) } > VECT31
  __interrupt_vector_32  : { KEEP (*(__interrupt_vector_32)) KEEP (*(__interrupt_vector_wdt)) } > VECT32
  __interrupt_vector_33  : { KEEP (*(__interrupt_vector_33)) KEEP (*(__interrupt_vector_rtc)) } > VECT33
  __interrupt_vector_34  : { KEEP (*(__interrupt_vector_34)) KEEP (*(__interrupt_vector_timer0_b1)) } > VECT34
  __interrupt_vector_35  : { KEEP (*(__interrupt_vector_35)) KEEP (*(__interrupt_vector_timer0_b0)) } > VECT35
  __interrupt_vector_36  : { KEEP (*(__interrupt_vector_36)) KEEP (*(__interrupt_vector_timer3_a1)) } > VECT36
  __interrupt_vector_37  : { KEEP (*(__interrupt_vector_37)) KEEP (*(__interrupt_vector_timer3_a0)) } > VECT37
  __interrupt_vector_38  : { KEEP (*(__interrupt_vector_38)) KEEP (*(__interrupt_vector_timer2_a1)) } > VECT38
  __interrupt_vector_39  : { KEEP (*(__interrupt_vector_39)) KEEP (*(__interrupt_vector_timer2_a0)) } > VECT39
  __interrupt_vector_40  : { KEEP (*(__interrupt_vector_40)) KEEP (*(__interrupt_vector_timer1_a1)) } > VECT40
  __interrupt_vector_41  : { KEEP (*(__interrupt_vector_41)) KEEP (*(__interrupt_vector_timer1_a0)) } > VECT41
  __interrupt_vector_42  : { KEEP (*(__interrupt_vector_42)) KEEP (*(__interrupt_vector_timer0_a1)) } > VECT42
  __interrupt_vector_43  : { KEEP (*(__interrupt_vector_43)) KEEP (*(__interrupt_vector_timer0_a0)) } > VECT43
  __interrupt_vector_44  : { KEEP (*(__interrupt_vector_44)) KEEP (*(__interrupt_vector_unmi)) } > VECT44
  __interrupt_vector_45  : { KEEP (*(__interrupt_vector_45)) KEEP (*(__interrupt_vector_sysnmi)) } > VECT45
  __reset_vector :
  {
    KEEP (*(__interrupt_vector_46))
    KEEP (*(__interrupt_vector_reset))
    KEEP (*(.resetvec))
  } > RESETVEC

  .rodata :
  {
    . = ALIGN(2);
    *(.plt)
    *(.rodata .rodata.* .gnu.linkonce.r.* .const .const:*)
    *(.rodata1)
    *(.lower.rodata.* .lower.rodata)
    KEEP (*(.gcc_except_table)) *(.gcc_except_table.*)
  } > FRAM

  /* Note: This is a separate .rodata section for sections which are
     read only but which older linkers treat as read-write.
     This prevents older linkers from marking the entire .rodata
     section as read-write.  */
  .rodata2 :
  {
    . = ALIGN(2);
    PROVIDE (__preinit_array_start = .);
    KEEP (*(.preinit_array))
    PROVIDE (__preinit_array_end = .);
    . = ALIGN(2);
    PROVIDE (__init_array_start = .);
    KEEP (*(SORT(.init_array.*)))
    KEEP (*(.init_array))
    PROVIDE (__init_array_end = .);
    . = ALIGN(2);
    PROVIDE (__fini_array_start = .);
    KEEP (*(.fini_array))
    KEEP (*(SORT(.fini_array.*)))
    PROVIDE (__fini_array_end = .);
    . = ALIGN(2);
    *(.eh_frame_hdr)
    KEEP (*(.eh_frame))

    /* gcc uses crtbegin.o to find the start of the constructors, so
       we make sure it is first.  Because this is a wildcard, it
       doesn't matter if the user does not actually link against
       crtbegin.o; the linker won't look for a file to match a
       wildcard.  The wildcard also means that it doesn't matter which
       directory crtbegin.o is in.  */
    KEEP (*crtbegin*.o(.ctors))

    /* We don't want to include the .ctor section from the crtend.o
       file until after the sorted ctors.  The .ctor section from
       the crtend file contains the end of ctors marker and it must
       be last */
    KEEP (*(EXCLUDE_FILE (*crtend*.o ) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))

    KEEP (*crtbegin*.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend*.o ) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
  } > FRAM


  /* This section contains data that is initialised during load
     but not on application reset.  */
  .persistent :
  {
    . = ALIGN(2);
    PROVIDE (__persistent_start = .);
    *(.persistent)
    . = ALIGN(2);
    PROVIDE (__persistent_end = .);
  } > FRAM

  .tinyram : {} > TINYRAM

  .data :
  {
    . = ALIGN(2);
    PROVIDE (__datastart = .);

    KEEP (*(.jcr))
    *(.data.rel.ro.local) *(.data.rel.ro*)
    *(.dynamic)

    *(.data .data.* .gnu.linkonce.d.*)
    KEEP (*(.gnu.linkonce.d.*personality*))
    SORT(CONSTRUCTORS)
    *(.data1)
    *(.got.plt) *(.got)

    /* We want the small data sections together, so single-instruction offsets
       can access them all, and initialized data all before uninitialized, so
       we can shorten the on-disk segment size.  */
    . = ALIGN(2);
    *(.sdata .sdata.* .gnu.linkonce.s.* D_2 D_1)

    . = ALIGN(2);

    *(.lower.data.* .lower.data)
    . = ALIGN(2);

    _edata = .;
    PROVIDE (edata = .);
    PROVIDE (__dataend = .);
  } > RAM AT> FRAM

  /* Note that crt0 assumes this is a multiple of two; all the
     start/stop symbols are also assumed word-aligned.  */
  PROVIDE(__romdatastart = LOADADDR(.data));
  PROVIDE (__romdatacopysize = SIZEOF(.data));


  .bss :
  {
    . = ALIGN(2);
    PROVIDE (__bssstart = .);
    *(.dynbss)
    *(.sbss .sbss.*)
    *(.bss .bss.* .gnu.linkonce.b.*)
    *(.lower.bss.* .lower.bss)
    . = ALIGN(2);
    *(COMMON)
    PROVIDE (__bssend = .);
  } > RAM
  PROVIDE (__bsssize = SIZEOF(.bss));


  /* This section contains data that is not initialised during load
     or application reset.  */
  .noinit (NOLOAD) :
  {
    . = ALIGN(2);
    PROVIDE (__noinit_start = .);
    *(.noinit)
    . = ALIGN(2);
    PROVIDE (__noinit_end = .);
  } > RAM

  /* We create this section so that "end" will always be in the
     RAM region (matching .stack below), even if the .bss
     section is empty.  */
  .heap (NOLOAD) :
  {
    . = ALIGN(2);
    __heap_start__ = .;
    _end = __heap_start__;
    PROVIDE (end = .);
    KEEP (*(.heap))
    _end = .;
    PROVIDE (end = .);
    /* This word is here so that the section is not empty, and thus
       not discarded by the linker.  The actual value does not matter
       and is ignored.  */
    LONG(0);
    __heap_end__ = .;
    __HeapLimit = __heap_end__;
  } > RAM
  /* WARNING: Do not place anything in RAM here.
     The heap section must be the last section in RAM and the stack
     section must be placed at the very end of the RAM region.  */

  .stack (ORIGIN (RAM) + LENGTH(RAM)) :
  {
    PROVIDE (__stack = .);
    *(.stack)
  }

/DISCARD/ : {
    *(.text:CAPT_computeIIRFilter)
    *(.text:CAPT_computeIIRFilter32)
    *(.text:CAPT_appHandler)
    *(.text:CAPT_applyAutoMultiFreqCycleComp)
    *(.text:CAPT_applyCycleComp)
    *(.text:CAPT_applyCycleFSM)
    *(.text:CAPT_applySensorFreq)
    *(.text:CAPT_applySensorParams)
    *(.text:CAPT_appSleep)
    *(.text:CAPT_appStart)
    *(.text:CAPT_blockOnFlag)
    *(.text:CAPT_bypassFSM)
    /* *(.text:CAPT_calibrateBiasCurrentTrim) */
    *(.text:CAPT_calibrateGain)
    /* *(.text:CAPT_calibrateOffset) */
    /* *(.text:CAPT_calibrateSensor) */
    *(.text:CAPT_calibrateSensorWithEMC)
    *(.text:CAPT_calibrateUI)
    *(.text:CAPT_cleanupAfterConversion)
    *(.text:CAPT_clearCAPLPMCFG)
    *(.text:CAPT_clearCAPSTART)
    *(.text:CAPT_clearCCounter)
    *(.text:CAPT_clearChannelActive)
    *(.text:CAPT_clearChannelEnable)
    *(.text:CAPT_clearChannelOffState)
    *(.text:CAPT_clearChannelOnState)
    *(.text:CAPT_clearCycleIO)
    *(.text:CAPT_clearIFG)
    /* *(.text:CAPT_clearInputImpedanceBiasCurrent) */
    *(.text:CAPT_clearSensorProxTouch)
    *(.text:CAPT_clearTimer)
    *(.text:CAPT_computeIIRFilterFast)
    *(.text:CAPT_computeIIRFilterFast32)
    *(.text:CAPT_computeJitterFilter)
    *(.text:CAPT_computeRelNoiseComp)
    *(.text:CAPT_convertAbsToRel)
    *(.text:CAPT_convertRelToAbs)
    *(.text:CAPT_correctInvalidMultiFreqCalibration)
    *(.text:CAPT_disableFrequencyHopping)
    *(.text:CAPT_disableISR)
    *(.text:CAPT_disableRefCap)
    *(.text:CAPT_disableSensorIO)
    *(.text:CAPT_disableSensorSyncEvent)
    *(.text:CAPT_disableShieldIO)
    *(.text:CAPT_disableTimerTrigMeasurement)
    *(.text:CAPT_enableFrequencyHopping)
    *(.text:CAPT_enableISR)
    *(.text:CAPT_enableRefCap)
    *(.text:CAPT_enableSensorIO)
    *(.text:CAPT_enableSensorSyncEvent)
    *(.text:CAPT_enableShieldIO)
    *(.text:CAPT_enableTimerTrigMeasurement)
    *(.text:CAPT_engageFSM)
    *(.text:CAPT_flagAllElementsForReseed)
    *(.text:CAPT_forceSensorIO)
    *(.text:CAPT_getElementMaxCountStatus)
    *(.text:CAPT_getElementStateBitField)
    *(.text:CAPT_getEMCConversionSettings)
    *(.text:CAPT_getGlobalFilteredNoiseLevel)
    *(.text:CAPT_getGlobalUIProximityStatus)
    /* *(.text:CAPT_getInputImpedanceBiasCurrent) */
    /* *(.text:CAPT_getInterruptVector) */
    *(.text:CAPT_getMaxRelThreshold)
    *(.text:CAPT_getRelNoiseStatusThreshold)
    /* *(.text:CAPT_init) */
    /* *(.text:CAPT_initSensor) */
    *(.text:CAPT_initSensorIO)
    /* *(.text:CAPT_initUI) */
    *(.text:CAPT_isFrequencyHopping)
    *(.text:CAPT_ISR)
    *(.text:CAPT_loadCycle)
    *(.text:CAPT_loadEMCConfig)
    *(.text:CAPT_pollCIPF)
    *(.text:CAPT_pollIFG)
    *(.text:CAPT_pollResetStatus)
    *(.text:CAPT_powerOff)
    *(.text:CAPT_powerOn)
    /* *(.text:CAPT_preProcessSlider) */
    *(.text:CAPT_processCycleWithEMC)
    /* *(.text:CAPT_processFSMCycle) */
    /* *(.text:CAPT_processSensor) */
    *(.text:CAPT_readCoarseGain)
    *(.text:CAPT_readConversion)
    *(.text:CAPT_readFineGain)
    *(.text:CAPT_readLTA)
    *(.text:CAPT_readOffsetTap)
    *(.text:CAPT_readTimerCompRegister)
    *(.text:CAPT_readTimerRegister)
    *(.text:CAPT_registerCallback)
    *(.text:CAPT_registerTrackPadGestureProcessing)
    *(.text:CAPT_registerTrackPadSensorProcessing)
    *(.text:CAPT_releaseStabilization)
    *(.text:CAPT_replaceFrequencyWithError)
    *(.text:CAPT_reseedFilter)
    *(.text:CAPT_reseedFilterAll)
    *(.text:CAPT_reset)
    *(.text:CAPT_resetGlobalFilteredNoiseLevel)
    *(.text:CAPT_resolveMultiFreqSet)
    *(.text:CAPT_saveCycleRawResults)
    *(.text:CAPT_saveCycleResults)
    *(.text:CAPT_saveCycleResultsAutoMultiFreq)
    *(.text:CAPT_selectCCounterInterval)
    /* *(.text:CAPT_selectElectrodeChargeVoltageSource) */
    /* *(.text:CAPT_selectInputImpedanceBiasCurrent) */
    /* *(.text:CAPT_selectInputImpedanceBiasCurrentTrim) */
    *(.text:CAPT_selectOversamplingCount)
    *(.text:CAPT_selectTimerSource)
    *(.text:CAPT_selectTimerSourceDivider)
    *(.text:CAPT_setCAPLPMCFG)
    *(.text:CAPT_setCAPSTART)
    *(.text:CAPT_setChannelActive)
    *(.text:CAPT_setChannelEnable)
    *(.text:CAPT_setChannelOffState)
    *(.text:CAPT_setChannelOnState)
    *(.text:CAPT_setCycleIO)
    *(.text:CAPT_setStabilization)
    *(.text:CAPT_startCCounter)
    *(.text:CAPT_startConversion)
    *(.text:CAPT_startConversionAndWaitUntilDone)
    *(.text:CAPT_startTimer)
    *(.text:CAPT_startWakeOnProxMode)
    *(.text:CAPT_startWakeOnProxModeWithEMCAuto)
    *(.text:CAPT_stopCCounter)
    *(.text:CAPT_stopTimer)
    *(.text:CAPT_stopWakeOnProxMode)
    *(.text:CAPT_stopWakeOnProxModeWithEMCAuto)
    *(.text:CAPT_testConversionFrequencyForNoise)
    /* *(.text:CAPT_testForMaxCountRecalibration) */
    /* *(.text:CAPT_testForNegativeTouchRecalibration) */
    *(.text:CAPT_testForRecalibration)
    *(.text:CAPT_unloadCycle)
    *(.text:CAPT_updateElementFilteredValuesWithEMC)
    *(.text:CAPT_updateFSMProx)
    *(.text:CAPT_updateFSMTouch)
    *(.text:CAPT_updateGlobalFilteredNoiseLevel)
    *(.text:CAPT_updateLTA)
    *(.text:CAPT_updateProjElementProxTouchWithEMC)
    *(.text:CAPT_updateProx)
    *(.text:CAPT_updateSelfElementProxTouchWithEMC)
    /* *(.text:CAPT_updateSensor) */
    *(.text:CAPT_updateSensorNoise)
    *(.text:CAPT_updateSensorProxTouch)
    *(.text:CAPT_updateSensorRawCount)
    *(.text:CAPT_updateSensorTimeout)
    *(.text:CAPT_updateSensorWithEMC)
    *(.text:CAPT_updateSensorWithEMCAuto)
    *(.text:CAPT_updateTouch)
    *(.text:CAPT_updateUI)
    *(.text:CAPT_writeCoarseGain)
    *(.text:CAPT_writeFineGain)
    *(.text:CAPT_writeOffsetTap)
    *(.text:CAPT_writeTimerCompRegister)

    *(.text:CS_bypassXT1)
    *(.text:CS_bypassXT1WithTimeout)
    *(.text:CS_clearAllOscFlagsWithTimeout)
    *(.text:CS_clearFaultFlag)
    *(.text:CS_disableClockRequest)
    *(.text:CS_disableFLLUnlock)
    *(.text:CS_disableREFOLP)
    *(.text:CS_disableVLOAutoOff)
    *(.text:CS_disableXT1AutomaticGainControl)
    *(.text:CS_disableXT1FaultOff)
    *(.text:CS_enableClockRequest)
    *(.text:CS_enableFLLUnlock)
    *(.text:CS_enableREFOLP)
    *(.text:CS_enableVLOAutoOff)
    *(.text:CS_enableXT1AutomaticGainControl)
    *(.text:CS_enableXT1FaultOff)
    *(.text:CS_getACLK)
    *(.text:CS_getFaultFlagStatus)
    *(.text:CS_getMCLK)
    *(.text:CS_getREFOLP)
    *(.text:CS_getREFOReady)
    *(.text:CS_getSMCLK)
    *(.text:CS_getXT1FaultOff)
    *(.text:CS_initClockSignal)
    /* *(.text:CS_initFLL) */
    *(.text:CS_initFLLCalculateTrim)
    *(.text:CS_initFLLLoadTrim)
    *(.text:CS_initFLLSettle)
    /* *(.text:CS_setExternalClockSource) */
    *(.text:CS_turnOffSMCLK)
    *(.text:CS_turnOffXT1)
    *(.text:CS_turnOnSMCLK)
    *(.text:CS_turnOnXT1HF)
    *(.text:CS_turnOnXT1HFWithTimeout)
    *(.text:CS_turnOnXT1LF)
    /* *(.text:CS_turnOnXT1LFWithTimeout) */
  }

  .text :
  {
    PROVIDE (_start = .);

    . = ALIGN(2);
    KEEP (*(SORT(.crt_*)))

    . = ALIGN(2);
    KEEP (*(.lowtext))

    . = ALIGN(2);
    *(.text .stub .text.* .gnu.linkonce.t.* .text:*)


    KEEP (*(.text.*personality*))
    /* .gnu.warning sections are handled specially by elf32.em.  */
    *(.gnu.warning)
    *(.interp .hash .dynsym .dynstr .gnu.version*)
    PROVIDE (__etext = .);
    PROVIDE (_etext = .);
    PROVIDE (etext = .);
    . = ALIGN(2);
    KEEP (*(.init))
    KEEP (*(.fini))
    KEEP (*(.tm_clone_table))

    /*
    KEEP(*(.text.abs))
    KEEP(*(.text.__mspabi_sllll))
    KEEP(*(.text.__mspabi_srlll))
    KEEP(*(.text.__mspabi_slll))
    KEEP(*(.text.__mspabi_srll))
    KEEP(*(.text.__mspabi_srli))
    KEEP(*(.text.__mspabi_slll_n))
    KEEP(*(.text.__mspabi_srll_n))
    KEEP(*(.text.__umulhisi2))
    KEEP(*(.text.__udivsi2))
    KEEP(*(.text.__muldi3))
    KEEP(*(.text.__divsi3))
    KEEP(*(.text.__divsi3))
    */
    KEEP(*(.text.__divhi3))
    KEEP(*(.text.divhi2))
    KEEP(*(.text.__divsi3))
    KEEP(*(.text.__mulsi2))
    KEEP(*(.text.__udivsi3))
  } > FRAM


  .info (NOLOAD) : {} > INFOMEM              /* MSP430 INFO FLASH MEMORY SEGMENTS */

  /* The rest are all not normally part of the runtime image.  */

  .MSP430.attributes 0 :
  {
    KEEP (*(.MSP430.attributes))
    KEEP (*(.gnu.attributes))
    KEEP (*(__TI_build_attributes))
  }

  /* Stabs debugging sections.  */
  .stab          0 : { *(.stab) }
  .stabstr       0 : { *(.stabstr) }
  .stab.excl     0 : { *(.stab.excl) }
  .stab.exclstr  0 : { *(.stab.exclstr) }
  .stab.index    0 : { *(.stab.index) }
  .stab.indexstr 0 : { *(.stab.indexstr) }
  .comment       0 : { *(.comment) }
  /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
  /* DWARF 1.  */
  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  /* GNU DWARF 1 extensions.  */
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  /* DWARF 1.1 and DWARF 2.  */
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  /* DWARF 2.  */
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line .debug_line.* .debug_line_end ) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  /* SGI/MIPS DWARF 2 extensions.  */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
  /* DWARF 3 */
  .debug_pubtypes 0 : { *(.debug_pubtypes) }
  .debug_ranges   0 : { *(.debug_ranges) }
  /* DWARF Extension.  */
  .debug_macro    0 : { *(.debug_macro) }

  /DISCARD/ : {
    *(.note.GNU-stack)
    *(.text:CAPT_computeIIRFilter)
    *(.text:CAPT_computeIIRFilter32)
  }
}


/****************************************************************************/
/* Include peripherals memory map                                           */
/****************************************************************************/

INCLUDE msp430fr2675_symbols.ld

