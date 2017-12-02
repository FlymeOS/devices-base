.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_GONE_IDLE:I = 0x2

.field static final CHANGE_IDLE:I = 0x3

.field static final CHANGE_PROCSTATE:I


# instance fields
.field curProcState:I

.field idle:Z

.field lastBackgroundTime:J

.field numProcs:I

.field pendingChange:Lcom/android/server/am/UidRecord$ChangeItem;

.field setProcState:I

.field final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "_uid"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 51
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 50
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v2, 0x20

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 68
    const-string/jumbo v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 71
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_1

    .line 72
    const-string/jumbo v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    const-string/jumbo v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
