/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GPU.aml, Mon Jul 26 13:45:30 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000212 (530)
 *     Revision         0x02
 *     Checksum         0x7F
 *     OEM ID           "Apple"
 *     OEM Table ID     "Nurdin"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "Apple", "Nurdin", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.XDSM, MethodObj)    // 4 Arguments (from opcode)

    Scope (_SB.PCI0.GFX0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            If (!_OSI ("Darwin"))
            {
                Return (\_SB.PCI0.GFX0.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x18)
                {
                    "AAPL,ig-platform-id", 
                    Buffer (0x04)
                    {
                         0x09, 0x00, 0xA5, 0x3E                         
                    }, 

                    "model", 
                    Buffer (0x17)
                    {
                        "Intel UHD Graphics 630"
                    }, 

                    "device_type", 
                    Buffer (0x1A)
                    {
                        "VGA compatible controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x9B, 0x3E, 0x00, 0x00                         
                    }, 

                    "disable-external-gpu", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 

                    "force-online", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 

                    "force-online-framebuffers", 
                    Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 
                    }, 

                    "framebuffer-patch-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 

                    "framebuffer-stolenmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x30, 0x01                         
                    }, 

                    "framebuffer-fbmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x90, 0x00                         
                    }, 

                    "framebuffer-unifiedmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0xC0                         
                    }
                })
            }
        }
    }
}

