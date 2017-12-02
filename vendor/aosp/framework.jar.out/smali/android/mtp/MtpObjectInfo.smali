.class public final Landroid/mtp/MtpObjectInfo;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpObjectInfo$Builder;
    }
.end annotation


# instance fields
.field private mAssociationDesc:I

.field private mAssociationType:I

.field private mCompressedSize:I

.field private mDateCreated:J

.field private mDateModified:J

.field private mFormat:I

.field private mHandle:I

.field private mImagePixDepth:I

.field private mImagePixHeight:I

.field private mImagePixWidth:I

.field private mKeywords:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:I

.field private mProtectionStatus:I

.field private mSequenceNumber:I

.field private mStorageId:I

.field private mThumbCompressedSize:I

.field private mThumbFormat:I

.field private mThumbPixHeight:I

.field private mThumbPixWidth:I


# direct methods
.method static synthetic -get0(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return v0
.end method

.method static synthetic -get1(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return v0
.end method

.method static synthetic -get10(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return v0
.end method

.method static synthetic -get12(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return v0
.end method

.method static synthetic -get13(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return v0
.end method

.method static synthetic -get14(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return v0
.end method

.method static synthetic -get15(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return v0
.end method

.method static synthetic -get16(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return v0
.end method

.method static synthetic -get17(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return v0
.end method

.method static synthetic -get18(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return v0
.end method

.method static synthetic -get2(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return v0
.end method

.method static synthetic -get3(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method static synthetic -get5(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return v0
.end method

.method static synthetic -get6(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return v0
.end method

.method static synthetic -get7(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return v0
.end method

.method static synthetic -get8(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return v0
.end method

.method static synthetic -get9(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return p1
.end method

.method static synthetic -set1(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return p1
.end method

.method static synthetic -set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return p1
.end method

.method static synthetic -set13(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return p1
.end method

.method static synthetic -set14(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return p1
.end method

.method static synthetic -set15(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return p1
.end method

.method static synthetic -set16(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return p1
.end method

.method static synthetic -set17(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return p1
.end method

.method static synthetic -set18(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return p1
.end method

.method static synthetic -set19(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return p1
.end method

.method static synthetic -set2(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return p1
.end method

.method static synthetic -set3(Landroid/mtp/MtpObjectInfo;J)J
    .locals 1

    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/mtp/MtpObjectInfo;J)J
    .locals 1

    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide p1
.end method

.method static synthetic -set5(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return p1
.end method

.method static synthetic -set6(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return p1
.end method

.method static synthetic -set7(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return p1
.end method

.method static synthetic -set8(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return p1
.end method

.method static synthetic -set9(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return p1
.end method

.method static synthetic -wrap0(JLjava/lang/String;)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "valueName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/mtp/MtpObjectInfo;-><init>()V

    return-void
.end method

.method private static longToUint32(JLjava/lang/String;)I
    .locals 8
    .param p0, "value"    # J
    .param p2, "valueName"    # Ljava/lang/String;

    .prologue
    .line 507
    const-wide/16 v2, 0x0

    const-wide v4, 0xffffffffL

    move-wide v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 508
    long-to-int v0, p0

    return v0
.end method

.method private static uint32ToLong(I)J
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 503
    if-gez p0, :cond_0

    int-to-long v0, p0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final getAssociationDesc()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return v0
.end method

.method public final getAssociationType()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return v0
.end method

.method public final getCompressedSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 102
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return v0
.end method

.method public final getCompressedSizeLong()J
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDateCreated()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method public final getDateModified()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return v0
.end method

.method public final getImagePixDepth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 236
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 237
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return v0
.end method

.method public final getImagePixDepthLong()J
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 215
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 216
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return v0
.end method

.method public final getImagePixHeightLong()J
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 195
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return v0
.end method

.method public final getImagePixWidthLong()J
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectHandle()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return v0
.end method

.method public final getParent()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return v0
.end method

.method public final getProtectionStatus()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return v0
.end method

.method public final getSequenceNumber()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 293
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 294
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return v0
.end method

.method public final getSequenceNumberLong()J
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return v0
.end method

.method public final getThumbCompressedSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 132
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return v0
.end method

.method public final getThumbCompressedSizeLong()J
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbFormat()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return v0
.end method

.method public final getThumbPixHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 174
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return v0
.end method

.method public final getThumbPixHeightLong()J
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbPixWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 153
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return v0
.end method

.method public final getThumbPixWidthLong()J
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method
