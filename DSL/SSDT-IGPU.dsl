/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-IGPU.aml, Mon Aug 23 16:56:32 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002C2 (706)
 *     Revision         0x02
 *     Checksum         0x63
 *     OEM ID           "Apple"
 *     OEM Table ID     "Nurdin"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
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
                Return (Package (0x1C)
                {
                    "AAPL,ig-platform-id", 
                    Buffer (0x04)
                    {
                         0x09, 0x00, 0x9B, 0x3E                         
                    }, 

                    "AAPL00,override-no-connect", 
                    Buffer (0x80)
                    {
                        /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
                        /* 0008 */  0x4D, 0x10, 0x7C, 0x9C, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0x09, 0x1D, 0x01, 0x04, 0x90, 0x22, 0x13, 0x60,
                        /* 0018 */  0xE6, 0x6F, 0xB1, 0xA7, 0x55, 0x4C, 0x9E, 0x25,
                        /* 0020 */  0x0C, 0x50, 0x54, 0x00, 0x00, 0x00, 0x01, 0x01,
                        /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                        /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x1A, 0x36,
                        /* 0038 */  0x80, 0xA0, 0x70, 0x38, 0x1E, 0x40, 0x30, 0x20,
                        /* 0040 */  0x35, 0x00, 0x58, 0xC2, 0x10, 0x00, 0x00, 0x18,
                        /* 0048 */  0x54, 0x2B, 0x80, 0xA0, 0x70, 0x38, 0x1F, 0x40,
                        /* 0050 */  0x30, 0x20, 0x35, 0x00, 0x58, 0xC2, 0x10, 0x00,
                        /* 0058 */  0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
                        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC,
                        /* 0070 */  0x00, 0x4C, 0x51, 0x31, 0x35, 0x36, 0x4D, 0x31,
                        /* 0078 */  0x4A, 0x57, 0x30, 0x31, 0x0A, 0x20, 0x00, 0xD7 
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
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

                    "enable-backlight-registers-fix", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 

                    "agdpmod", 
                    Buffer (0x08)
                    {
                        "vit9696"
                    }, 

                    "force-online", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
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

