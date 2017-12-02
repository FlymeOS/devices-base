.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    .line 154
    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .prologue
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 767
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .prologue
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 622
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 620
    return-void

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .prologue
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 637
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 635
    return-void

    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 8

    .prologue
    monitor-enter p0

    .line 459
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    .line 461
    .local v2, "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 462
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 463
    iget-boolean v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    .line 466
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 467
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 470
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 471
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 477
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    new-instance v6, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v6, v5, v1

    .line 478
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    .line 479
    .local v3, "rilHistogram":Landroid/telephony/TelephonyHistogram;
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v0, v5, v1

    .line 481
    .local v0, "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCategory(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 482
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 483
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMinTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 484
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMaxTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 485
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setAvgTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 486
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 487
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setBucketCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 488
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 489
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v3    # "rilHistogram":Landroid/telephony/TelephonyHistogram;
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 494
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 495
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 497
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 498
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 499
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 501
    return-object v2

    .end local v1    # "i":I
    .end local v2    # "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .end local v4    # "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 236
    packed-switch p0, :pswitch_data_0

    .line 282
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    return-object v0

    .line 240
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 242
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 244
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 246
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 248
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 250
    :pswitch_6
    const-string/jumbo v0, "RIL_REQUEST"

    return-object v0

    .line 252
    :pswitch_7
    const-string/jumbo v0, "RIL_RESPONSE"

    return-object v0

    .line 254
    :pswitch_8
    const-string/jumbo v0, "RIL_CALL_RING"

    return-object v0

    .line 256
    :pswitch_9
    const-string/jumbo v0, "RIL_CALL_SRVCC"

    return-object v0

    .line 258
    :pswitch_a
    const-string/jumbo v0, "RIL_CALL_LIST_CHANGED"

    return-object v0

    .line 260
    :pswitch_b
    const-string/jumbo v0, "IMS_COMMAND"

    return-object v0

    .line 262
    :pswitch_c
    const-string/jumbo v0, "IMS_COMMAND_RECEIVED"

    return-object v0

    .line 264
    :pswitch_d
    const-string/jumbo v0, "IMS_COMMAND_FAILED"

    return-object v0

    .line 266
    :pswitch_e
    const-string/jumbo v0, "IMS_COMMAND_COMPLETE"

    return-object v0

    .line 268
    :pswitch_f
    const-string/jumbo v0, "IMS_CALL_RECEIVE"

    return-object v0

    .line 270
    :pswitch_10
    const-string/jumbo v0, "IMS_CALL_STATE_CHANGED"

    return-object v0

    .line 272
    :pswitch_11
    const-string/jumbo v0, "IMS_CALL_TERMINATED"

    return-object v0

    .line 274
    :pswitch_12
    const-string/jumbo v0, "IMS_CALL_HANDOVER"

    return-object v0

    .line 276
    :pswitch_13
    const-string/jumbo v0, "IMS_CALL_HANDOVER_FAILED"

    return-object v0

    .line 278
    :pswitch_14
    const-string/jumbo v0, "PHONE_STATE_CHANGED"

    return-object v0

    .line 280
    :pswitch_15
    const-string/jumbo v0, "NITZ_TIME"

    return-object v0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p2, "call"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1056
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1061
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1093
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setCallEndReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1094
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isMultiparty()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setIsMultiparty(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1055
    return-void

    .line 1059
    :cond_0
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_0

    .line 1063
    :pswitch_0
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1066
    :pswitch_1
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1069
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1072
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1075
    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1078
    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1081
    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1084
    :pswitch_7
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1087
    :pswitch_8
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_1

    .line 1061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)[",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, "mConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1047
    .local v0, "calls":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1048
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v0, v1

    .line 1049
    aget-object v2, v0, v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1050
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return-object v0
.end method

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    .prologue
    .line 409
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 408
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3
    .param p1, "inProgressCallSession"    # Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .prologue
    monitor-enter p0

    .line 726
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 727
    .local v0, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 728
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 729
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 730
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 731
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 725
    return-void

    .end local v0    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 3
    .param p1, "inProgressSmsSession"    # Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .prologue
    monitor-enter p0

    .line 746
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v1

    if-nez v1, :cond_1

    .line 747
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    .line 748
    .local v0, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 749
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 750
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 751
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 752
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_1
    monitor-exit p0

    .line 745
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCallId(Lcom/android/ims/internal/ImsCallSession;)I
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    const/4 v2, -0x1

    .line 1411
    if-nez p1, :cond_0

    .line 1412
    return v2

    .line 1416
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    .prologue
    const-class v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 168
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "rawWriter"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 322
    :try_start_0
    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v12, "  "

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 324
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v12, "Telephony metrics proto:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v12, "------------------------------------------"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v12, "Telephony events:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 329
    .local v7, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasTimestampMillis()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 330
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 331
    const-string/jumbo v12, " ["

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasPhoneId()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getPhoneId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 333
    :cond_1
    const-string/jumbo v12, "] "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasType()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 336
    const-string/jumbo v12, "T="

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 338
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 339
    const-string/jumbo v13, "("

    .line 338
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 339
    iget-object v13, v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v13}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->getDataRat()I

    move-result v13

    .line 338
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 339
    const-string/jumbo v13, ")"

    .line 338
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :cond_2
    :goto_1
    const-string/jumbo v12, ""

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v8    # "event$iterator":Ljava/util/Iterator;
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 341
    .restart local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .restart local v8    # "event$iterator":Ljava/util/Iterator;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    .end local v7    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_4
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 349
    const-string/jumbo v12, "Call sessions:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callSession$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 353
    .local v2, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasStartTimeMinutes()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 354
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Start time in minutes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getStartTimeMinutes()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasEventsDropped()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Events dropped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getEventsDropped()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    :cond_6
    const-string/jumbo v12, "Events: "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 361
    iget-object v13, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_3
    if-ge v12, v14, :cond_8

    aget-object v6, v13, v12

    .line 362
    .local v6, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getDelay()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 363
    const-string/jumbo v15, " T="

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 365
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 366
    const-string/jumbo v16, "("

    .line 365
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 366
    iget-object v0, v6, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->getDataRat()I

    move-result v16

    .line 365
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 366
    const-string/jumbo v16, ")"

    .line 365
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 368
    :cond_7
    invoke-virtual {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 371
    .end local v6    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_2

    .line 374
    .end local v2    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 375
    const-string/jumbo v12, "Sms sessions:"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "smsSession$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 380
    .local v10, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    add-int/lit8 v4, v4, 0x1

    .line 381
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasStartTimeMinutes()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] Start time in minutes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 383
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getStartTimeMinutes()I

    move-result v13

    .line 382
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    :cond_a
    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasEventsDropped()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 386
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ", events dropped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getEventsDropped()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    :cond_b
    const-string/jumbo v12, "Events: "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 390
    iget-object v13, v10, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_6
    if-ge v12, v14, :cond_c

    aget-object v5, v13, v12

    .line 391
    .local v5, "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getDelay()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    const-string/jumbo v15, " T="

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 395
    .end local v5    # "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :cond_c
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_5

    .line 398
    .end local v10    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_d
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 321
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 418
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 420
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    .line 427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 430
    .local v2, "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 431
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 430
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 432
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 438
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 438
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 440
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 444
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 446
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 446
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 448
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_2
    monitor-exit p0

    .line 415
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method static roundSessionStart(J)I
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 511
    const-wide/32 v0, 0x493e0

    div-long v0, p0, v0

    .line 512
    const-wide/16 v2, 0x5

    .line 511
    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 292
    packed-switch p0, :pswitch_data_0

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    return-object v0

    .line 296
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 298
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 300
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 302
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 304
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 306
    :pswitch_6
    const-string/jumbo v0, "SMS_SEND"

    return-object v0

    .line 308
    :pswitch_7
    const-string/jumbo v0, "SMS_SEND_RESULT"

    return-object v0

    .line 310
    :pswitch_8
    const-string/jumbo v0, "SMS_RECEIVED"

    return-object v0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 650
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_2

    .line 652
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    .line 653
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 657
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 658
    .local v3, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v3, :cond_0

    .line 659
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 660
    const/4 v7, 0x2

    .line 659
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 664
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 665
    .local v1, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v1, :cond_1

    .line 666
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 667
    const/4 v7, 0x4

    .line 666
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 671
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 672
    .local v2, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v2, :cond_2

    .line 673
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 674
    const/4 v7, 0x3

    .line 673
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v2    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v3    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    .line 678
    return-object v0

    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 689
    .local v3, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v3, :cond_2

    .line 691
    new-instance v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    .line 692
    .restart local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 696
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 697
    .local v2, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v2, :cond_0

    .line 698
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 699
    const/4 v7, 0x2

    .line 698
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 703
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 704
    .local v0, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v0, :cond_1

    .line 705
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 706
    const/4 v7, 0x4

    .line 705
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 710
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 711
    .local v1, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v1, :cond_2

    .line 712
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 713
    const/4 v7, 0x3

    .line 712
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v2    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    .line 717
    return-object v3

    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 199
    packed-switch p0, :pswitch_data_0

    .line 225
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 203
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    return-object v0

    .line 205
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 207
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 209
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 211
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_SETUP"

    return-object v0

    .line 213
    :pswitch_6
    const-string/jumbo v0, "DATA_CALL_SETUP_RESPONSE"

    return-object v0

    .line 215
    :pswitch_7
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 217
    :pswitch_8
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE"

    return-object v0

    .line 219
    :pswitch_9
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object v0

    .line 221
    :pswitch_a
    const-string/jumbo v0, "DATA_STALL_ACTION"

    return-object v0

    .line 223
    :pswitch_b
    const-string/jumbo v0, "MODEM_RESTART"

    return-object v0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private toCallSessionRilRequest(I)I
    .locals 3
    .param p1, "r"    # I

    .prologue
    .line 1203
    sparse-switch p1, :sswitch_data_0

    .line 1227
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown RIL request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v0, 0x0

    return v0

    .line 1205
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1208
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 1213
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 1216
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 1219
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 1222
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 1225
    :sswitch_6
    const/4 v0, 0x7

    return v0

    .line 1203
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_6
        0x24 -> :sswitch_3
        0x28 -> :sswitch_1
        0x54 -> :sswitch_5
    .end sparse-switch
.end method

.method private toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1518
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1519
    .local v1, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    if-eqz p1, :cond_0

    .line 1520
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1521
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1522
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "extraMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 1527
    .end local v0    # "extraMessage":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 937
    const-string/jumbo v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x1

    return v0

    .line 937
    :cond_0
    const-string/jumbo v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    const/4 v0, 0x2

    return v0

    .line 937
    :cond_1
    const-string/jumbo v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    const/4 v0, 0x3

    return v0

    .line 937
    :cond_2
    const-string/jumbo v0, "PPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    const/4 v0, 0x4

    return v0

    .line 947
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 4
    .param p0, "previousTimestamp"    # J
    .param p2, "currentTimestamp"    # J

    .prologue
    .line 523
    sub-long v0, p2, p0

    .line 524
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 525
    const/4 v2, 0x0

    return v2

    .line 526
    :cond_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 527
    const/4 v2, 0x1

    return v2

    .line 528
    :cond_1
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 529
    const/4 v2, 0x2

    return v2

    .line 530
    :cond_2
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 531
    const/4 v2, 0x3

    return v2

    .line 532
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 533
    const/4 v2, 0x4

    return v2

    .line 534
    :cond_4
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 535
    const/4 v2, 0x5

    return v2

    .line 536
    :cond_5
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 537
    const/4 v2, 0x6

    return v2

    .line 538
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 539
    const/4 v2, 0x7

    return v2

    .line 540
    :cond_7
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    .line 541
    const/16 v2, 0x8

    return v2

    .line 542
    :cond_8
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 543
    const/16 v2, 0x9

    return v2

    .line 544
    :cond_9
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    .line 545
    const/16 v2, 0xa

    return v2

    .line 546
    :cond_a
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 547
    const/16 v2, 0xb

    return v2

    .line 548
    :cond_b
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 549
    const/16 v2, 0xc

    return v2

    .line 550
    :cond_c
    const-wide/32 v2, 0x2bf20

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    .line 551
    const/16 v2, 0xd

    return v2

    .line 552
    :cond_d
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 553
    const/16 v2, 0xe

    return v2

    .line 554
    :cond_e
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 555
    const/16 v2, 0xf

    return v2

    .line 556
    :cond_f
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 557
    const/16 v2, 0x10

    return v2

    .line 558
    :cond_10
    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    .line 559
    const/16 v2, 0x11

    return v2

    .line 560
    :cond_11
    const-wide/32 v2, 0xdbba00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    .line 561
    const/16 v2, 0x12

    return v2

    .line 563
    :cond_12
    const/16 v2, 0x13

    return v2
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 574
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 576
    .local v0, "ssProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 577
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 579
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 581
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 589
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 593
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 595
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 596
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 599
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 603
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 604
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 607
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 608
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 609
    return-object v0
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1277
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1278
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeOnCallSolicitedResponse: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_0
    return-void

    .line 1280
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1281
    const/4 v2, 0x7

    .line 1280
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1282
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result v2

    .line 1280
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilError"    # I

    .prologue
    .line 1328
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1329
    add-int/lit8 v1, p2, 0x1

    .line 1328
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1327
    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .prologue
    .line 1243
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1244
    .local v1, "setupDataCallResponse":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    .line 1246
    .local v0, "dataCall":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz p5, :cond_1

    .line 1248
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1247
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setStatus(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 1249
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setSuggestedRetryTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 1251
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1252
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1253
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1256
    :cond_0
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1257
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1260
    :cond_1
    iput-object v0, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1262
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1241
    return-void

    .line 1248
    :cond_2
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    goto :goto_0
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "response"    # Lcom/android/internal/telephony/SmsResponse;

    .prologue
    monitor-enter p0

    .line 1299
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 1300
    .local v1, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v1, :cond_0

    .line 1301
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SMS session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1297
    return-void

    .line 1304
    :cond_0
    const/4 v0, 0x0

    .line 1305
    .local v0, "errorCode":I
    if-eqz p4, :cond_1

    .line 1306
    :try_start_1
    iget v0, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1309
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 1310
    const/4 v3, 0x7

    .line 1309
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1316
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1317
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "errorCode":I
    .end local v1    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 180
    aget-object v0, p3, v1

    const-string/jumbo v1, "--metrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string/jumbo v1, "--metricsproto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    goto :goto_0
.end method

.method public writeDataStallEvent(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "recoveryAction"    # I

    .prologue
    .line 806
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 805
    return-void
.end method

.method public writeImsCallState(ILcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "callState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1432
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1452
    const/4 v1, 0x0

    .line 1455
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1456
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1457
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :goto_1
    return-void

    .line 1434
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    .restart local v1    # "state":I
    goto :goto_0

    .line 1436
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    .restart local v1    # "state":I
    goto :goto_0

    .line 1438
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    .restart local v1    # "state":I
    goto :goto_0

    .line 1440
    .end local v1    # "state":I
    :pswitch_3
    const/4 v1, 0x4

    .restart local v1    # "state":I
    goto :goto_0

    .line 1442
    .end local v1    # "state":I
    :pswitch_4
    const/4 v1, 0x5

    .restart local v1    # "state":I
    goto :goto_0

    .line 1444
    .end local v1    # "state":I
    :pswitch_5
    const/4 v1, 0x6

    .restart local v1    # "state":I
    goto :goto_0

    .line 1446
    .end local v1    # "state":I
    :pswitch_6
    const/4 v1, 0x7

    .restart local v1    # "state":I
    goto :goto_0

    .line 1448
    .end local v1    # "state":I
    :pswitch_7
    const/16 v1, 0x8

    .restart local v1    # "state":I
    goto :goto_0

    .line 1450
    .end local v1    # "state":I
    :pswitch_8
    const/16 v1, 0x9

    .restart local v1    # "state":I
    goto :goto_0

    .line 1459
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1460
    const/16 v3, 0x10

    .line 1459
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1461
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v3

    .line 1459
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_1

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 821
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    .line 822
    .local v1, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    packed-switch p2, :pswitch_data_0

    .line 837
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 838
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 840
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 841
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 840
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 843
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 844
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 843
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 820
    return-void

    .line 824
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :pswitch_0
    if-eqz p4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 827
    :pswitch_1
    if-eqz p4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 830
    :pswitch_2
    if-eqz p4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 833
    :pswitch_3
    if-eqz p4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeNITZEvent(IJ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 1621
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1622
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1624
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 1625
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1626
    const/16 v4, 0x15

    .line 1625
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1624
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1620
    return-void
.end method

.method public writeOnImsCallHandoverEvent(IILcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventType"    # I
    .param p3, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p4, "srcAccessTech"    # I
    .param p5, "targetAccessTech"    # I
    .param p6, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1564
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1565
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_0
    return-void

    .line 1568
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1569
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1568
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1572
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    .line 1568
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1567
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeOnImsCallHeld(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1635
    return-void
.end method

.method public writeOnImsCallHoldFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1638
    return-void
.end method

.method public writeOnImsCallHoldReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1636
    return-void
.end method

.method public writeOnImsCallProgressing(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1631
    return-void
.end method

.method public writeOnImsCallReceive(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1488
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V

    .line 1487
    return-void
.end method

.method public writeOnImsCallResumeFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1642
    return-void
.end method

.method public writeOnImsCallResumeReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1640
    return-void
.end method

.method public writeOnImsCallResumed(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1639
    return-void
.end method

.method public writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1476
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1477
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1476
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1478
    const/4 v2, 0x1

    .line 1476
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1475
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1472
    return-void
.end method

.method public writeOnImsCallStartFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1634
    return-void
.end method

.method public writeOnImsCallStarted(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1632
    return-void
.end method

.method public writeOnImsCallTerminated(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1539
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1540
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1541
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :goto_0
    return-void

    .line 1544
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1545
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1544
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1546
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    .line 1544
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1543
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeOnImsCapabilities(I[Z)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # [Z

    .prologue
    monitor-enter p0

    .line 907
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    .line 909
    .local v0, "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    const/4 v2, 0x0

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 910
    const/4 v2, 0x1

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 911
    const/4 v2, 0x2

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 912
    const/4 v2, 0x3

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 913
    const/4 v2, 0x4

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 914
    const/4 v2, 0x5

    aget-boolean v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 916
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 917
    .local v1, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 918
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 920
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 921
    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 922
    const/4 v5, 0x4

    .line 921
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 923
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 921
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 920
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 924
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 925
    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 926
    const/4 v5, 0x4

    .line 925
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 927
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 925
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 924
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 906
    return-void

    .end local v0    # "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "command"    # I

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1501
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1502
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :goto_0
    return-void

    .line 1505
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1506
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v2

    .line 1505
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1504
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    monitor-enter p0

    .line 869
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    .line 870
    .local v2, "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->setState(I)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 871
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 873
    if-eqz p3, :cond_1

    .line 874
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 876
    .local v3, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 877
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 878
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "extraMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 883
    :cond_0
    iput-object v3, v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 886
    .end local v1    # "extraMessage":Ljava/lang/String;
    .end local v3    # "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 888
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 890
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 891
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 892
    const/4 v7, 0x3

    .line 891
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 893
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 891
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    .line 890
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 894
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 895
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 896
    const/4 v7, 0x3

    .line 895
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 897
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 895
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    .line 894
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 868
    return-void

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1343
    sparse-switch p4, :sswitch_data_0

    .line 1342
    :goto_0
    return-void

    :sswitch_0
    move-object v5, p5

    .line 1345
    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v5, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1346
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V

    goto :goto_0

    .line 1349
    .end local v5    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    goto :goto_0

    .line 1356
    :sswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    goto :goto_0

    :sswitch_3
    move-object v6, p5

    .line 1362
    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    .line 1363
    .local v6, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    goto :goto_0

    .line 1343
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x57 -> :sswitch_3
        0x71 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilRequest"    # I

    .prologue
    .line 1643
    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1376
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1387
    const/4 v1, 0x0

    .line 1391
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1392
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1393
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writePhoneState: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :goto_1
    return-void

    .line 1378
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    .line 1379
    .restart local v1    # "state":I
    goto :goto_0

    .line 1381
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    .line 1382
    .restart local v1    # "state":I
    goto :goto_0

    .line 1384
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    .line 1385
    .restart local v1    # "state":I
    goto :goto_0

    .line 1395
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1396
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1398
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1399
    const/16 v3, 0x14

    .line 1398
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_1

    .line 1376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeRilAnswer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1169
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1170
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeRilAnswer: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :goto_0
    return-void

    .line 1173
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1174
    const/4 v2, 0x2

    .line 1173
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1172
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1032
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1033
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeRilCallList: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v1

    .line 1037
    .local v1, "calls":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 1038
    const/16 v3, 0xa

    .line 1037
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1036
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilCallRing(I[C)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [C

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1133
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 1134
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1133
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1130
    return-void
.end method

.method public writeRilDataCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p2, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1007
    .local v0, "dataCalls":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1008
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 1009
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1010
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1011
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1013
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1014
    aget-object v3, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 1007
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 1003
    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "cid"    # I
    .param p4, "reason"    # I

    .prologue
    .line 989
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 990
    .local v0, "deactivateDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 991
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 993
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 987
    return-void
.end method

.method public writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1109
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1110
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeRilDial: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :goto_0
    return-void

    .line 1112
    :cond_0
    new-array v1, v6, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1113
    .local v1, "calls":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v1, v4

    .line 1114
    aget-object v2, v1, v4

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1115
    aget-object v2, v1, v4

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1116
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 1117
    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 1116
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "callId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1145
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1146
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1147
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeRilHangup: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_0
    return-void

    .line 1149
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1150
    .local v1, "calls":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v1, v3

    .line 1151
    aget-object v2, v1, v3

    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1152
    aget-object v2, v1, v3

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1154
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1155
    const/4 v3, 0x3

    .line 1154
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1153
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public writeRilNewSms(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "tech"    # I
    .param p3, "format"    # I

    .prologue
    .line 1604
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1606
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1611
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V

    .line 1603
    return-void
.end method

.method public writeRilSendSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "tech"    # I
    .param p4, "format"    # I

    .prologue
    .line 1585
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1587
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1593
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V

    .line 1584
    return-void
.end method

.method public writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "radioTechnology"    # I
    .param p4, "profile"    # I
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;

    .prologue
    .line 965
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 966
    .local v0, "setupDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 967
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setDataProfile(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 968
    if-eqz p5, :cond_0

    .line 969
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setApn(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 971
    :cond_0
    if-eqz p7, :cond_1

    .line 972
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 975
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 963
    return-void
.end method

.method public writeRilSrvcc(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSrvccState"    # I

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1187
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1188
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeRilSrvcc: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_0
    return-void

    .line 1191
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1192
    add-int/lit8 v2, p2, 0x1

    .line 1191
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1190
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    goto :goto_0
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    monitor-enter p0

    .line 783
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 784
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    move-result-object v2

    .line 783
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 786
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 787
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 789
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 790
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 791
    const/4 v4, 0x2

    .line 790
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 792
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 790
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 789
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 793
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    move-result-wide v2

    .line 794
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 795
    const/4 v4, 0x2

    .line 794
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 796
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 794
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 793
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 781
    return-void

    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 855
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    .line 856
    .local v0, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 857
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    .line 854
    return-void
.end method
