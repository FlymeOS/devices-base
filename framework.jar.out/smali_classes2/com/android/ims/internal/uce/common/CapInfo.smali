.class public Lcom/android/ims/internal/uce/common/CapInfo;
.super Ljava/lang/Object;
.source "CapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/common/CapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/common/CapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapTimestamp:J

.field private mCdViaPresenceSupported:Z

.field private mExts:[Ljava/lang/String;

.field private mFtHttpSupported:Z

.field private mFtSnFSupported:Z

.field private mFtSupported:Z

.field private mFtThumbSupported:Z

.field private mFullSnFGroupChatSupported:Z

.field private mGeoPullFtSupported:Z

.field private mGeoPullSupported:Z

.field private mGeoPushSupported:Z

.field private mImSupported:Z

.field private mIpVideoSupported:Z

.field private mIpVoiceSupported:Z

.field private mIsSupported:Z

.field private mRcsIpVideoCallSupported:Z

.field private mRcsIpVideoOnlyCallSupported:Z

.field private mRcsIpVoiceCallSupported:Z

.field private mSmSupported:Z

.field private mSpSupported:Z

.field private mVsDuringCSSupported:Z

.field private mVsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public getCapTimestamp()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-wide v0
.end method

.method public getExts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-object v0
.end method

.method public isCdViaPresenceSupported()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return v0
.end method

.method public isFtHttpSupported()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return v0
.end method

.method public isFtSnFSupported()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return v0
.end method

.method public isFtSupported()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return v0
.end method

.method public isFtThumbSupported()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return v0
.end method

.method public isFullSnFGroupChatSupported()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return v0
.end method

.method public isGeoPullFtSupported()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return v0
.end method

.method public isGeoPullSupported()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return v0
.end method

.method public isGeoPushSupported()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return v0
.end method

.method public isImSupported()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return v0
.end method

.method public isIpVideoSupported()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return v0
.end method

.method public isIpVoiceSupported()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return v0
.end method

.method public isIsSupported()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return v0
.end method

.method public isRcsIpVideoCallSupported()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return v0
.end method

.method public isRcsIpVideoOnlyCallSupported()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return v0
.end method

.method public isRcsIpVoiceCallSupported()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return v0
.end method

.method public isSmSupported()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return v0
.end method

.method public isSpSupported()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return v0
.end method

.method public isVsDuringCSSupported()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return v0
.end method

.method public isVsSupported()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13

    :goto_13
    iput-boolean v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 418
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 419
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 420
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 421
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 422
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 423
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 424
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 425
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 426
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 427
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 428
    goto :goto_a

    :cond_b
    move v0, v2

    .line 429
    goto :goto_b

    :cond_c
    move v0, v2

    .line 430
    goto :goto_c

    :cond_d
    move v0, v2

    .line 431
    goto :goto_d

    :cond_e
    move v0, v2

    .line 432
    goto :goto_e

    :cond_f
    move v0, v2

    .line 433
    goto :goto_f

    :cond_10
    move v0, v2

    .line 434
    goto :goto_10

    :cond_11
    move v0, v2

    .line 436
    goto :goto_11

    :cond_12
    move v0, v2

    .line 437
    goto :goto_12

    :cond_13
    move v1, v2

    .line 438
    goto :goto_13
.end method

.method public setCapTimestamp(J)V
    .locals 1
    .param p1, "capTimestamp"    # J

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 365
    return-void
.end method

.method public setCdViaPresenceSupported(Z)V
    .locals 0
    .param p1, "cdViaPresenceSupported"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 222
    return-void
.end method

.method public setExts([Ljava/lang/String;)V
    .locals 0
    .param p1, "exts"    # [Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setFtHttpSupported(Z)V
    .locals 0
    .param p1, "ftHttpSupported"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 134
    return-void
.end method

.method public setFtSnFSupported(Z)V
    .locals 0
    .param p1, "ftSnFSupported"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 120
    return-void
.end method

.method public setFtSupported(Z)V
    .locals 0
    .param p1, "ftSupported"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 148
    return-void
.end method

.method public setFtThumbSupported(Z)V
    .locals 0
    .param p1, "ftThumbSupported"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 104
    return-void
.end method

.method public setFullSnFGroupChatSupported(Z)V
    .locals 0
    .param p1, "fullSnFGroupChatSupported"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 334
    return-void
.end method

.method public setGeoPullFtSupported(Z)V
    .locals 0
    .param p1, "geoPullFtSupported"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 266
    return-void
.end method

.method public setGeoPullSupported(Z)V
    .locals 0
    .param p1, "geoPullSupported"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 280
    return-void
.end method

.method public setGeoPushSupported(Z)V
    .locals 0
    .param p1, "geoPushSupported"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 294
    return-void
.end method

.method public setImSupported(Z)V
    .locals 0
    .param p1, "imSupported"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 90
    return-void
.end method

.method public setIpVideoSupported(Z)V
    .locals 0
    .param p1, "ipVideoSupported"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 250
    return-void
.end method

.method public setIpVoiceSupported(Z)V
    .locals 0
    .param p1, "ipVoiceSupported"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 236
    return-void
.end method

.method public setIsSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 162
    return-void
.end method

.method public setRcsIpVideoCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVideoCallSupported"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 341
    return-void
.end method

.method public setRcsIpVideoOnlyCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVideoOnlyCallSupported"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 344
    return-void
.end method

.method public setRcsIpVoiceCallSupported(Z)V
    .locals 0
    .param p1, "rcsIpVoiceCallSupported"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 338
    return-void
.end method

.method public setSmSupported(Z)V
    .locals 0
    .param p1, "smSupported"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 308
    return-void
.end method

.method public setSpSupported(Z)V
    .locals 0
    .param p1, "spSupported"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 206
    return-void
.end method

.method public setVsDuringCSSupported(Z)V
    .locals 0
    .param p1, "vsDuringCSSupported"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 177
    return-void
.end method

.method public setVsSupported(Z)V
    .locals 0
    .param p1, "vsSupported"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    if-eqz v0, :cond_13

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 398
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    return-void

    :cond_0
    move v0, v2

    .line 376
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 377
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 378
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 379
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 380
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 381
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 382
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 383
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 384
    goto :goto_8

    :cond_9
    move v0, v2

    .line 385
    goto :goto_9

    :cond_a
    move v0, v2

    .line 386
    goto :goto_a

    :cond_b
    move v0, v2

    .line 387
    goto :goto_b

    :cond_c
    move v0, v2

    .line 388
    goto :goto_c

    :cond_d
    move v0, v2

    .line 389
    goto :goto_d

    :cond_e
    move v0, v2

    .line 390
    goto :goto_e

    :cond_f
    move v0, v2

    .line 391
    goto :goto_f

    :cond_10
    move v0, v2

    .line 392
    goto :goto_10

    :cond_11
    move v0, v2

    .line 394
    goto :goto_11

    :cond_12
    move v0, v2

    .line 395
    goto :goto_12

    :cond_13
    move v1, v2

    .line 396
    goto :goto_13
.end method
