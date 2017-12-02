.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field private static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field private static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 954
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    return-void
.end method

.method private static compareContentDigestAlgorithm(II)I
    .locals 3
    .param p0, "digestAlgorithm1"    # I
    .param p1, "digestAlgorithm2"    # I

    .prologue
    const/4 v0, 0x0

    .line 635
    packed-switch p0, :pswitch_data_0

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :pswitch_1
    return v0

    .line 641
    :pswitch_2
    const/4 v0, -0x1

    return v0

    .line 647
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 651
    :pswitch_5
    return v0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 637
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 647
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static compareSignatureAlgorithm(II)I
    .locals 3
    .param p0, "sigAlgorithm1"    # I
    .param p1, "sigAlgorithm2"    # I

    .prologue
    .line 629
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    .line 630
    .local v0, "digestAlgorithm1":I
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 631
    .local v1, "digestAlgorithm2":I
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method private static computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    .locals 36
    .param p0, "digestAlgorithms"    # [I
    .param p1, "contents"    # [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 463
    const-wide/16 v30, 0x0

    .line 464
    .local v30, "totalChunkCountLong":J
    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    aget-object v17, p1, v29

    .line 465
    .local v17, "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getChunkCount(J)J

    move-result-wide v34

    add-long v30, v30, v34

    .line 464
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 467
    .end local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    :cond_0
    const-wide/32 v32, 0x1fffff

    cmp-long v29, v30, v32

    if-ltz v29, :cond_1

    .line 468
    new-instance v29, Ljava/security/DigestException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Too many chunks: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 470
    :cond_1
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v28, v0

    .line 472
    .local v28, "totalChunkCount":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v12, v0, [[B

    .line 473
    .local v12, "digestsOfChunks":[[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 474
    aget v10, p0, v16

    .line 475
    .local v10, "digestAlgorithm":I
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    .line 477
    .local v11, "digestOutputSizeBytes":I
    mul-int v29, v28, v11

    add-int/lit8 v29, v29, 0x5

    move/from16 v0, v29

    new-array v8, v0, [B

    .line 478
    .local v8, "concatenationOfChunkCountAndChunkDigests":[B
    const/16 v29, 0x5a

    const/16 v32, 0x0

    aput-byte v29, v8, v32

    .line 482
    const/16 v29, 0x1

    .line 479
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v8, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    .line 483
    aput-object v8, v12, v16

    .line 473
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 486
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v11    # "digestOutputSizeBytes":I
    :cond_2
    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v5, v0, [B

    .line 487
    .local v5, "chunkContentPrefix":[B
    const/16 v29, -0x5b

    const/16 v32, 0x0

    aput-byte v29, v5, v32

    .line 488
    const/4 v6, 0x0

    .line 489
    .local v6, "chunkIndex":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/security/MessageDigest;

    move-object/from16 v25, v0

    .line 490
    .local v25, "mds":[Ljava/security/MessageDigest;
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 492
    aget v29, p0, v16

    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    .line 494
    .local v19, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v29

    aput-object v29, v25, v16
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 495
    :catch_0
    move-exception v14

    .line 496
    .local v14, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    .line 502
    .end local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 503
    .local v9, "dataSourceIndex":I
    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    aget-object v17, p1, v29

    .line 504
    .restart local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    const-wide/16 v20, 0x0

    .line 505
    .local v20, "inputOffset":J
    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v22

    .line 506
    .local v22, "inputRemaining":J
    :goto_4
    const-wide/16 v34, 0x0

    cmp-long v33, v22, v34

    if-lez v33, :cond_7

    .line 507
    const-wide/32 v34, 0x100000

    move-wide/from16 v0, v22

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v7, v0

    .line 508
    .local v7, "chunkSize":I
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-static {v7, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    .line 509
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    .line 510
    aget-object v33, v25, v16

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 509
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 513
    :cond_4
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    .line 521
    aget v10, p0, v16

    .line 522
    .restart local v10    # "digestAlgorithm":I
    aget-object v8, v12, v16

    .line 524
    .restart local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v15

    .line 525
    .local v15, "expectedDigestSizeBytes":I
    aget-object v24, v25, v16

    .line 529
    .local v24, "md":Ljava/security/MessageDigest;
    mul-int v33, v6, v15

    add-int/lit8 v33, v33, 0x5

    .line 527
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1, v15}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v4

    .line 531
    .local v4, "actualDigestSizeBytes":I
    if-eq v4, v15, :cond_5

    .line 532
    new-instance v29, Ljava/lang/RuntimeException;

    .line 533
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Unexpected output size of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 532
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 514
    .end local v4    # "actualDigestSizeBytes":I
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v15    # "expectedDigestSizeBytes":I
    .end local v24    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v13

    .line 515
    .local v13, "e":Ljava/io/IOException;
    new-instance v29, Ljava/security/DigestException;

    .line 516
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Failed to digest chunk #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " of section #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 515
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v13}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    .line 520
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "actualDigestSizeBytes":I
    .restart local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .restart local v10    # "digestAlgorithm":I
    .restart local v15    # "expectedDigestSizeBytes":I
    .restart local v24    # "md":Ljava/security/MessageDigest;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 537
    .end local v4    # "actualDigestSizeBytes":I
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v15    # "expectedDigestSizeBytes":I
    .end local v24    # "md":Ljava/security/MessageDigest;
    :cond_6
    int-to-long v0, v7

    move-wide/from16 v34, v0

    add-long v20, v20, v34

    .line 538
    int-to-long v0, v7

    move-wide/from16 v34, v0

    sub-long v22, v22, v34

    .line 539
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 541
    .end local v7    # "chunkSize":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 503
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 544
    .end local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    .end local v20    # "inputOffset":J
    .end local v22    # "inputRemaining":J
    :cond_8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [[B

    move-object/from16 v27, v0

    .line 545
    .local v27, "result":[[B
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 546
    aget v10, p0, v16

    .line 547
    .restart local v10    # "digestAlgorithm":I
    aget-object v18, v12, v16

    .line 548
    .local v18, "input":[B
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    .line 551
    .restart local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    .line 555
    .restart local v24    # "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v26

    .line 556
    .local v26, "output":[B
    aput-object v26, v27, v16

    .line 545
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 552
    .end local v24    # "md":Ljava/security/MessageDigest;
    .end local v26    # "output":[B
    :catch_2
    move-exception v14

    .line 553
    .restart local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    .line 558
    .end local v10    # "digestAlgorithm":I
    .end local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v18    # "input":[B
    .end local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_9
    return-object v27
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    .line 913
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 920
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v7, v7, -0x18

    invoke-static {p0, v10, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 922
    .local v6, "pairs":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 923
    .local v0, "entryCount":I
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 925
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 926
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 927
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 926
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 929
    :cond_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 930
    .local v4, "lenLong":J
    const-wide/16 v8, 0x4

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 931
    :cond_1
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 932
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 933
    const-string/jumbo v9, " size out of range: "

    .line 932
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 931
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 935
    :cond_2
    long-to-int v2, v4

    .line 936
    .local v2, "len":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v3, v7, v2

    .line 937
    .local v3, "nextEntryPos":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 938
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 939
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 940
    const-string/jumbo v9, ", available: "

    .line 939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 940
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 938
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 942
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 943
    .local v1, "id":I
    const v7, 0x7109871a

    if-ne v1, v7, :cond_4

    .line 944
    add-int/lit8 v7, v2, -0x4

    invoke-static {v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    .line 946
    :cond_4
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 949
    .end local v1    # "id":I
    .end local v2    # "len":I
    .end local v3    # "nextEntryPos":I
    .end local v4    # "lenLong":J
    :cond_5
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 950
    const-string/jumbo v8, "No APK Signature Scheme v2 block in APK Signing Block"

    .line 949
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 17
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 868
    const-wide/16 v12, 0x20

    cmp-long v11, p1, v12

    if-gez v11, :cond_0

    .line 869
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 870
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 869
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 876
    :cond_0
    const/16 v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 877
    .local v3, "footer":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 878
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    sub-long v12, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 879
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 880
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 881
    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 882
    :cond_1
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 883
    const-string/jumbo v12, "No APK Signing Block before ZIP Central Directory"

    .line 882
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 886
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 887
    .local v6, "apkSigBlockSizeInFooter":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-ltz v11, :cond_3

    .line 888
    const-wide/32 v12, 0x7ffffff7

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    .line 889
    :cond_3
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 890
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block size out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 889
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 892
    :cond_4
    const-wide/16 v12, 0x8

    add-long/2addr v12, v6

    long-to-int v10, v12

    .line 893
    .local v10, "totalSize":I
    int-to-long v12, v10

    sub-long v4, p1, v12

    .line 894
    .local v4, "apkSigBlockOffset":J
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_5

    .line 895
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 896
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block offset out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 895
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 898
    :cond_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 899
    .local v2, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 901
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 902
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 903
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v11, v8, v6

    if-eqz v11, :cond_6

    .line 904
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 905
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 906
    const-string/jumbo v13, " vs "

    .line 905
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 904
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 908
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .locals 13
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v12

    .line 171
    .local v12, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 172
    .local v8, "eocd":Ljava/nio/ByteBuffer;
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 173
    .local v6, "eocdOffset":J
    invoke-static {p0, v6, v7}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v9, "ZIP64 APK not supported"

    invoke-direct {v0, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-static {v8, v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 180
    .local v4, "centralDirOffset":J
    invoke-static {p0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v11

    .line 181
    .local v11, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 182
    .local v10, "apkSigningBlock":Ljava/nio/ByteBuffer;
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 185
    .local v2, "apkSigningBlockOffset":J
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 187
    .local v1, "apkSignatureSchemeV2Block":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)V

    return-object v0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 796
    if-gez p1, :cond_0

    .line 797
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 799
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 800
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 801
    .local v2, "position":I
    add-int v0, v2, p1

    .line 802
    .local v0, "limit":I
    if-lt v0, v2, :cond_1

    if-le v0, v1, :cond_2

    .line 803
    :cond_1
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    .line 805
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 807
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 808
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 809
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 810
    return-object v3

    .line 811
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    .line 812
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 811
    throw v4
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 7
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 582
    .local v0, "centralDirOffset":J
    cmp-long v4, v0, p1

    if-ltz v4, :cond_0

    .line 583
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZIP Central Directory offset out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 585
    const-string/jumbo v6, ". ZIP End of Central Directory offset: "

    .line 584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 583
    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 587
    :cond_0
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 588
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    .line 589
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 590
    const-string/jumbo v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    .line 589
    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 593
    :cond_1
    return-wide v0
.end method

.method private static final getChunkCount(J)J
    .locals 6
    .param p0, "inputSizeBytes"    # J

    .prologue
    const-wide/32 v4, 0x100000

    .line 597
    add-long v0, p0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    return-wide v0
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .prologue
    .line 680
    packed-switch p0, :pswitch_data_0

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :pswitch_0
    const-string/jumbo v0, "SHA-256"

    return-object v0

    .line 684
    :pswitch_1
    const-string/jumbo v0, "SHA-512"

    return-object v0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .prologue
    .line 692
    packed-switch p0, :pswitch_data_0

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :pswitch_0
    const/16 v0, 0x20

    return v0

    .line 696
    :pswitch_1
    const/16 v0, 0x40

    return v0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 571
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 572
    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    .line 573
    const-string/jumbo v2, "Not an APK file: ZIP End of Central Directory record not found"

    .line 572
    invoke-direct {v1, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    return-object v0
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 818
    new-instance v1, Ljava/io/IOException;

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 820
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 823
    .local v0, "len":I
    if-gez v0, :cond_1

    .line 824
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 826
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 827
    const-string/jumbo v3, ", remaining: "

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 827
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 829
    :cond_2
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .prologue
    .line 662
    sparse-switch p0, :sswitch_data_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 675
    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 671
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_0
        0x104 -> :sswitch_1
        0x201 -> :sswitch_0
        0x202 -> :sswitch_1
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .prologue
    .line 704
    sparse-switch p0, :sswitch_data_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 718
    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :sswitch_0
    const-string/jumbo v0, "RSA"

    return-object v0

    .line 712
    :sswitch_1
    const-string/jumbo v0, "EC"

    return-object v0

    .line 714
    :sswitch_2
    const-string/jumbo v0, "DSA"

    return-object v0

    .line 704
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_1
        0x202 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 7
    .param p0, "sigAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 724
    sparse-switch p0, :sswitch_data_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :sswitch_0
    const-string/jumbo v6, "SHA256withRSA/PSS"

    .line 728
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    .line 729
    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    .line 728
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 726
    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 732
    :sswitch_1
    const-string/jumbo v6, "SHA512withRSA/PSS"

    .line 733
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    .line 734
    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    .line 733
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 731
    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 736
    :sswitch_2
    const-string/jumbo v0, "SHA256withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 738
    :sswitch_3
    const-string/jumbo v0, "SHA512withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 740
    :sswitch_4
    const-string/jumbo v0, "SHA256withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 742
    :sswitch_5
    const-string/jumbo v0, "SHA512withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 744
    :sswitch_6
    const-string/jumbo v0, "SHA256withDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_2
        0x104 -> :sswitch_3
        0x201 -> :sswitch_4
        0x202 -> :sswitch_5
        0x301 -> :sswitch_6
    .end sparse-switch
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 7
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    const/4 v0, 0x0

    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    const/4 v3, 0x1

    .line 93
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    move-object v0, v1

    .line 92
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 93
    .end local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 90
    :cond_1
    return v3

    .line 93
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 91
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    goto :goto_1

    .line 93
    .end local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    goto :goto_3

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .local v0, "apk":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1
    .param p0, "sigAlgorithm"    # I

    .prologue
    .line 614
    sparse-switch p0, :sswitch_data_0

    .line 624
    const/4 v0, 0x0

    return v0

    .line 622
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 834
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 835
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Negative length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 837
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 838
    const-string/jumbo v4, ", available: "

    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 838
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 840
    :cond_1
    new-array v1, v0, [B

    .line 841
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 842
    return-object v1
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 846
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 847
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 848
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 849
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 845
    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 759
    if-gez p1, :cond_0

    .line 760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    :cond_0
    if-ge p2, p1, :cond_1

    .line 763
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end < start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 766
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le p2, v4, :cond_2

    .line 767
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end > capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 769
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 770
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 772
    .local v2, "originalPosition":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 773
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 774
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 775
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 776
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 781
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 777
    return-object v3

    .line 778
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    .line 779
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 781
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 778
    throw v4
.end method

.method private static verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;
    .locals 20
    .param p0, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "signatureInfo"    # Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 205
    const/16 v18, 0x0

    .line 206
    .local v18, "signerCount":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 207
    .local v2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v17, "signerCerts":Ljava/util/List;, "Ljava/util/List<[Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 216
    .local v11, "certFactory":Ljava/security/cert/CertificateFactory;
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get4(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    .line 220
    .local v19, "signers":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    add-int/lit8 v18, v18, 0x1

    .line 223
    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 224
    .local v16, "signer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    invoke-static {v0, v2, v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 225
    .local v12, "certs":[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 226
    .end local v12    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v16    # "signer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v14

    .line 227
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-direct {v3, v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 211
    .end local v11    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v15

    .line 212
    .local v15, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v15    # "e":Ljava/security/cert/CertificateException;
    .restart local v11    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_2
    move-exception v13

    .line 218
    .local v13, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Failed to read list of signers"

    invoke-direct {v3, v4, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 233
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v19    # "signers":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 234
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No signers found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No content digests found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get0(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v4

    .line 245
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get1(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v6

    .line 246
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get3(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v8

    .line 247
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get2(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v3, p0

    .line 241
    invoke-static/range {v2 .. v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V

    .line 249
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/X509Certificate;

    return-object v3
.end method

.method private static verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    move-result-object v0

    .line 123
    .local v0, "signatureInfo":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x0

    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 108
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .line 107
    :cond_1
    return-object v2

    .line 108
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v2

    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .local v0, "apk":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private static verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "apkSigningBlockOffset"    # J
    .param p4, "centralDirOffset"    # J
    .param p6, "eocdOffset"    # J
    .param p8, "eocdBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "No digests provided"

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 411
    :cond_0
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    const-wide/16 v6, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 413
    .local v4, "beforeApkSigningBlock":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    .line 414
    sub-long v10, p6, p4

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    .line 413
    invoke-direct/range {v6 .. v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 418
    .local v6, "centralDir":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p8

    .line 419
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    move-object/from16 v0, p8

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 421
    new-instance v19, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 423
    .local v19, "eocd":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 424
    .local v17, "digestAlgorithms":[I
    const/16 v16, 0x0

    .line 425
    .local v16, "digestAlgorithmCount":I
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "digestAlgorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 426
    .local v14, "digestAlgorithm":I
    aput v14, v17, v16

    .line 427
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 434
    .end local v14    # "digestAlgorithm":I
    :cond_1
    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object v19, v5, v7

    .line 432
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 438
    .local v13, "actualDigests":[[B
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_3

    .line 439
    aget v14, v17, v21

    .line 440
    .restart local v14    # "digestAlgorithm":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 441
    .local v20, "expectedDigest":[B
    aget-object v12, v13, v21

    .line 442
    .local v12, "actualDigest":[B
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 443
    new-instance v5, Ljava/lang/SecurityException;

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 445
    const-string/jumbo v8, " digest of contents did not verify"

    .line 444
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 443
    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 435
    .end local v12    # "actualDigest":[B
    .end local v13    # "actualDigests":[[B
    .end local v14    # "digestAlgorithm":I
    .end local v20    # "expectedDigest":[B
    .end local v21    # "i":I
    :catch_0
    move-exception v18

    .line 436
    .local v18, "e":Ljava/security/DigestException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Failed to compute digest(s) of contents"

    move-object/from16 v0, v18

    invoke-direct {v5, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 438
    .end local v18    # "e":Ljava/security/DigestException;
    .restart local v12    # "actualDigest":[B
    .restart local v13    # "actualDigests":[[B
    .restart local v14    # "digestAlgorithm":I
    .restart local v20    # "expectedDigest":[B
    .restart local v21    # "i":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 394
    .end local v12    # "actualDigest":[B
    .end local v14    # "digestAlgorithm":I
    .end local v20    # "expectedDigest":[B
    :cond_3
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 40
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v36

    .line 257
    .local v36, "signedData":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v34

    .line 258
    .local v34, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v27

    .line 260
    .local v27, "publicKeyBytes":[B
    const/16 v33, 0x0

    .line 261
    .local v33, "signatureCount":I
    const/4 v3, -0x1

    .line 262
    .local v3, "bestSigAlgorithm":I
    const/4 v4, 0x0

    .line 263
    .local v4, "bestSigAlgorithmSignatureBytes":[B
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .end local v4    # "bestSigAlgorithmSignatureBytes":[B
    .local v35, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_3

    .line 265
    add-int/lit8 v33, v33, 0x1

    .line 267
    :try_start_0
    invoke-static/range {v34 .. v34}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 268
    .local v31, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1

    .line 269
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Signature record too short"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v31    # "signature":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v17

    .line 282
    .local v17, "e":Ljava/lang/Exception;
    new-instance v37, Ljava/lang/SecurityException;

    .line 283
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse signature record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 282
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    .line 271
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v31    # "signature":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    .line 272
    .local v29, "sigAlgorithm":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 276
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v3, v0, :cond_2

    .line 277
    move/from16 v0, v29

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareSignatureAlgorithm(II)I

    move-result v37

    if-lez v37, :cond_0

    .line 278
    :cond_2
    move/from16 v3, v29

    .line 279
    invoke-static/range {v31 .. v31}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "bestSigAlgorithmSignatureBytes":[B
    goto :goto_0

    .line 287
    .end local v4    # "bestSigAlgorithmSignatureBytes":[B
    .end local v29    # "sigAlgorithm":I
    .end local v31    # "signature":Ljava/nio/ByteBuffer;
    :cond_3
    const/16 v37, -0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_5

    .line 288
    if-nez v33, :cond_4

    .line 289
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 291
    :cond_4
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No supported signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 295
    :cond_5
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v23

    .line 297
    .local v23, "keyAlgorithm":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v32

    .line 298
    .local v32, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 299
    .local v21, "jcaSignatureAlgorithm":Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/security/spec/AlgorithmParameterSpec;

    .line 303
    .local v22, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_2
    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v37

    .line 304
    new-instance v38, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 303
    invoke-virtual/range {v37 .. v38}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v26

    .line 305
    .local v26, "publicKey":Ljava/security/PublicKey;
    invoke-static/range {v21 .. v21}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v28

    .line 306
    .local v28, "sig":Ljava/security/Signature;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 307
    if-eqz v22, :cond_6

    .line 308
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    :cond_6
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 311
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v30

    .line 317
    .local v30, "sigVerified":Z
    if-nez v30, :cond_7

    .line 318
    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature did not verify"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 313
    .end local v26    # "publicKey":Ljava/security/PublicKey;
    .end local v28    # "sig":Ljava/security/Signature;
    .end local v30    # "sigVerified":Z
    :catch_1
    move-exception v18

    .line 314
    .local v18, "e":Ljava/security/GeneralSecurityException;
    new-instance v37, Ljava/lang/SecurityException;

    .line 315
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to verify "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 314
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    .line 323
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .restart local v26    # "publicKey":Ljava/security/PublicKey;
    .restart local v28    # "sig":Ljava/security/Signature;
    .restart local v30    # "sigVerified":Z
    :cond_7
    const/4 v11, 0x0

    .line 324
    .local v11, "contentDigest":[B
    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 325
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 326
    .local v15, "digests":Ljava/nio/ByteBuffer;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v16, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 328
    .end local v11    # "contentDigest":[B
    .local v14, "digestCount":I
    :cond_8
    :goto_1
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 329
    add-int/lit8 v14, v14, 0x1

    .line 331
    :try_start_3
    invoke-static {v15}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 332
    .local v12, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    .line 333
    new-instance v37, Ljava/io/IOException;

    const-string/jumbo v38, "Record too short"

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    .line 340
    .end local v12    # "digest":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v17

    .line 341
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse digest record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    .line 335
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v12    # "digest":Ljava/nio/ByteBuffer;
    :cond_9
    :try_start_4
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    .line 336
    .restart local v29    # "sigAlgorithm":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    move/from16 v0, v29

    if-ne v0, v3, :cond_8

    .line 338
    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    .local v11, "contentDigest":[B
    goto :goto_1

    .line 345
    .end local v11    # "contentDigest":[B
    .end local v12    # "digest":Ljava/nio/ByteBuffer;
    .end local v29    # "sigAlgorithm":I
    :cond_a
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    .line 346
    new-instance v37, Ljava/lang/SecurityException;

    .line 347
    const-string/jumbo v38, "Signature algorithms don\'t match between digests and signatures records"

    .line 346
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 349
    :cond_b
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v13

    .line 350
    .local v13, "digestAlgorithm":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    .line 351
    .local v25, "previousSignerDigest":[B
    if-eqz v25, :cond_c

    .line 352
    move-object/from16 v0, v25

    invoke-static {v0, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 358
    :cond_c
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 359
    .local v9, "certificates":Ljava/nio/ByteBuffer;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v10, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    .line 361
    .local v7, "certificateCount":I
    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_e

    .line 362
    add-int/lit8 v7, v7, 0x1

    .line 363
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v20

    .line 367
    .local v20, "encodedCert":[B
    :try_start_5
    new-instance v37, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 366
    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 371
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;

    move-object/from16 v0, v20

    invoke-direct {v6, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 372
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .local v6, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 353
    .end local v6    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "certificateCount":I
    .end local v9    # "certificates":Ljava/nio/ByteBuffer;
    .end local v10    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "encodedCert":[B
    :cond_d
    new-instance v37, Ljava/lang/SecurityException;

    .line 354
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 355
    const-string/jumbo v39, " contents digest does not match the digest specified by a preceding signer"

    .line 354
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 353
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 368
    .restart local v7    # "certificateCount":I
    .restart local v9    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v10    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "encodedCert":[B
    :catch_3
    move-exception v19

    .line 369
    .local v19, "e":Ljava/security/cert/CertificateException;
    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to decode certificate #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    .line 375
    .end local v19    # "e":Ljava/security/cert/CertificateException;
    .end local v20    # "encodedCert":[B
    :cond_e
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 376
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No certificates listed"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 378
    :cond_f
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    .line 379
    .local v24, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    .line 380
    .local v8, "certificatePublicKeyBytes":[B
    move-object/from16 v0, v27

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v37

    if-nez v37, :cond_10

    .line 381
    new-instance v37, Ljava/lang/SecurityException;

    .line 382
    const-string/jumbo v38, "Public key mismatch between certificate and signature record"

    .line 381
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 385
    :cond_10
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/security/cert/X509Certificate;

    return-object v37
.end method
