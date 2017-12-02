.class public Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtOperation"
.end annotation


# instance fields
.field public secondChannelOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    .line 89
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 117
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Element id is not HT_OPERATION, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    .line 116
    return-void
.end method

.method public getCenterFreq0(I)I
    .locals 4
    .param p1, "primaryFrequency"    # I

    .prologue
    const/4 v3, 0x0

    .line 102
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    if-eqz v0, :cond_2

    .line 103
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    add-int/lit8 v0, p1, 0xa

    return v0

    .line 105
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 106
    add-int/lit8 v0, p1, -0xa

    return v0

    .line 108
    :cond_1
    const-string/jumbo v0, "HtOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on secondChannelOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v3

    .line 112
    :cond_2
    return v3
.end method

.method public getChannelWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    return v1
.end method
