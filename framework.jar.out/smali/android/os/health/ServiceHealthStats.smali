.class public final Landroid/os/health/ServiceHealthStats;
.super Ljava/lang/Object;
.source "ServiceHealthStats.java"


# static fields
.field public static final CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final MEASUREMENT_LAUNCH_COUNT:I = 0xc352
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_START_SERVICE_COUNT:I = 0xc351
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/ServiceHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    .line 49
    sput-object v0, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

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
