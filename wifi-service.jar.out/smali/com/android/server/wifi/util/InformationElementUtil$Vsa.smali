.class public Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4


# instance fields
.field public anqpDomainID:I

.field public hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    .line 239
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 246
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v3, 0x109a6f50

    if-ne v2, v3, :cond_1

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 249
    .local v1, "hsConf":I
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 257
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 260
    :goto_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 262
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HS20 indication element too short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :pswitch_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    goto :goto_0

    .line 254
    :pswitch_1
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    .line 245
    .end local v1    # "hsConf":I
    :cond_1
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
