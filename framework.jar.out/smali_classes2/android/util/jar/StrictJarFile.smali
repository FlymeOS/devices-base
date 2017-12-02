.class public final Landroid/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarFile$EntryIterator;,
        Landroid/util/jar/StrictJarFile$JarFileInputStream;,
        Landroid/util/jar/StrictJarFile$RAFStream;,
        Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final nativeHandle:J

.field private final raf:Ljava/io/RandomAccessFile;

.field private final verifier:Landroid/util/jar/StrictJarVerifier;


# direct methods
.method static synthetic -wrap0(J)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p0, "iterationHandle"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(JLjava/lang/String;)J
    .locals 2
    .param p0, "nativeHandle"    # J
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .param p3, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v5

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    .line 77
    invoke-static {p1}, Landroid/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    .line 78
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    .line 84
    if-eqz p2, :cond_3

    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    move-result-object v4

    .line 86
    .local v4, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v7, Landroid/util/jar/StrictJarManifest;

    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Landroid/util/jar/StrictJarManifest;-><init>([BZ)V

    iput-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 88
    new-instance v5, Landroid/util/jar/StrictJarVerifier;

    .line 90
    iget-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 88
    invoke-direct {v5, p1, v7, v4, p3}, Landroid/util/jar/StrictJarVerifier;-><init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V

    .line 87
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    .line 93
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 94
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "file$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_0

    .line 96
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in manifest does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v6, v7}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 108
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 109
    throw v0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file$iterator":Ljava/util/Iterator;
    .restart local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->readCertificates()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->isSignedJar()Z

    move-result v5

    :goto_0
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :goto_1
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v6, "close"

    invoke-virtual {v5, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 76
    return-void

    .restart local v2    # "file$iterator":Ljava/util/Iterator;
    .restart local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_2
    move v5, v6

    .line 100
    goto :goto_0

    .line 102
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    .line 103
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 104
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private getMetaEntries()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v2, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v1, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v4, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string/jumbo v3, "META-INF/"

    invoke-direct {v1, v4, v5, v3}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    .line 257
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 259
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v0, Landroid/util/jar/StrictJarFile$RAFStream;

    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    .line 206
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 205
    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarFile$RAFStream;

    .line 209
    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 208
    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    .line 211
    .local v0, "wrapped":Landroid/util/jar/StrictJarFile$RAFStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v2, 0x400

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 212
    .local v6, "bufSize":I
    new-instance v1, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v2, v6, p1}, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeOpenJarFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 197
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 198
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    .line 193
    :cond_0
    return-void
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v5, :cond_2

    .line 156
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 159
    .local v0, "certChains":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .line 160
    .local v3, "count":I
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 161
    .local v2, "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    add-int/2addr v3, v8

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_0
    new-array v1, v3, [Ljava/security/cert/Certificate;

    .line 166
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .line 167
    .local v4, "i":I
    array-length v7, v0

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v2, v0, v5

    .line 168
    .restart local v2    # "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    invoke-static {v2, v6, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v8, v2

    add-int/2addr v4, v8

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    return-object v1

    .line 175
    .end local v0    # "certChains":[[Ljava/security/cert/Certificate;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 181
    .local v1, "is":Ljava/io/InputStream;
    iget-boolean v2, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/jar/StrictJarVerifier;->initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    move-result-object v0

    .line 183
    .local v0, "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    if-nez v0, :cond_0

    .line 184
    return-object v1

    .line 187
    :cond_0
    new-instance v2, Landroid/util/jar/StrictJarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Landroid/util/jar/StrictJarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V

    return-object v2

    .line 190
    .end local v0    # "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    :cond_1
    return-object v1
.end method

.method public getManifest()Landroid/util/jar/StrictJarManifest;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v3, v1}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
