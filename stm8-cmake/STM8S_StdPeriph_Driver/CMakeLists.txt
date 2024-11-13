set(STM8S_SOURCES   ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_adc1.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_adc2.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_awu.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_beep.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_can.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_clk.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_exti.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_flash.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_gpio.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_i2c.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_itc.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_iwdg.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_rst.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_spi.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim1.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim2.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim3.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim4.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim5.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_tim6.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_uart1.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_uart2.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_uart3.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_uart4.c
                    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm8s_wwdg.c)

add_library(stm8s STATIC ${STM8S_SOURCES})
target_include_directories(stm8s PRIVATE    ${CMAKE_CURRENT_SOURCE_DIR}/inc
                                            ${CMAKE_CURRENT_SOURCE_DIR})