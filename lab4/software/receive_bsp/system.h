/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2' in SOPC Builder design 'microprocessor'
 * SOPC Builder design path: ../../microprocessor.sopcinfo
 *
 * Generated: Thu May 26 12:30:15 PDT 2016
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00002820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0xe
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00001020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0xe
#define ALT_CPU_NAME "nios2"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00001000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00002820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0xe
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00001020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0xe
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00001000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x3050
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x3050
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x3050
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "microprocessor"


/*
 * character_received configuration
 *
 */

#define ALT_MODULE_CLASS_character_received altera_avalon_pio
#define CHARACTER_RECEIVED_BASE 0x3010
#define CHARACTER_RECEIVED_BIT_CLEARING_EDGE_REGISTER 0
#define CHARACTER_RECEIVED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CHARACTER_RECEIVED_CAPTURE 0
#define CHARACTER_RECEIVED_DATA_WIDTH 1
#define CHARACTER_RECEIVED_DO_TEST_BENCH_WIRING 0
#define CHARACTER_RECEIVED_DRIVEN_SIM_VALUE 0
#define CHARACTER_RECEIVED_EDGE_TYPE "NONE"
#define CHARACTER_RECEIVED_FREQ 50000000
#define CHARACTER_RECEIVED_HAS_IN 1
#define CHARACTER_RECEIVED_HAS_OUT 0
#define CHARACTER_RECEIVED_HAS_TRI 0
#define CHARACTER_RECEIVED_IRQ -1
#define CHARACTER_RECEIVED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CHARACTER_RECEIVED_IRQ_TYPE "NONE"
#define CHARACTER_RECEIVED_NAME "/dev/character_received"
#define CHARACTER_RECEIVED_RESET_VALUE 0
#define CHARACTER_RECEIVED_SPAN 16
#define CHARACTER_RECEIVED_TYPE "altera_avalon_pio"


/*
 * character_sent configuration
 *
 */

#define ALT_MODULE_CLASS_character_sent altera_avalon_pio
#define CHARACTER_SENT_BASE 0x3020
#define CHARACTER_SENT_BIT_CLEARING_EDGE_REGISTER 0
#define CHARACTER_SENT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CHARACTER_SENT_CAPTURE 0
#define CHARACTER_SENT_DATA_WIDTH 1
#define CHARACTER_SENT_DO_TEST_BENCH_WIRING 0
#define CHARACTER_SENT_DRIVEN_SIM_VALUE 0
#define CHARACTER_SENT_EDGE_TYPE "NONE"
#define CHARACTER_SENT_FREQ 50000000
#define CHARACTER_SENT_HAS_IN 1
#define CHARACTER_SENT_HAS_OUT 0
#define CHARACTER_SENT_HAS_TRI 0
#define CHARACTER_SENT_IRQ -1
#define CHARACTER_SENT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CHARACTER_SENT_IRQ_TYPE "NONE"
#define CHARACTER_SENT_NAME "/dev/character_sent"
#define CHARACTER_SENT_RESET_VALUE 0
#define CHARACTER_SENT_SPAN 16
#define CHARACTER_SENT_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x3050
#define JTAG_UART_IRQ 5
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * load configuration
 *
 */

#define ALT_MODULE_CLASS_load altera_avalon_pio
#define LOAD_BASE 0x3000
#define LOAD_BIT_CLEARING_EDGE_REGISTER 0
#define LOAD_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LOAD_CAPTURE 0
#define LOAD_DATA_WIDTH 1
#define LOAD_DO_TEST_BENCH_WIRING 0
#define LOAD_DRIVEN_SIM_VALUE 0
#define LOAD_EDGE_TYPE "NONE"
#define LOAD_FREQ 50000000
#define LOAD_HAS_IN 0
#define LOAD_HAS_OUT 1
#define LOAD_HAS_TRI 0
#define LOAD_IRQ -1
#define LOAD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LOAD_IRQ_TYPE "NONE"
#define LOAD_NAME "/dev/load"
#define LOAD_RESET_VALUE 0
#define LOAD_SPAN 16
#define LOAD_TYPE "altera_avalon_pio"


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x1000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "microprocessor_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 4096
#define ONCHIP_MEMORY_SPAN 4096
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * parallel_data_bus_in configuration
 *
 */

#define ALT_MODULE_CLASS_parallel_data_bus_in altera_avalon_pio
#define PARALLEL_DATA_BUS_IN_BASE 0x3040
#define PARALLEL_DATA_BUS_IN_BIT_CLEARING_EDGE_REGISTER 0
#define PARALLEL_DATA_BUS_IN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PARALLEL_DATA_BUS_IN_CAPTURE 0
#define PARALLEL_DATA_BUS_IN_DATA_WIDTH 8
#define PARALLEL_DATA_BUS_IN_DO_TEST_BENCH_WIRING 0
#define PARALLEL_DATA_BUS_IN_DRIVEN_SIM_VALUE 0
#define PARALLEL_DATA_BUS_IN_EDGE_TYPE "NONE"
#define PARALLEL_DATA_BUS_IN_FREQ 50000000
#define PARALLEL_DATA_BUS_IN_HAS_IN 1
#define PARALLEL_DATA_BUS_IN_HAS_OUT 0
#define PARALLEL_DATA_BUS_IN_HAS_TRI 0
#define PARALLEL_DATA_BUS_IN_IRQ -1
#define PARALLEL_DATA_BUS_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PARALLEL_DATA_BUS_IN_IRQ_TYPE "NONE"
#define PARALLEL_DATA_BUS_IN_NAME "/dev/parallel_data_bus_in"
#define PARALLEL_DATA_BUS_IN_RESET_VALUE 0
#define PARALLEL_DATA_BUS_IN_SPAN 16
#define PARALLEL_DATA_BUS_IN_TYPE "altera_avalon_pio"


/*
 * parallel_data_bus_out configuration
 *
 */

#define ALT_MODULE_CLASS_parallel_data_bus_out altera_avalon_pio
#define PARALLEL_DATA_BUS_OUT_BASE 0x0
#define PARALLEL_DATA_BUS_OUT_BIT_CLEARING_EDGE_REGISTER 0
#define PARALLEL_DATA_BUS_OUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PARALLEL_DATA_BUS_OUT_CAPTURE 0
#define PARALLEL_DATA_BUS_OUT_DATA_WIDTH 8
#define PARALLEL_DATA_BUS_OUT_DO_TEST_BENCH_WIRING 0
#define PARALLEL_DATA_BUS_OUT_DRIVEN_SIM_VALUE 0
#define PARALLEL_DATA_BUS_OUT_EDGE_TYPE "NONE"
#define PARALLEL_DATA_BUS_OUT_FREQ 50000000
#define PARALLEL_DATA_BUS_OUT_HAS_IN 0
#define PARALLEL_DATA_BUS_OUT_HAS_OUT 1
#define PARALLEL_DATA_BUS_OUT_HAS_TRI 0
#define PARALLEL_DATA_BUS_OUT_IRQ -1
#define PARALLEL_DATA_BUS_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PARALLEL_DATA_BUS_OUT_IRQ_TYPE "NONE"
#define PARALLEL_DATA_BUS_OUT_NAME "/dev/parallel_data_bus_out"
#define PARALLEL_DATA_BUS_OUT_RESET_VALUE 0
#define PARALLEL_DATA_BUS_OUT_SPAN 16
#define PARALLEL_DATA_BUS_OUT_TYPE "altera_avalon_pio"


/*
 * transmit_enable configuration
 *
 */

#define ALT_MODULE_CLASS_transmit_enable altera_avalon_pio
#define TRANSMIT_ENABLE_BASE 0x3030
#define TRANSMIT_ENABLE_BIT_CLEARING_EDGE_REGISTER 0
#define TRANSMIT_ENABLE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TRANSMIT_ENABLE_CAPTURE 0
#define TRANSMIT_ENABLE_DATA_WIDTH 1
#define TRANSMIT_ENABLE_DO_TEST_BENCH_WIRING 0
#define TRANSMIT_ENABLE_DRIVEN_SIM_VALUE 0
#define TRANSMIT_ENABLE_EDGE_TYPE "NONE"
#define TRANSMIT_ENABLE_FREQ 50000000
#define TRANSMIT_ENABLE_HAS_IN 0
#define TRANSMIT_ENABLE_HAS_OUT 1
#define TRANSMIT_ENABLE_HAS_TRI 0
#define TRANSMIT_ENABLE_IRQ -1
#define TRANSMIT_ENABLE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRANSMIT_ENABLE_IRQ_TYPE "NONE"
#define TRANSMIT_ENABLE_NAME "/dev/transmit_enable"
#define TRANSMIT_ENABLE_RESET_VALUE 0
#define TRANSMIT_ENABLE_SPAN 16
#define TRANSMIT_ENABLE_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
