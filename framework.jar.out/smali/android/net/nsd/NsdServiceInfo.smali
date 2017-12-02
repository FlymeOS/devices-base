.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private final mTxtRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/nsd/NsdServiceInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return p1
.end method

.method static synthetic -set2(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    .line 356
    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 57
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getTxtRecordSize()I
    .locals 5

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "txtRecordSize":I
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    add-int/lit8 v2, v2, 0x2

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 268
    .local v3, "value":[B
    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    array-length v4, v3

    goto :goto_1

    .line 270
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "value":[B
    :cond_1
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()[B
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 275
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v6

    .line 276
    .local v6, "txtRecordSize":I
    if-nez v6, :cond_0

    .line 277
    new-array v8, v9, [B

    return-object v8

    .line 280
    :cond_0
    new-array v5, v6, [B

    .line 281
    .local v5, "txtRecord":[B
    const/4 v3, 0x0

    .line 282
    .local v3, "ptr":I
    iget-object v8, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 287
    .local v7, "value":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v7, :cond_1

    move v8, v9

    :goto_1
    add-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    .line 292
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    .line 292
    invoke-static {v8, v9, v5, v4, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v4, v8

    .line 297
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v8, 0x3d

    aput-byte v8, v5, v3

    .line 300
    if-eqz v7, :cond_3

    .line 301
    array-length v8, v7

    invoke-static {v7, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 302
    array-length v8, v7

    add-int v3, v4, v8

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    .line 287
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    array-length v8, v7

    goto :goto_1

    .line 305
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "ptr":I
    .end local v7    # "value":[B
    .restart local v3    # "ptr":I
    :cond_2
    return-object v5

    .end local v3    # "ptr":I
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "ptr":I
    .restart local v7    # "value":[B
    :cond_3
    move v3, v4

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    .line 239
    return-void

    .line 241
    :cond_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Value must be UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key cannot be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "character":C
    const/16 v5, 0x20

    if-lt v0, v5, :cond_1

    const/16 v5, 0x7e

    if-le v0, v5, :cond_2

    .line 198
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key strings must be printable US-ASCII"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_2
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_3

    .line 200
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key strings must not include \'=\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "character":C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez p2, :cond_5

    move v5, v4

    :goto_1
    add-int/2addr v5, v6

    const/16 v6, 0xff

    if-lt v5, v6, :cond_6

    .line 206
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key length + value length must be < 255 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_5
    array-length v5, p2

    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_7

    .line 211
    const-string/jumbo v5, "NsdServiceInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Key lengths > 9 are discouraged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_7
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v3

    .line 217
    .local v3, "txtRecordSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    if-nez p2, :cond_8

    :goto_2
    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x2

    .line 218
    .local v1, "futureSize":I
    const/16 v4, 0x514

    if-le v1, v4, :cond_9

    .line 219
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Total length of attributes must be < 1300 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    .end local v1    # "futureSize":I
    :cond_8
    array-length v4, p2

    goto :goto_2

    .line 220
    .restart local v1    # "futureSize":I
    :cond_9
    const/16 v4, 0x190

    if-le v1, v4, :cond_a

    .line 221
    const-string/jumbo v4, "NsdServiceInfo"

    const-string/jumbo v5, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_a
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "s"    # Ljava/net/InetAddress;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    .line 87
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 98
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 97
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTxtRecords(Ljava/lang/String;)V
    .locals 11
    .param p1, "rawRecords"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 109
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 131
    .local v5, "txtRecordsRawBytes":[B
    const/4 v3, 0x0

    .line 132
    .local v3, "pos":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_9

    .line 134
    aget-byte v8, v5, v3

    and-int/lit16 v4, v8, 0xff

    .line 135
    .local v4, "recordLen":I
    add-int/lit8 v3, v3, 0x1

    .line 138
    if-nez v4, :cond_0

    .line 139
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Zero sized txt record"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "NsdServiceInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "While parsing txt records (pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    .line 140
    :cond_0
    add-int v8, v3, v4

    :try_start_1
    array-length v9, v5

    if-le v8, v9, :cond_1

    .line 141
    const-string/jumbo v8, "NsdServiceInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Corrupt record length (pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    array-length v8, v5

    sub-int v4, v8, v3

    .line 146
    :cond_1
    const/4 v2, 0x0

    .line 147
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 148
    .local v6, "value":[B
    const/4 v7, 0x0

    .line 149
    .local v7, "valueLen":I
    move v1, v3

    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":[B
    .local v1, "i":I
    :goto_2
    add-int v8, v3, v4

    if-ge v1, v8, :cond_5

    .line 150
    if-nez v2, :cond_3

    .line 151
    aget-byte v8, v5, v1

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_2

    .line 152
    new-instance v2, Ljava/lang/String;

    sub-int v8, v1, v3

    .line 153
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 152
    invoke-direct {v2, v5, v3, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 149
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    :cond_3
    if-nez v6, :cond_4

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v8, v8, -0x1

    new-array v6, v8, [B

    .line 159
    :cond_4
    aget-byte v8, v5, v1

    aput-byte v8, v6, v7

    .line 160
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 165
    :cond_5
    if-nez v2, :cond_6

    .line 166
    new-instance v2, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 169
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 171
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid txt record (key is empty)"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 174
    :cond_7
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 176
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid txt record (duplicate key \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 179
    :cond_8
    invoke-virtual {p0, v2, v6}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 108
    .end local v1    # "i":I
    .end local v4    # "recordLen":I
    .end local v7    # "valueLen":I
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ", type: "

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 312
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 313
    const-string/jumbo v3, ", host: "

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 313
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 314
    const-string/jumbo v3, ", port: "

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 314
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v1

    .line 317
    .local v1, "txtRecord":[B
    if-eqz v1, :cond_0

    .line 318
    const-string/jumbo v2, ", txtRecord: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 338
    :goto_0
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 344
    .local v2, "value":[B
    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 351
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "value":[B
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 349
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "value":[B
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 329
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_2
    return-void
.end method
