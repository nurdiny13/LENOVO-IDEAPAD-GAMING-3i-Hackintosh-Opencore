/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-NR13.aml, Mon Aug 23 16:56:32 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000BB5 (2997)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "Apple"
 *     OEM Table ID     "Nurdin"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "Apple", "Nurdin", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.B0D4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.B0D4.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.CNVW, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.CNVW.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.HDAS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAS.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.HECI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HECI.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.RP15.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP15.PXSX.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.SAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.XDSM, MethodObj)    // 4 Arguments (from opcode)

    Scope (_SB.PCI0.PEG0.PEGP)
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
                Return (\_SB.PCI0.PEG0.PEGP.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x0C)
                {
                    "IOName", 
                    "#nurdiny13", 
                    "model", 
                    Buffer (0x29)
                    {
                        "NVIDIA GeForce GTX 1650 Ti (Unsupported)"
                    }, 

                    "device_type", 
                    Buffer (0x1F)
                    {
                        "Unsupported Display Controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "class-code", 
                    Buffer (0x04)
                    {
                         0xFF, 0xFF, 0xFF, 0xFF                         
                    }, 

                    "name", 
                    Buffer (0x09)
                    {
                        "#display"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.HECI)
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
                Return (\_SB.PCI0.HECI.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x2D)
                    {
                        "Intel Corporation Comet Lake IMEI Controller"
                    }, 

                    "device_type", 
                    Buffer (0x19)
                    {
                        "Communication controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
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
                Return (\_SB.PCI0.SAT0.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x33)
                    {
                        "Intel Corporation Comet Lake Serial ATA Controller"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "SATA controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.XHC)
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
                Return (\_SB.PCI0.XHC.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x3A)
                    {
                        "Intel Corporation Comet Lake USB 3.1 xHCI Host Controller"
                    }, 

                    "device_type", 
                    Buffer (0x0F)
                    {
                        "USB controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.CNVW)
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
                Return (\_SB.PCI0.CNVW.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x27)
                    {
                        "Intel Corporation Wi-Fi 6 AX201 160MHz"
                    }, 

                    "device_type", 
                    Buffer (0x13)
                    {
                        "Network controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.RP15.PXSX)
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
                Return (\_SB.PCI0.RP15.PXSX.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x42)
                    {
                        "Realtek RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "Ethernet controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.B0D4)
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
                Return (\_SB.PCI0.B0D4.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x24)
                    {
                        "Intel Corporation Thermal Subsystem"
                    }, 

                    "device_type", 
                    Buffer (0x1D)
                    {
                        "Signal processing controller"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.SBUS)
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
                Return (\_SB.PCI0.SBUS.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x06)
                {
                    "model", 
                    Buffer (0x32)
                    {
                        "Intel Corporation Comet Lake PCH SMBus Controller"
                    }, 

                    "device_type", 
                    Buffer (0x06)
                    {
                        "SMBus"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.HDAS)
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
                Return (\_SB.PCI0.HDAS.XDSM (Arg0, Arg1, Arg2, Arg3))
            }
            Else
            {
                Return (Package (0x0E)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    Buffer (0x23)
                    {
                        "Realtek ALC257 HD Audio Controller"
                    }, 

                    "alc-layout-id", 
                    Buffer (0x04)
                    {
                         0x0B, 0x00, 0x00, 0x00                         
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x0B, 0x00, 0x00, 0x00                         
                    }, 

                    "model", 
                    Buffer (0x23)
                    {
                        "Realtek ALC257 HD Audio Controller"
                    }, 

                    "PinConfigurations", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device_type", 
                    Buffer (0x11)
                    {
                        "Audio Controller"
                    }
                })
            }
        }
    }

    Device (_SB.PCI0.NR13)
    {
        Name (_ADR, 0x00140002)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x08)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer (0x2E)
                {
                    "Patched by nurdiny13 - facebook.com/nurdiny13"
                }, 

                "name", 
                Buffer (0x0A)
                {
                    "Nurdiny13"
                }, 

                "device_type", 
                Buffer (0x0A)
                {
                    "Nurdiny13"
                }
            })
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
    }

    Device (_SB.PCI0.NY_1)
    {
        Name (_ADR, 0x00080000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x0A)
            {
                "AAPL,slot-name", 
                "Built In", 
                "built-in", 
                Buffer (One)
                {
                     0x00                                           
                }, 

                "name", 
                "Gaussian Mixture", 
                "device_type", 
                Buffer (0x11)
                {
                    "Gaussian Mixture"
                }, 

                "model", 
                Buffer (0x38)
                {
                    "Intel Corporation Series Chipset Gaussian Mixture Model"
                }
            })
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
    }

    Method (DTGP, 5, NotSerialized)
    {
        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If ((Arg1 == One))
            {
                If ((Arg2 == Zero))
                {
                    Arg4 = Buffer (One)
                        {
                             0x03                                           
                        }
                    Return (One)
                }

                If ((Arg2 == One))
                {
                    Return (One)
                }
            }
        }

        Arg4 = Buffer (One)
            {
                 0x00                                           
            }
        Return (Zero)
    }
}

