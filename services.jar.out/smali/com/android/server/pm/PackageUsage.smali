.class Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Landroid/content/pm/PackageParser$Package;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"


# instance fields
.field private mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    const-string/jumbo v0, "package-usage.list"

    const-string/jumbo v1, "PackageUsage_DiskWriter"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    iput-boolean v2, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 46
    return-void
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as a long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 186
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 187
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    if-ne v0, p3, :cond_2

    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 10
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "sb"    # Ljava/lang/StringBuffer;
    .param p4, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    move-object v0, p4

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 124
    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 126
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 127
    const-string/jumbo v9, " as package-timestamp pair."

    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    :cond_0
    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 131
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 132
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_2

    .line 123
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 137
    .local v4, "timestamp":J
    const/4 v3, 0x0

    .line 138
    .local v3, "reason":I
    :goto_1
    const/16 v7, 0x8

    .line 137
    if-ge v3, v7, :cond_1

    .line 140
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aput-wide v4, v7, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "timestamp":J
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 151
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 153
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " as a timestamp array."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_1
    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 157
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 158
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "reason":I
    :goto_0
    const/16 v5, 0x8

    .line 162
    if-ge v3, v5, :cond_0

    .line 165
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Ljava/util/Map;

    .end local p1    # "packages":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->readInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected readInternal(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 95
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 97
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 101
    .local v3, "firstLine":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 113
    :goto_0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    .line 93
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 103
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_2
    const-string/jumbo v7, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 108
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, "expected":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 109
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 106
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    invoke-direct {p0, p1, v5, v6, v3}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 110
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 111
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "Failed to read package usage times"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 113
    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 112
    throw v7

    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 108
    .local v4, "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "expected":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 110
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/util/Map;

    .end local p1    # "packages":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->writeInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected writeInternal(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 57
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 59
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 60
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v3, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 62
    const/16 v10, 0x1a0

    const/16 v11, 0x3e8

    const/16 v12, 0x408

    .line 61
    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 70
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_0

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    const/4 v7, 0x0

    array-length v11, v10

    :goto_1
    if-ge v7, v11, :cond_1

    aget-wide v8, v10, v7

    .line 76
    .local v8, "usageTimeInMillis":J
    const/16 v12, 0x20

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 79
    .end local v8    # "usageTimeInMillis":J
    :cond_1
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 88
    :cond_2
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v10, "Failed to write package usage times"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 82
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 83
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
