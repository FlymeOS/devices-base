.class public Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation


# instance fields
.field public ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public hessid:J

.field public internet:Z

.field public venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    .line 163
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 164
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    .line 160
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 11
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    iget v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v8, 0x6b

    if-eq v7, v8, :cond_0

    .line 169
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Element id is not INTERWORKING, : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    iget-object v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 172
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 173
    .local v0, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v7

    and-int/lit8 v8, v0, 0xf

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 174
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    .line 176
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    if-ne v5, v10, :cond_6

    .line 178
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 179
    .local v3, "vinfo":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    new-instance v4, Lcom/android/server/wifi/anqp/VenueNameElement;

    .line 181
    sget-object v5, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 180
    invoke-direct {v4, v5, v3}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    .line 182
    .local v4, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/VenueNameElement;->getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 183
    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/VenueNameElement;->getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v3    # "vinfo":Ljava/nio/ByteBuffer;
    .end local v4    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_3
    :goto_0
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    if-eq v5, v9, :cond_4

    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    if-ne v5, v10, :cond_5

    .line 192
    :cond_4
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x6

    invoke-static {v1, v5, v6}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    .line 167
    :cond_5
    return-void

    .line 187
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    if-eq v5, v6, :cond_3

    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v5, v5

    if-eq v5, v9, :cond_3

    .line 188
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad Interworking element length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 189
    iget-object v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v7, v7

    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    :catch_0
    move-exception v2

    .local v2, "pe":Ljava/net/ProtocolException;
    goto :goto_0
.end method
