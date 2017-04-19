.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# static fields
.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PackageManagerService$PackageUsage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    .line 967
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 968
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private getFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    .line 1093
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1094
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1095
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "package-usage.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1096
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
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

    .line 1076
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1078
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1079
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1080
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    const/4 v1, 0x0

    return-object v1

    .line 1083
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_1
    if-ne v0, p3, :cond_2

    .line 1086
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1088
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private writeInternal()V
    .locals 14

    .prologue
    .line 1000
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1001
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1002
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1003
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 1005
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1006
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1007
    .local v3, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x1a0

    const/16 v11, 0x3e8

    const/16 v12, 0x408

    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 1010
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-wide v10, v4, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_0

    .line 1013
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1014
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1016
    iget-wide v10, v4, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1017
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1022
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1024
    :try_start_3
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1026
    :cond_1
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v10, "Failed to write package usage times"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v8

    .line 1030
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 999
    return-void

    .line 1020
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1021
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1001
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v9

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1000
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method readLP()V
    .locals 18

    .prologue
    .line 1034
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1035
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1036
    .local v5, "file":Landroid/util/AtomicFile;
    const/4 v6, 0x0

    .line 1038
    .local v6, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1039
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .local v7, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1041
    .local v10, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 1042
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 1068
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    monitor-exit v15

    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1033
    return-void

    .line 1045
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v14, 0xa

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v11

    .line 1046
    .local v11, "timeInMillisString":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 1047
    new-instance v14, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to find last usage time for package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1063
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "expected":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .line 1064
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1068
    :try_start_6
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1034
    .end local v4    # "expected":Ljava/io/FileNotFoundException;
    .end local v5    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1050
    .restart local v5    # "file":Landroid/util/AtomicFile;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "timeInMillisString":Ljava/lang/String;
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Package;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1051
    .local v9, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_0

    .line 1056
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v12

    .line 1061
    .local v12, "timeInMillis":J
    :try_start_9
    iput-wide v12, v9, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 1065
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    .end local v12    # "timeInMillis":J
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 1066
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_a
    const-string/jumbo v14, "PackageManager"

    const-string/jumbo v16, "Failed to read package usage times"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1068
    :try_start_b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 1057
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "timeInMillisString":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1058
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    new-instance v14, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to parse "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1059
    const-string/jumbo v17, " as a long."

    .line 1058
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1067
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .line 1068
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1067
    throw v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_2
    move-exception v14

    goto :goto_4

    .line 1063
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v4

    .restart local v4    # "expected":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 1065
    .end local v4    # "expected":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method write(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 977
    if-eqz p1, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    .line 979
    return-void

    .line 981
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 983
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    const-string/jumbo v1, "PackageUsage_DiskWriter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    .line 976
    :cond_2
    return-void
.end method
