.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;
    .param p6, "val$dataFile"    # Ljava/io/File;
    .param p7, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "val$dbox"    # Landroid/os/DropBoxManager;

    .prologue
    .line 13888
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 13891
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 13892
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13895
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "logcat_for_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13896
    .local v8, "setting":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 13897
    .local v4, "lines":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/high16 v10, 0x30000

    sub-int v9, v10, v9

    .line 13898
    mul-int/lit8 v10, v4, 0x64

    .line 13897
    sub-int v6, v9, v10

    .line 13900
    .local v6, "maxDataFileSize":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    if-eqz v9, :cond_1

    if-lez v6, :cond_1

    .line 13902
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    .line 13903
    const-string/jumbo v11, "\n\n[[TRUNCATED]]"

    .line 13902
    invoke-static {v10, v6, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13908
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 13909
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13912
    :cond_2
    if-lez v4, :cond_3

    .line 13913
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13916
    const/4 v2, 0x0

    .line 13918
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/16 v10, 0x11

    new-array v10, v10, [Ljava/lang/String;

    .line 13919
    const-string/jumbo v11, "/system/bin/timeout"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "-k"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "15s"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, "10s"

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 13920
    const-string/jumbo v11, "/system/bin/logcat"

    const/4 v12, 0x4

    aput-object v11, v10, v12

    const-string/jumbo v11, "-v"

    const/4 v12, 0x5

    aput-object v11, v10, v12

    const-string/jumbo v11, "threadtime"

    const/4 v12, 0x6

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const-string/jumbo v11, "events"

    const/16 v12, 0x8

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/16 v12, 0x9

    aput-object v11, v10, v12

    const-string/jumbo v11, "system"

    const/16 v12, 0xa

    aput-object v11, v10, v12

    .line 13921
    const-string/jumbo v11, "-b"

    const/16 v12, 0xb

    aput-object v11, v10, v12

    const-string/jumbo v11, "main"

    const/16 v12, 0xc

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/16 v12, 0xd

    aput-object v11, v10, v12

    const-string/jumbo v11, "crash"

    const/16 v12, 0xe

    aput-object v11, v10, v12

    const-string/jumbo v11, "-t"

    const/16 v12, 0xf

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    aput-object v11, v10, v12

    .line 13918
    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 13922
    const/4 v10, 0x1

    .line 13918
    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 13924
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13925
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13926
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13929
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v9, 0x2000

    :try_start_5
    new-array v0, v9, [C

    .line 13930
    .local v0, "buf":[C
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    .local v7, "num":I
    if-lez v7, :cond_4

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 13931
    .end local v0    # "buf":[C
    .end local v7    # "num":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 13932
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Error running logcat"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 13934
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 13938
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 13890
    return-void

    .line 13904
    :catch_1
    move-exception v1

    .line 13905
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 13934
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v7    # "num":I
    :cond_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v7    # "num":I
    :catch_3
    move-exception v1

    goto :goto_5

    .line 13933
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 13934
    :goto_6
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 13933
    :cond_5
    :goto_7
    throw v9

    .line 13934
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 13933
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v2, "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 13931
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "input":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 13925
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 13924
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
