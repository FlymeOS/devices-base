.class public Landroid/net/wifi/nan/PublishData;
.super Ljava/lang/Object;
.source "PublishData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/PublishData$1;,
        Landroid/net/wifi/nan/PublishData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/PublishData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mRxFilter:[B

.field public final mRxFilterLength:I

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceSpecificInfo:[B

.field public final mServiceSpecificInfoLength:I

.field public final mTxFilter:[B

.field public final mTxFilterLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Landroid/net/wifi/nan/PublishData$1;

    invoke-direct {v0}, Landroid/net/wifi/nan/PublishData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nan/PublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI[BI[BI)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "txFilter"    # [B
    .param p5, "txFilterLength"    # I
    .param p6, "rxFilter"    # [B
    .param p7, "rxFilterLength"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    .line 71
    iput p3, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    .line 72
    iput-object p2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    .line 73
    iput p5, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    .line 74
    iput-object p4, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    .line 75
    iput p7, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    .line 76
    iput-object p6, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/PublishData;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "txFilter"    # [B
    .param p5, "txFilterLength"    # I
    .param p6, "rxFilter"    # [B
    .param p7, "rxFilterLength"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/nan/PublishData;-><init>(Ljava/lang/String;[BI[BI[BI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    if-ne p0, p1, :cond_0

    .line 146
    return v5

    .line 149
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/nan/PublishData;

    if-nez v2, :cond_1

    .line 150
    return v4

    :cond_1
    move-object v1, p1

    .line 153
    nop

    nop

    .line 155
    .local v1, "lhs":Landroid/net/wifi/nan/PublishData;
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    if-eq v2, v3, :cond_3

    .line 159
    :cond_2
    return v4

    .line 157
    :cond_3
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-ne v2, v3, :cond_2

    .line 158
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-ne v2, v3, :cond_2

    .line 162
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_5

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    if-ge v0, v2, :cond_6

    .line 164
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 165
    return v4

    .line 163
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_5
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    if-eqz v2, :cond_6

    .line 169
    return v4

    .line 172
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    if-eqz v2, :cond_8

    .line 173
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-ge v0, v2, :cond_9

    .line 174
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_7

    .line 175
    return v4

    .line 173
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "i":I
    :cond_8
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-eqz v2, :cond_9

    .line 179
    return v4

    .line 182
    :cond_9
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    if-eqz v2, :cond_b

    .line 183
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-ge v0, v2, :cond_c

    .line 184
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_a

    .line 185
    return v4

    .line 183
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    .end local v0    # "i":I
    :cond_b
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-eqz v2, :cond_c

    .line 189
    return v4

    .line 192
    :cond_c
    return v5
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 200
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    add-int v0, v1, v2

    .line 201
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 202
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    add-int v0, v1, v2

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 204
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    add-int v0, v1, v2

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 207
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublishData [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "\', mTxFilter="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, ", mRxFilter="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "\']"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 103
    :cond_0
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 107
    :cond_1
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 97
    :cond_2
    return-void
.end method
