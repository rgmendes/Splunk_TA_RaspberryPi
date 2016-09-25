#! /bin/sh
for c in $(seq 1 60)
do
TIME=$(date +"%Y/%m/%d %H:%M:%S.%3N")
TEMP=$(vcgencmd measure_temp)
VOLTS=$(vcgencmd measure_volts)
CPU_CLOCK_ARM=$(vcgencmd measure_clock arm )
CPU_CLOCK_CORE=$(vcgencmd measure_clock core)
CPU_CLOCK_H264=$(vcgencmd measure_clock h264)
CPU_CLOCK_ISP=$(vcgencmd measure_clock isp)
CPU_CLOCK_V3D=$(vcgencmd measure_clock 3vd)
CPU_CLOCK_UART=$(vcgencmd measure_clock uart)
CPU_CLOCK_PWM=$(vcgencmd measure_clock pwm)
CPU_CLOCK_EMMC=$(vcgencmd measure_clock emmc)
CPU_CLOCK_PIXEL=$(vcgencmd measure_clock pixel)
CPU_CLOCK_VEC=$(vcgencmd measure_clock vec)
CPU_CLOCK_HDMI=$(vcgencmd measure_clock hdmi)
CPU_CLOCK_DPI=$(vcgencmd measure_clock dpi)
CPU_TEMP=`echo $TEMP | cut -d \' -f 1`
VOLTS=`echo $VOLTS | cut -d V -f 1`
CPU_CLOCK_ARM=`echo $CPU_CLOCK_ARM | cut -d \= -f 2`
CPU_CLOCK_CORE=`echo $CPU_CLOCK_CORE | cut -d \= -f 2`
CPU_CLOCK_H264=`echo $CPU_CLOCK_H264 | cut -d \= -f 2`
CPU_CLOCK_ISP=`echo $CPU_CLOCK_ISP | cut -d \= -f 2`
CPU_CLOCK_V3D=`echo $CPU_CLOCK_V3D | cut -d \= -f 2`
CPU_CLOCK_UART=`echo $CPU_CLOCK_UART | cut -d \= -f 2`
CPU_CLOCK_PWM=`echo $CPU_CLOCK_PWM | cut -d \= -f 2`
CPU_CLOCK_EMMC=`echo $CPU_CLOCK_EMMC | cut -d \= -f 2`
CPU_CLOCK_PIXEL=`echo $CPU_CLOCK_PIXEL | cut -d \= -f 2`
CPU_CLOCK_VEC=`echo $CPU_CLOCK_VEC | cut -d \= -f 2`
CPU_CLOCK_HDMI=`echo $CPU_CLOCK_HDMI | cut -d \= -f 2`
CPU_CLOCK_DPI=`echo $CPU_CLOCK_PDI | cut -d \= -f 2`
echo "time=$TIME,$VOLTS,$CPU_TEMP,cpu_clock_arm=$CPU_CLOCK_ARM,cpu_clock_core=$CPU_CLOCK_CORE,cpu_clock_h264=$CPU_CLOCK_H264,cpu_clock_isp=$CPU_CLOCK_ISP,cpu_clock_v3d=$CPU_CLOCK_V3D,cpu_clock_uart=$CPU_CLOCK_UART,cpu_clock_pwm=$CPU_CLOCK_PWM,cpu_clock_emmc=$CPU_CLOCK_EMMC,cpu_clock_pixel=$CPU_CLOCK_PIXEL,cpu_clock_vec=$CPU_CLOCK_VEC,cpu_clock_hdmi=$CPU_CLOCK_HDMI,cpu_clock_dpi=$CPU_CLOCK_DPI"
sleep 1
done
