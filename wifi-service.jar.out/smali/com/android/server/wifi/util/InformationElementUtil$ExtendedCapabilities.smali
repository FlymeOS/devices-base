.class public Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedCapabilities"
.end annotation


# static fields
.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:J = 0x1000000000000L


# instance fields
.field public extendedCapabilities:Ljava/lang/Long;

.field public is80211McRTTResponder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    .line 282
    iget-object v0, p1, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    .line 283
    iget-boolean v0, p1, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    .line 281
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    .local v0, "data":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 292
    iput-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    .line 295
    const/16 v1, 0x8

    .line 297
    .local v1, "index":I
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 298
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    .line 290
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    goto :goto_0
.end method

.method public isStrictUtf8()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
