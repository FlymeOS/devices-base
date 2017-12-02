.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private mTimestamp:J

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3488
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    .line 3491
    const/16 v13, 0x23

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    .line 3492
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    .line 3493
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/Image;->mIsImageValid:Z

    .line 3494
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    .line 3495
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3498
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    .line 3499
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    .line 3500
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    .line 3503
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    const/16 v14, 0x68

    if-ne v13, v14, :cond_b

    .line 3504
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 3505
    .local v11, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_0

    .line 3506
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3508
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 3509
    .local v8, "numPlanes":I
    const/4 v13, 0x3

    if-eq v8, v13, :cond_1

    .line 3510
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected number of planes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3512
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    .line 3513
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    .line 3514
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 3515
    :cond_2
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    .line 3516
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3515
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3518
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 3519
    .local v3, "bitDepth":I
    const/16 v13, 0x8

    if-eq v3, v13, :cond_4

    .line 3520
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3522
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 3523
    .local v4, "bitDepthAllocated":I
    const/16 v13, 0x8

    if-eq v4, v13, :cond_5

    .line 3524
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    .line 3525
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported allocated bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3524
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3527
    :cond_5
    new-array v13, v8, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    .line 3528
    const/4 v7, 0x0

    .local v7, "ix":I
    :goto_0
    if-ge v7, v8, :cond_c

    .line 3529
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 3530
    .local v9, "planeOffset":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3531
    .local v5, "colInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 3532
    .local v10, "rowInc":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 3533
    .local v6, "horiz":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 3534
    .local v12, "vert":I
    if-ne v6, v12, :cond_6

    if-nez v7, :cond_7

    const/4 v13, 0x1

    :goto_1
    if-eq v6, v13, :cond_8

    .line 3535
    :cond_6
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected subsampling: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3536
    const-string/jumbo v15, "x"

    .line 3535
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3536
    const-string/jumbo v15, " on plane "

    .line 3535
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3534
    :cond_7
    const/4 v13, 0x2

    goto :goto_1

    .line 3538
    :cond_8
    const/4 v13, 0x1

    if-lt v5, v13, :cond_9

    const/4 v13, 0x1

    if-ge v10, v13, :cond_a

    .line 3539
    :cond_9
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected strides: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3540
    const-string/jumbo v15, " pixel, "

    .line 3539
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3540
    const-string/jumbo v15, " row on plane "

    .line 3539
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3543
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 3544
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/Buffer;->position()I

    move-result v13

    add-int/2addr v13, v9

    .line 3545
    div-int v14, p6, v6

    mul-int/2addr v14, v5

    .line 3544
    add-int/2addr v13, v14

    .line 3545
    div-int v14, p7, v12

    mul-int/2addr v14, v10

    .line 3544
    add-int/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3546
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v3, v14}, Landroid/media/Utils;->divUp(II)I

    move-result v14

    add-int/2addr v13, v14

    .line 3547
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v10

    .line 3546
    add-int/2addr v13, v14

    .line 3547
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v14, v6

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v5

    .line 3546
    add-int/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3548
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v14, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v10, v5}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v14, v13, v7

    .line 3528
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 3551
    .end local v3    # "bitDepth":I
    .end local v4    # "bitDepthAllocated":I
    .end local v5    # "colInc":I
    .end local v6    # "horiz":I
    .end local v7    # "ix":I
    .end local v8    # "numPlanes":I
    .end local v9    # "planeOffset":I
    .end local v10    # "rowInc":I
    .end local v11    # "type":I
    .end local v12    # "vert":I
    :cond_b
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    .line 3552
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported info length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3551
    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3555
    .restart local v3    # "bitDepth":I
    .restart local v4    # "bitDepthAllocated":I
    .restart local v7    # "ix":I
    .restart local v8    # "numPlanes":I
    .restart local v11    # "type":I
    :cond_c
    if-nez p8, :cond_d

    .line 3556
    new-instance p8, Landroid/graphics/Rect;

    .end local p8    # "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p8

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3558
    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_d
    move/from16 v0, p6

    neg-int v13, v0

    move/from16 v0, p7

    neg-int v14, v0

    move-object/from16 v0, p8

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 3559
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 3490
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 3467
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 3468
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 3469
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    .line 3466
    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 3436
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 3437
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 3442
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 3443
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    .line 3461
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 3462
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 3454
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 3455
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 3448
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 3449
    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3481
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-eqz v0, :cond_0

    .line 3482
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 3484
    :cond_0
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 3480
    return-void
.end method
