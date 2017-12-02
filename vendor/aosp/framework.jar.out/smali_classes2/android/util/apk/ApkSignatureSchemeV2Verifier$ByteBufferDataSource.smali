.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;
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
    name = "ByteBufferDataSource"
.end annotation


# instance fields
.field private final mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 1086
    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .locals 6
    .param p1, "mds"    # [Ljava/security/MessageDigest;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1109
    iget-object v4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    monitor-enter v4

    .line 1110
    :try_start_0
    iget-object v2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v5, p2

    invoke-virtual {v2, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1111
    iget-object v2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v5, p2

    add-int/2addr v5, p4

    invoke-virtual {v2, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1112
    iget-object v2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "region":Ljava/nio/ByteBuffer;
    monitor-exit v4

    .line 1115
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 1118
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1119
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 1115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1109
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "region":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1098
    .restart local v1    # "region":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
