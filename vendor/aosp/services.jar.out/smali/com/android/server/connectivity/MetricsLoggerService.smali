.class public Lcom/android/server/connectivity/MetricsLoggerService;
.super Lcom/android/server/SystemService;
.source "MetricsLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final EVENTS_NOTIFICATION_THRESHOLD:I

.field private final MAX_NUMBER_OF_EVENTS:I

.field private final THROTTLING_MAX_NUMBER_OF_MESSAGES_PER_COMPONENT:I

.field private final THROTTLING_TIME_INTERVAL_MILLIS:J

.field final mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

.field private mEventCounter:I

.field private final mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEventReference:J

.field private final mThrottlingCounters:[I

.field private mThrottlingIntervalBoundaryMillis:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/MetricsLoggerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/MetricsLoggerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/MetricsLoggerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingIntervalBoundaryMillis:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/MetricsLoggerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/MetricsLoggerService;Landroid/net/ConnectivityMetricsEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MetricsLoggerService;->addEvent(Landroid/net/ConnectivityMetricsEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->enforceConnectivityInternalPermission()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->enforceDumpPermission()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/MetricsLoggerService;J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/MetricsLoggerService;->resetThrottlingCounters(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "ConnectivityMetricsLoggerService"

    sput-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x3e8

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 63
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->EVENTS_NOTIFICATION_THRESHOLD:I

    .line 64
    iput v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->MAX_NUMBER_OF_EVENTS:I

    .line 65
    iput v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->THROTTLING_MAX_NUMBER_OF_MESSAGES_PER_COMPONENT:I

    .line 66
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->THROTTLING_TIME_INTERVAL_MILLIS:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEventCounter:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mLastEventReference:J

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 80
    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    .line 122
    new-instance v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;-><init>(Lcom/android/server/connectivity/MetricsLoggerService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    .line 44
    return-void
.end method

.method private addEvent(Landroid/net/ConnectivityMetricsEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 90
    const-string/jumbo v2, "MetricsLoggerService"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "android.permission.DUMP"

    .line 96
    const-string/jumbo v2, "MetricsLoggerService"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private resetThrottlingCounters(J)V
    .locals 7
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    monitor-enter v2

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingCounters:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, p1

    .line 104
    iput-wide v4, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mThrottlingIntervalBoundaryMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 55
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/server/connectivity/MetricsLoggerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v0, "connectivity_metrics_logger"

    .line 58
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService;->mBinder:Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/MetricsLoggerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/MetricsLoggerService;->resetThrottlingCounters(J)V

    .line 49
    return-void
.end method
