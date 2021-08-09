/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-AWAC.aml, Mon Aug  9 12:27:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000047 (71)
 *     Revision         0x02
 *     Checksum         0x91
 *     OEM ID           "NRDN"
 *     OEM Table ID     "AWAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "NRDN", "AWAC", 0x00000000)
{
    External (STAS, IntObj)    // (from opcode)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            STAS = One
        }
    }
}

