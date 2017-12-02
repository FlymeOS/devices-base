.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"

# interfaces
.implements Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryMappedFileDataSource"
.end annotation


# static fields
.field private static final MEMORY_PAGE_SIZE_BYTES:J

.field private static final OS:Llibcore/io/Os;


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private final mFilePosition:J

.field private final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 997
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sput-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 998
    sget-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    .line 996
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 1012
    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    .line 1013
    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    .line 1010
    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .locals 28
    .param p1, "mds"    # [Ljava/security/MessageDigest;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    add-long v22, v4, p2

    .line 1039
    .local v22, "filePosition":J
    sget-wide v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v4, v22, v4

    sget-wide v8, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    mul-long v11, v4, v8

    .line 1040
    .local v11, "mmapFilePosition":J
    sub-long v4, v22, v11

    long-to-int v2, v4

    .line 1041
    .local v2, "dataStartOffsetInMmapRegion":I
    add-int v3, p4, v2

    int-to-long v6, v3

    .line 1042
    .local v6, "mmapRegionSize":J
    const-wide/16 v26, 0x0

    .line 1044
    .local v26, "mmapPtr":J
    :try_start_0
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 1045
    const-wide/16 v4, 0x0

    .line 1047
    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    .line 1048
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v10, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int/2addr v9, v10

    .line 1049
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 1044
    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v26

    .line 1053
    new-instance v14, Ljava/nio/DirectByteBuffer;

    .line 1055
    int-to-long v4, v2

    add-long v16, v26, v4

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    move-object/from16 v18, v0

    .line 1057
    const/16 v19, 0x0

    .line 1058
    const/16 v20, 0x1

    move/from16 v15, p4

    .line 1053
    invoke-direct/range {v14 .. v20}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    .line 1060
    .local v14, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v24, p1, v3

    .line 1061
    .local v24, "md":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1062
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1067
    .end local v24    # "md":Ljava/security/MessageDigest;
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-eqz v3, :cond_1

    .line 1069
    :try_start_1
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    move-wide/from16 v0, v26

    invoke-interface {v3, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1023
    :cond_1
    :goto_1
    return-void

    .line 1064
    .end local v14    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v13

    .line 1065
    .local v13, "e":Landroid/system/ErrnoException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to mmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    .end local v13    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v3

    .line 1067
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-eqz v4, :cond_2

    .line 1069
    :try_start_3
    sget-object v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    move-wide/from16 v0, v26

    invoke-interface {v4, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1066
    :cond_2
    :goto_2
    throw v3

    .line 1070
    :catch_1
    move-exception v21

    .local v21, "ignored":Landroid/system/ErrnoException;
    goto :goto_2

    .end local v21    # "ignored":Landroid/system/ErrnoException;
    .restart local v14    # "buf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v21

    .restart local v21    # "ignored":Landroid/system/ErrnoException;
    goto :goto_1
.end method

.method public size()J
    .locals 2

    .prologue
    .line 1018
    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
