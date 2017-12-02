.class public final Landroid/os/health/UidHealthStats;
.super Ljava/lang/Object;
.source "UidHealthStats.java"


# static fields
.field public static final CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final MEASUREMENT_BLUETOOTH_IDLE_MS:I = 0x2724
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_POWER_MAMS:I = 0x2727
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_RX_BYTES:I = 0x2744
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_RX_MS:I = 0x2725
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_RX_PACKETS:I = 0x274a
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_TX_BYTES:I = 0x2745
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_TX_MS:I = 0x2726
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BLUETOOTH_TX_PACKETS:I = 0x274b
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_BUTTON_USER_ACTIVITY_COUNT:I = 0x273e
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_CPU_POWER_MAMS:I = 0x2750
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_IDLE_MS:I = 0x2728
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_POWER_MAMS:I = 0x272b
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_RX_BYTES:I = 0x2740
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_RX_MS:I = 0x2729
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_RX_PACKETS:I = 0x2746
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_TX_BYTES:I = 0x2741
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_TX_MS:I = 0x272a
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_MOBILE_TX_PACKETS:I = 0x2747
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_OTHER_USER_ACTIVITY_COUNT:I = 0x273d
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_REALTIME_BATTERY_MS:I = 0x2711
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_REALTIME_SCREEN_OFF_BATTERY_MS:I = 0x2713
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_SYSTEM_CPU_TIME_MS:I = 0x274f
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_TOUCH_USER_ACTIVITY_COUNT:I = 0x273f
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_UPTIME_BATTERY_MS:I = 0x2712
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_UPTIME_SCREEN_OFF_BATTERY_MS:I = 0x2714
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_USER_CPU_TIME_MS:I = 0x274e
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_FULL_LOCK_MS:I = 0x272d
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_IDLE_MS:I = 0x2720
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_MULTICAST_MS:I = 0x272f
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_POWER_MAMS:I = 0x2723
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_RUNNING_MS:I = 0x272c
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_RX_BYTES:I = 0x2742
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_RX_MS:I = 0x2721
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_RX_PACKETS:I = 0x2748
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_TX_BYTES:I = 0x2743
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_TX_MS:I = 0x2722
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WIFI_TX_PACKETS:I = 0x2749
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final STATS_PACKAGES:I = 0x271f
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x2
    .end annotation
.end field

.field public static final STATS_PIDS:I = 0x271d
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x2
    .end annotation
.end field

.field public static final STATS_PROCESSES:I = 0x271e
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x2
    .end annotation
.end field

.field public static final TIMERS_JOBS:I = 0x271a
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_SENSORS:I = 0x271c
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_SYNCS:I = 0x2719
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_WAKELOCKS_DRAW:I = 0x2718
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_WAKELOCKS_FULL:I = 0x2715
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_WAKELOCKS_PARTIAL:I = 0x2716
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMERS_WAKELOCKS_WINDOW:I = 0x2717
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x3
    .end annotation
.end field

.field public static final TIMER_AUDIO:I = 0x2730
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_BLUETOOTH_SCAN:I = 0x2735
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_CAMERA:I = 0x2733
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_FLASHLIGHT:I = 0x2732
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_FOREGROUND_ACTIVITY:I = 0x2734
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_GPS_SENSOR:I = 0x271b
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_MOBILE_RADIO_ACTIVE:I = 0x274d
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_BACKGROUND_MS:I = 0x273a
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_CACHED_MS:I = 0x273b
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_FOREGROUND_MS:I = 0x2739
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_FOREGROUND_SERVICE_MS:I = 0x2737
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_TOP_MS:I = 0x2736
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_PROCESS_STATE_TOP_SLEEPING_MS:I = 0x2738
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_VIBRATOR:I = 0x273c
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_VIDEO:I = 0x2731
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field

.field public static final TIMER_WIFI_SCAN:I = 0x272e
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/UidHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
