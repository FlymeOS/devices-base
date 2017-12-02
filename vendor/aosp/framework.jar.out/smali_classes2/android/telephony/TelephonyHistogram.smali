.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "TelephonyHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyHistogram$1;
    }
.end annotation


# static fields
.field private static final ABSENT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRESENT:I = 0x1

.field private static final RANGE_CALCULATION_COUNT:I = 0xa

.field public static final TELEPHONY_CATEGORY_RIL:I = 0x1


# instance fields
.field private mAverageTimeMs:I

.field private final mBucketCount:I

.field private final mBucketCounters:[I

.field private final mBucketEndPoints:[I

.field private final mCategory:I

.field private final mId:I

.field private mInitialTimings:[I

.field private mMaxTimeMs:I

.field private mMinTimeMs:I

.field private mSampleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    .line 259
    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "id"    # I
    .param p3, "bucketCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid number of buckets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 85
    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 86
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 87
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 88
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 89
    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 91
    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 92
    add-int/lit8 v0, p3, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 93
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 282
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 285
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 286
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 287
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 288
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 1
    .param p1, "th"    # Landroid/telephony/TelephonyHistogram;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 98
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 102
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 103
    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 104
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 105
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 106
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 96
    return-void
.end method

.method private addToBucketCounter([I[II)V
    .locals 2
    .param p1, "bucketEndPoints"    # [I
    .param p2, "bucketCounters"    # [I
    .param p3, "time"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 174
    aget v1, p1, v0

    if-gt p3, v1, :cond_0

    .line 175
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 176
    return-void

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 171
    return-void
.end method

.method private calculateBucketEndPoints([I)V
    .locals 5
    .param p1, "bucketEndPoints"    # [I

    .prologue
    .line 183
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    if-ge v1, v2, :cond_0

    .line 184
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    div-int/2addr v3, v4

    add-int v0, v2, v3

    .line 185
    .local v0, "endPt":I
    add-int/lit8 v2, v1, -0x1

    aput v0, p1, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "endPt":I
    :cond_0
    return-void
.end method

.method private getDeepCopyOfArray([I)[I
    .locals 3
    .param p1, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 166
    array-length v1, p1

    new-array v0, v1, [I

    .line 167
    .local v0, "clone":[I
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 168
    return-object v0
.end method

.method private getInitialTimings()[I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    return-object v0
.end method


# virtual methods
.method public addTimeTaken(I)V
    .locals 9
    .param p1, "time"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 198
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_2

    .line 199
    :cond_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-nez v1, :cond_1

    .line 200
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 201
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 202
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 206
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 207
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 208
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aput p1, v1, v5

    .line 209
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 210
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 195
    :goto_1
    return-void

    .line 204
    :cond_1
    new-array v1, v8, [I

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_0

    .line 212
    :cond_2
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    if-ge p1, v1, :cond_3

    .line 213
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 215
    :cond_3
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    if-le p1, v1, :cond_4

    .line 216
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 218
    :cond_4
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    int-to-long v4, v1

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v6, v1

    mul-long/2addr v4, v6

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 219
    .local v2, "totalTime":J
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v4, v1

    div-long v4, v2, v4

    long-to-int v1, v4

    iput v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 221
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v1, v8, :cond_5

    .line 222
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v4, v4, -0x1

    aput p1, v1, v4

    goto :goto_1

    .line 223
    :cond_5
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ne v1, v8, :cond_7

    .line 224
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    add-int/lit8 v4, v4, -0x1

    aput p1, v1, v4

    .line 227
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 230
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, v8, :cond_6

    .line 231
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v5, v5, v0

    invoke-direct {p0, v1, v4, v5}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_1

    .line 235
    .end local v0    # "j":I
    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v1, v4, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getAverageTime()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    return v0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    return v0
.end method

.method public getBucketCounters()[I
    .locals 5

    .prologue
    .line 152
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 153
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [I

    .line 154
    .local v2, "tempEndPoints":[I
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    new-array v1, v3, [I

    .line 155
    .local v1, "tempBucketCounters":[I
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 156
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v0, v3, :cond_0

    .line 157
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v1, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v1

    .line 161
    .end local v0    # "j":I
    .end local v1    # "tempBucketCounters":[I
    .end local v2    # "tempEndPoints":[I
    :cond_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v3}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v3

    return-object v3
.end method

.method public getBucketEndPoints()[I
    .locals 3

    .prologue
    .line 142
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 143
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [I

    .line 144
    .local v0, "tempEndPoints":[I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 145
    return-object v0

    .line 147
    .end local v0    # "tempEndPoints":[I
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v1

    return-object v1
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    return v0
.end method

.method public getMaxTime()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    return v0
.end method

.method public getMinTime()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Histogram id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Time(ms): min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    const-string/jumbo v4, " avg = "

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    const-string/jumbo v4, " Count = "

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "basic":Ljava/lang/String;
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 245
    return-object v0

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, " Interval Endpoints:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "intervals":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const-string/jumbo v3, " Interval counters:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 292
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    :goto_0
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 306
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method
