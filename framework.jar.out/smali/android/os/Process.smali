.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;,
        Landroid/os/Process$ZygoteState;
    }
.end annotation


# static fields
.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final DRM_UID:I = 0x3fb

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SCHED_RR:I = 0x2

.field public static final SECONDARY_ZYGOTE_SOCKET:Ljava/lang/String; = "zygote_secondary"

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final VPN_UID:I = 0x3f8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static primaryZygoteState:Landroid/os/Process$ZygoteState;

.field private static sStartElapsedRealtime:J

.field private static sStartUptimeMillis:J

.field static secondaryZygoteState:Landroid/os/Process$ZygoteState;


# direct methods
.method static synthetic -wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    .prologue
    invoke-static {p0, p1}, Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 749
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 547
    const-string/jumbo v2, "--query-abi-list"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 549
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 552
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 553
    .local v1, "numBytes":I
    new-array v0, v1, [B

    .line 554
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 556
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getExclusiveCores()[I
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 924
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "PPid:"

    aput-object v2, v0, v4

    .line 925
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 926
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 928
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final getStartElapsedRealtime()J
    .locals 2

    .prologue
    .line 798
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static final getStartUptimeMillis()J
    .locals 2

    .prologue
    .line 805
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 939
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Tgid:"

    aput-object v2, v0, v4

    .line 940
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 941
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 943
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 910
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Uid:"

    aput-object v2, v0, v4

    .line 911
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 912
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 914
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final is64Bit()Z
    .locals 1

    .prologue
    .line 818
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static isApplicationUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 872
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated()Z
    .locals 1

    .prologue
    .line 880
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 885
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 886
    const v1, 0x182b8

    if-lt p0, v1, :cond_0

    const v1, 0x1869f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isThreadInProcess(II)Z
    .locals 5
    .param p0, "tid"    # I
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1295
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 1297
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    const/4 v2, 0x1

    .line 1305
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1298
    return v2

    .line 1305
    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1300
    return v4

    .line 1302
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1303
    return v4

    .line 1304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1305
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1304
    throw v2
.end method

.method public static final killProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1165
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1164
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 1189
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1188
    return-void
.end method

.method public static final myPid()I
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static myUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 760
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    :cond_0
    :try_start_0
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 773
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    :cond_3
    :try_start_1
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 782
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 776
    :catch_1
    move-exception v0

    .line 777
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 785
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final setStartTimes(JJ)V
    .locals 0
    .param p0, "elapsedRealtime"    # J
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 810
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    .line 811
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    .line 809
    return-void
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "zygoteArgs"    # [Ljava/lang/String;

    .prologue
    .line 521
    :try_start_0
    invoke-static/range {p0 .. p12}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    .line 526
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 525
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v1, Ljava/lang/RuntimeException;

    .line 528
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 527
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 653
    const-class v7, Landroid/os/Process;

    monitor-enter v7

    .line 654
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "--runtime-args"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--setuid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--setgid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    and-int/lit8 v6, p5, 0x10

    if-eqz v6, :cond_0

    .line 662
    const-string/jumbo v6, "--enable-jni-logging"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_0
    and-int/lit8 v6, p5, 0x8

    if-eqz v6, :cond_1

    .line 665
    const-string/jumbo v6, "--enable-safemode"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_1
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_2

    .line 668
    const-string/jumbo v6, "--enable-debugger"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_2
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_3

    .line 671
    const-string/jumbo v6, "--enable-checkjni"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_3
    and-int/lit8 v6, p5, 0x20

    if-eqz v6, :cond_4

    .line 674
    const-string/jumbo v6, "--generate-debug-info"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_4
    and-int/lit8 v6, p5, 0x40

    if-eqz v6, :cond_5

    .line 677
    const-string/jumbo v6, "--always-jit"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5
    and-int/lit16 v6, p5, 0x80

    if-eqz v6, :cond_6

    .line 680
    const-string/jumbo v6, "--native-debuggable"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_6
    and-int/lit8 v6, p5, 0x4

    if-eqz v6, :cond_7

    .line 683
    const-string/jumbo v6, "--enable-assert"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_7
    const/4 v6, 0x1

    if-ne p6, v6, :cond_a

    .line 686
    const-string/jumbo v6, "--mount-external-default"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_8
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--target-sdk-version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    if-eqz p4, :cond_d

    array-length v6, p4

    if-lez v6, :cond_d

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "--setgroups="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    array-length v5, p4

    .line 703
    .local v5, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_c

    .line 704
    if-eqz v3, :cond_9

    .line 705
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    :cond_9
    aget v6, p4, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 687
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_a
    const/4 v6, 0x2

    if-ne p6, v6, :cond_b

    .line 688
    const-string/jumbo v6, "--mount-external-read"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 653
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 689
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v6, 0x3

    if-ne p6, v6, :cond_8

    .line 690
    :try_start_1
    const-string/jumbo v6, "--mount-external-write"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sz":I
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sz":I
    :cond_d
    if-eqz p1, :cond_e

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--nice-name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_e
    if-eqz p8, :cond_f

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--seinfo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_f
    if-eqz p10, :cond_10

    .line 722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--instruction-set="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_10
    if-eqz p11, :cond_11

    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--app-data-dir="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_11
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    if-eqz p12, :cond_12

    .line 732
    const/4 v6, 0x0

    move-object/from16 v0, p12

    array-length v8, v0

    :goto_2
    if-ge v6, v8, :cond_12

    aget-object v1, p12, v6

    .line 733
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 737
    .end local v1    # "arg":Ljava/lang/String;
    :cond_12
    invoke-static/range {p9 .. p9}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1127
    const/4 v0, 0x1

    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "zygoteState"    # Landroid/os/Process$ZygoteState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Process$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 573
    .local v5, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 574
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 575
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "embedded newlines not allowed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v2    # "i":I
    .end local v5    # "sz":I
    :catch_0
    move-exception v1

    .line 617
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    .line 618
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 573
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "sz":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 590
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 592
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 595
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 596
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 601
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 604
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 609
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 610
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 612
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v7, :cond_3

    .line 613
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "fork() failed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    :cond_3
    return-object v4
.end method
