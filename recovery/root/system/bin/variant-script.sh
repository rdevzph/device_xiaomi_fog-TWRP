#!/system/bin/sh
# This script is needed to automatically set device props.

load_fog()
{
    resetprop "ro.product.model" "220333QAG"
    resetprop "ro.product.vendor.model" "220333QAG"
    resetprop "ro.product.name" "fog"
    resetprop "ro.build.product" "fog"
    resetprop "ro.product.device" "fog"
    resetprop "ro.product.system.device" "fog"
    resetprop "ro.product.vendor.device" "fog"
    resetprop "ro.vendor.product.device" "fog"
}

load_rain()
{
    resetprop "ro.product.model" "220333QNY"
    resetprop "ro.product.vendor.model" "220333QNY"
    resetprop "ro.product.name" "rain"
    resetprop "ro.build.product" "rain"
    resetprop "ro.product.device" "rain"
    resetprop "ro.product.system.device" "rain"
    resetprop "ro.product.vendor.device" "rain"
    resetprop "ro.vendor.product.device" "rain"
}

load_wind()
{
    resetprop "ro.product.model" "220333QL"
    resetprop "ro.product.vendor.model" "220333QL"
    resetprop "ro.product.name" "wind"
    resetprop "ro.build.product" "wind"
    resetprop "ro.product.device" "wind"
    resetprop "ro.product.system.device" "wind"
    resetprop "ro.product.vendor.device" "wind"
    resetprop "ro.vendor.product.device" "wind"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_fog
        ;;
    "EUROPE")
        load_rain
        ;;
    *)
        load_wind
        ;;
esac

exit 0
