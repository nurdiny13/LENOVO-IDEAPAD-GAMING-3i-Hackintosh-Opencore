/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PLNF-CFL.aml, Mon Aug  9 12:27:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008C (140)
 *     Revision         0x02
 *     Checksum         0x06
 *     OEM ID           "ACDT"
 *     OEM Table ID     "PNLFCFL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "PNLFCFL", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)

    Device (_SB.PCI0.GFX0.PNLF)
    {
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, 0x13)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

