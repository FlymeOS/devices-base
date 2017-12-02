.class public final Landroid/os/health/ProcessHealthStats;
.super Ljava/lang/Object;
.source "ProcessHealthStats.java"


# static fields
.field public static final CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final MEASUREMENT_ANR_COUNT:I = 0x7535
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_CRASHES_COUNT:I = 0x7534
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_FOREGROUND_MS:I = 0x7536
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_STARTS_COUNT:I = 0x7533
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_SYSTEM_TIME_MS:I = 0x7532
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_USER_TIME_MS:I = 0x7531
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/ProcessHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
