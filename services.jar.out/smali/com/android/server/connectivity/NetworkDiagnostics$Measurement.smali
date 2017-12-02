.class public Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurement"
.end annotation


# static fields
.field private static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUCCEEDED:Ljava/lang/String; = "SUCCEEDED"


# instance fields
.field description:Ljava/lang/String;

.field finishTime:J

.field result:Ljava/lang/String;

.field startTime:J

.field private succeeded:Z

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private maybeFixupTimes()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 148
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    .line 152
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public checkSucceeded()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    return v0
.end method

.method recordFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 136
    :cond_0
    return-void
.end method

.method recordSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SUCCEEDED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 127
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iget-wide v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
