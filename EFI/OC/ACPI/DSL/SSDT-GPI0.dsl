/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GPI0.aml, Mon Jul 26 13:45:30 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000049 (73)
 *     Revision         0x02
 *     Checksum         0x5D
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "GPXX"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "GPXX", 0x00000000)
{
    External (GPHD, FieldUnitObj)    // (from opcode)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPHD = Zero
        }
        Else
        {
        }
    }
}

