/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-TPD0.aml, Mon Jul 26 13:45:30 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002A5 (677)
 *     Revision         0x02
 *     Checksum         0x42
 *     OEM ID           "hack"
 *     OEM Table ID     "TPXX"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TPXX", 0x00000000)
{
    External (_SB_.GNUM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.INUM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.HIDG, IntObj)    // (from opcode)
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1.TPD0.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.TP7G, IntObj)    // (from opcode)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments (from opcode)
    External (TPTY, FieldUnitObj)    // (from opcode)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            TPTY = Zero
        }
        Else
        {
        }
    }

    Scope (_SB.PCI0.I2C1.TPD0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!_OSI ("Darwin"))
            {
                Return (\_SB.PCI0.I2C1.TPD0.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
        }
    }

    Scope (_SB.PCI0.I2C1)
    {
        Device (TPDX)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, _Y00, Exclusive,
                    )
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y01)
                {
                    0x00000000,
                }
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0017
                    }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C1.TPDX._Y00._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C1.TPDX._Y00._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C1.TPDX._Y01._INT, INT2)  // _INT: Interrupts
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                INT1 = GNUM (0x0302000B)
                INT2 = INUM (0x0302000B)
                SHPO (0x0302000B, One)
                _HID = "MSFT0001"
                _SUB = "SYNA0001"
                BADR = 0x2C
                HID2 = 0x20
                Return (Zero)
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_SUB, "XXXX0000")  // _SUB: Subsystem ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Return (HID2)
            }

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

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFI))
            }
        }
    }
}

