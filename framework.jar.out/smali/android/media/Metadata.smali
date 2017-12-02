.class public Landroid/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALBUM:I = 0x8

.field public static final ALBUM_ART:I = 0x12

.field public static final ANY:I = 0x0

.field public static final ARTIST:I = 0x9

.field public static final AUDIO_BIT_RATE:I = 0x15

.field public static final AUDIO_CODEC:I = 0x1a

.field public static final AUDIO_SAMPLE_RATE:I = 0x17

.field public static final AUTHOR:I = 0xa

.field public static final BIT_RATE:I = 0x14

.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x7

.field public static final CD_TRACK_MAX:I = 0x10

.field public static final CD_TRACK_NUM:I = 0xf

.field public static final COMMENT:I = 0x6

.field public static final COMPOSER:I = 0xb

.field public static final COPYRIGHT:I = 0x7

.field public static final DATE:I = 0xd

.field public static final DATE_VAL:I = 0x6

.field public static final DOUBLE_VAL:I = 0x5

.field public static final DRM_CRIPPLED:I = 0x1f

.field public static final DURATION:I = 0xe

.field private static final FIRST_CUSTOM:I = 0x2000

.field public static final GENRE:I = 0xc

.field public static final INTEGER_VAL:I = 0x2

.field private static final LAST_SYSTEM:I = 0x1f

.field private static final LAST_TYPE:I = 0x7

.field public static final LONG_VAL:I = 0x4

.field public static final MATCH_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:I = 0x19

.field public static final NUM_TRACKS:I = 0x1e

.field public static final PAUSE_AVAILABLE:I = 0x1

.field public static final RATING:I = 0x11

.field public static final SEEK_AVAILABLE:I = 0x4

.field public static final SEEK_BACKWARD_AVAILABLE:I = 0x2

.field public static final SEEK_FORWARD_AVAILABLE:I = 0x3

.field public static final STRING_VAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "media.Metadata"

.field public static final TITLE:I = 0x5

.field public static final VIDEO_BIT_RATE:I = 0x16

.field public static final VIDEO_CODEC:I = 0x1b

.field public static final VIDEO_FRAME:I = 0x13

.field public static final VIDEO_FRAME_RATE:I = 0x18

.field public static final VIDEO_HEIGHT:I = 0x1c

.field public static final VIDEO_WIDTH:I = 0x1d

.field private static final kInt32Size:I = 0x4

.field private static final kMetaHeaderSize:I = 0x8

.field private static final kMetaMarker:I = 0x4d455441

.field private static final kRecordHeaderSize:I = 0xc


# instance fields
.field private final mKeyToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Landroid/media/Metadata;->MATCH_NONE:Ljava/util/Set;

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/Metadata;->MATCH_ALL:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    iput-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    .line 267
    return-void
.end method

.method private checkMetadataId(I)Z
    .locals 4
    .param p1, "val"    # I

    .prologue
    const/4 v3, 0x0

    .line 533
    if-lez p1, :cond_0

    const/16 v0, 0x1f

    if-ge v0, p1, :cond_1

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_1

    .line 534
    :cond_0
    const-string/jumbo v0, "media.Metadata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid metadata ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v3

    .line 537
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkType(II)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "expectedType"    # I

    .prologue
    .line 544
    iget-object v2, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 546
    .local v0, "pos":I
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 548
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .local v1, "type":I
    if-eq v1, p2, :cond_0

    .line 550
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wrong type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    :cond_0
    return-void
.end method

.method public static firstCustomId()I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x2000

    return v0
.end method

.method public static lastSytemId()I
    .locals 1

    .prologue
    .line 513
    const/16 v0, 0x1f

    return v0
.end method

.method public static lastType()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x7

    return v0
.end method

.method private scanAllRecords(Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bytesLeft"    # I

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x0

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, "recCount":I
    const/4 v1, 0x0

    .line 297
    .local v1, "error":Z
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 298
    :goto_0
    if-le p2, v11, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 301
    .local v6, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 303
    .local v5, "size":I
    if-gt v5, v11, :cond_2

    .line 304
    const-string/jumbo v7, "media.Metadata"

    const-string/jumbo v8, "Record is too short"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x1

    .line 348
    .end local v5    # "size":I
    .end local v6    # "start":I
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    if-eqz v1, :cond_7

    .line 349
    :cond_1
    const-string/jumbo v7, "media.Metadata"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ran out of data or error on record "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 351
    return v10

    .line 310
    .restart local v5    # "size":I
    .restart local v6    # "start":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "metadataId":I
    invoke-direct {p0, v2}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 312
    const/4 v1, 0x1

    .line 313
    goto :goto_1

    .line 319
    :cond_3
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 320
    const-string/jumbo v7, "media.Metadata"

    const-string/jumbo v8, "Duplicate metadata ID found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x1

    .line 322
    goto :goto_1

    .line 325
    :cond_4
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    .local v3, "metadataType":I
    if-lez v3, :cond_5

    const/4 v7, 0x7

    if-le v3, v7, :cond_6

    .line 330
    :cond_5
    const-string/jumbo v7, "media.Metadata"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid metadata type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x1

    .line 332
    goto :goto_1

    .line 337
    :cond_6
    :try_start_0
    invoke-static {v6, v5}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    sub-int/2addr p2, v5

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "media.Metadata"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x1

    .line 341
    goto/16 :goto_1

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "metadataId":I
    .end local v3    # "metadataType":I
    .end local v5    # "size":I
    .end local v6    # "start":I
    :cond_7
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method public getBoolean(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 459
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Landroid/media/Metadata;->checkType(II)V

    .line 460
    iget-object v1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 485
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 486
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 493
    const/4 v5, 0x6

    invoke-direct {p0, p1, v5}, Landroid/media/Metadata;->checkType(II)V

    .line 494
    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 495
    .local v2, "timeSinceEpoch":J
    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "timeZone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 498
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v5

    .line 500
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 501
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 503
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 477
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 478
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 451
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 452
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 467
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 470
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    .line 444
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(I)Z
    .locals 3
    .param p1, "metadataId"    # I

    .prologue
    .line 429
    invoke-direct {p0, p1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 387
    const-string/jumbo v3, "media.Metadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not enough data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v6

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 392
    .local v1, "pin":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-lt v3, v2, :cond_1

    if-ge v2, v4, :cond_2

    .line 396
    :cond_1
    const-string/jumbo v3, "media.Metadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 398
    return v6

    .line 402
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, "kShouldBeMetaMarker":I
    const v3, 0x4d455441    # 2.06914576E8f

    if-eq v0, v3, :cond_3

    .line 404
    const-string/jumbo v3, "media.Metadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Marker missing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 406
    return v6

    .line 410
    :cond_3
    add-int/lit8 v3, v2, -0x8

    invoke-direct {p0, p1, v3}, Landroid/media/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 412
    return v6

    .line 414
    :cond_4
    iput-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    .line 415
    const/4 v3, 0x1

    return v3
.end method
