/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-EC.aml, Mon Jul 26 13:45:30 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007D (125)
 *     Revision         0x02
 *     Checksum         0x7F
 *     OEM ID           "CORP "
 *     OEM Table ID     "SsdtEC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "CORP ", "SsdtEC", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

