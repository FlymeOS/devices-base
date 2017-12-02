.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .locals 3
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .prologue
    .line 541
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 542
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v2, :cond_1

    .line 543
    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 554
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 560
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 561
    iget v2, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v2, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 562
    iget-boolean v2, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 540
    return-void

    .line 555
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public startProfiling()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    return-void

    .line 569
    :cond_1
    :try_start_0
    const-string/jumbo v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 570
    .local v6, "bufferSize":I
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 571
    mul-int/lit16 v2, v6, 0x400

    mul-int/lit16 v2, v2, 0x400

    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    if-eqz v5, :cond_2

    :goto_0
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v3, 0x0

    .line 570
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v6    # "bufferSize":I
    :goto_1
    return-void

    .restart local v6    # "bufferSize":I
    :cond_2
    move v4, v3

    .line 571
    goto :goto_0

    .line 573
    .end local v6    # "bufferSize":I
    :catch_0
    move-exception v7

    .line 574
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 578
    :catch_1
    move-exception v8

    .line 579
    .local v8, "e2":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "Failure closing profile fd"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stopProfiling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_1

    .line 585
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 586
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 587
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 594
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 583
    :cond_1
    return-void

    .line 590
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
