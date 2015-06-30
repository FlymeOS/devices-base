.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private mAsset:J

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 2
    .param p2, "asset"    # J

    .prologue
    .line 550
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 551
    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 552
    # invokes: Landroid/content/res/AssetManager;->getAssetLength(J)J
    invoke-static {p1, p2, p3}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/AssetManager;
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/content/res/AssetManager$1;

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    # invokes: Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J
    invoke-static {v2, v4, v5}, Landroid/content/res/AssetManager;->access$300(Landroid/content/res/AssetManager;J)J

    move-result-wide v0

    .line 562
    .local v0, "len":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 565
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    # invokes: Landroid/content/res/AssetManager;->destroyAsset(J)V
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;J)V

    .line 568
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    .line 569
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    # invokes: Landroid/content/res/AssetManager;->decRefsLocked(J)V
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->access$500(Landroid/content/res/AssetManager;J)V

    .line 571
    :cond_0
    monitor-exit v1

    .line 572
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 599
    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    .prologue
    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getNativeAsset()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    return-wide v0
.end method

.method public final mark(I)V
    .locals 7
    .param p1, "readlimit"    # I

    .prologue
    .line 574
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    # invokes: Landroid/content/res/AssetManager;->seekAsset(JJI)J
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    .line 575
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    # invokes: Landroid/content/res/AssetManager;->readAssetChar(J)I
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;J)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 7
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    const/4 v5, 0x0

    array-length v6, p1

    move-object v4, p1

    # invokes: Landroid/content/res/AssetManager;->readAsset(J[BII)I
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;J[BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    # invokes: Landroid/content/res/AssetManager;->readAsset(J[BII)I
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;J[BII)I

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v6, -0x1

    # invokes: Landroid/content/res/AssetManager;->seekAsset(JJI)J
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    .line 578
    return-void
.end method

.method public final skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 586
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    # invokes: Landroid/content/res/AssetManager;->seekAsset(JJI)J
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    move-result-wide v8

    .line 587
    .local v8, "pos":J
    add-long v0, v8, p1

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 588
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    sub-long p1, v0, v8

    .line 590
    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    .line 591
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    move-wide v4, p1

    # invokes: Landroid/content/res/AssetManager;->seekAsset(JJI)J
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;JJI)J

    .line 593
    :cond_1
    return-wide p1
.end method
