.class public Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract$SystemContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSuppressionStatus"
.end annotation


# instance fields
.field public final isSuppressed:Z

.field public final untilTimestampMillis:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0
    .param p1, "isSuppressed"    # Z
    .param p2, "untilTimestampMillis"    # J

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-boolean p1, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->isSuppressed:Z

    .line 379
    iput-wide p2, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->untilTimestampMillis:J

    .line 377
    return-void
.end method
