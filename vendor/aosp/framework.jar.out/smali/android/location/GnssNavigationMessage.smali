.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$1;,
        Landroid/location/GnssNavigationMessage$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 369
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    .line 368
    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 142
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 360
    :pswitch_1
    const-string/jumbo v0, "ParityPassed"

    return-object v0

    .line 362
    :pswitch_2
    const-string/jumbo v0, "ParityRebuilt"

    return-object v0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :sswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 195
    :sswitch_1
    const-string/jumbo v0, "GPS L1 C/A"

    return-object v0

    .line 197
    :sswitch_2
    const-string/jumbo v0, "GPS L2-CNAV"

    return-object v0

    .line 199
    :sswitch_3
    const-string/jumbo v0, "GPS L5-CNAV"

    return-object v0

    .line 201
    :sswitch_4
    const-string/jumbo v0, "GPS CNAV2"

    return-object v0

    .line 203
    :sswitch_5
    const-string/jumbo v0, "Glonass L1 C/A"

    return-object v0

    .line 205
    :sswitch_6
    const-string/jumbo v0, "Beidou D1"

    return-object v0

    .line 207
    :sswitch_7
    const-string/jumbo v0, "Beidou D2"

    return-object v0

    .line 209
    :sswitch_8
    const-string/jumbo v0, "Galileo I"

    return-object v0

    .line 211
    :sswitch_9
    const-string/jumbo v0, "Galileo F"

    return-object v0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x301 -> :sswitch_5
        0x501 -> :sswitch_6
        0x502 -> :sswitch_7
        0x601 -> :sswitch_8
        0x602 -> :sswitch_9
    .end sparse-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 433
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 434
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 435
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 436
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 437
    sget-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 438
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 432
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 165
    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 152
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 153
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 154
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 155
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 156
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 157
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 151
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 327
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 266
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 265
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 348
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 347
    return-void
.end method

.method public setSubmessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 293
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 292
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 232
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 231
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 183
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 411
    const-string/jumbo v1, "   %-15s = %s\n"

    .line 412
    .local v1, "format":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "GnssNavigationMessage:\n"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Type"

    aput-object v7, v6, v4

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Svid"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Status"

    aput-object v7, v6, v4

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "MessageId"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "SubmessageId"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Data"

    aput-object v7, v6, v4

    const-string/jumbo v7, "{"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string/jumbo v2, "        "

    .line 422
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v3, v5, v4

    .line 423
    .local v3, "value":B
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string/jumbo v2, ", "

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "value":B
    :cond_0
    const-string/jumbo v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 395
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 401
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return-void
.end method
