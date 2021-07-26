/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BKEY.aml, Mon Jul 26 13:45:30 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000DE (222)
 *     Revision         0x02
 *     Checksum         0x99
 *     OEM ID           "ACDT"
 *     OEM Table ID     "BKEY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "BKEY", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

    Scope (\)
    {
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x20)
            }
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x10)
            }
        }
    }
}

