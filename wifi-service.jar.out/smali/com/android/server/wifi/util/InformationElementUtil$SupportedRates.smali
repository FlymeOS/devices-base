.class public Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedRates"
.end annotation


# static fields
.field public static final MASK:I = 0x7f


# instance fields
.field public mRates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    .line 673
    return-void
.end method

.method public static getRateFromByte(I)I
    .locals 1
    .param p0, "byteVal"    # I

    .prologue
    .line 688
    and-int/lit8 p0, p0, 0x7f

    .line 689
    sparse-switch p0, :sswitch_data_0

    .line 720
    const/4 v0, -0x1

    return v0

    .line 691
    :sswitch_0
    const v0, 0xf4240

    return v0

    .line 693
    :sswitch_1
    const v0, 0x1e8480

    return v0

    .line 695
    :sswitch_2
    const v0, 0x53ec60

    return v0

    .line 697
    :sswitch_3
    const v0, 0x5b8d80

    return v0

    .line 699
    :sswitch_4
    const v0, 0x895440

    return v0

    .line 701
    :sswitch_5
    const v0, 0xa7d8c0

    return v0

    .line 703
    :sswitch_6
    const v0, 0xb71b00

    return v0

    .line 705
    :sswitch_7
    const v0, 0x112a880

    return v0

    .line 707
    :sswitch_8
    const v0, 0x14fb180

    return v0

    .line 709
    :sswitch_9
    const v0, 0x16e3600

    return v0

    .line 711
    :sswitch_a
    const v0, 0x1f78a40

    return v0

    .line 713
    :sswitch_b
    const v0, 0x2255100

    return v0

    .line 715
    :sswitch_c
    const v0, 0x2dc6c00

    return v0

    .line 717
    :sswitch_d
    const v0, 0x337f980

    return v0

    .line 689
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x12 -> :sswitch_4
        0x16 -> :sswitch_5
        0x18 -> :sswitch_6
        0x24 -> :sswitch_7
        0x2c -> :sswitch_8
        0x30 -> :sswitch_9
        0x42 -> :sswitch_a
        0x48 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 7
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 733
    iput-boolean v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 734
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-nez v4, :cond_1

    .line 735
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    const/16 v5, 0x8

    if-gt v4, v5, :cond_0

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    if-lt v4, v6, :cond_0

    .line 737
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 739
    .local v0, "data":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 740
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->getRateFromByte(I)I

    move-result v3

    .line 741
    .local v3, "rate":I
    if-lez v3, :cond_2

    .line 742
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    :cond_2
    return-void

    .line 747
    .end local v3    # "rate":I
    :catch_0
    move-exception v1

    .line 748
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return-void

    .line 750
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 751
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 760
    .local v0, "rate":Ljava/lang/Integer;
    const-string/jumbo v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    .end local v0    # "rate":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
