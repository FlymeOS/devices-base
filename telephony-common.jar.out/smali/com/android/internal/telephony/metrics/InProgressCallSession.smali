.class public Lcom/android/internal/telephony/metrics/InProgressCallSession;
.super Ljava/lang/Object;
.source "InProgressCallSession.java"


# static fields
.field private static final MAX_EVENTS:I = 0x12c


# instance fields
.field public final events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDropped:Z

.field private mLastElapsedTimeMs:J

.field public final phoneId:I

.field public final startElapsedTimeMs:J

.field public final startSystemTimeMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 64
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .prologue
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    .line 89
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    .line 88
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 92
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 82
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 72
    return-void
.end method

.method public isEventsDropped()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    return v0
.end method
