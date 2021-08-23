/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-MCHC.aml, Mon Aug 23 16:56:32 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000068 (104)
 *     Revision         0x02
 *     Checksum         0xDB
 *     OEM ID           "hack"
 *     OEM Table ID     "_MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
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

