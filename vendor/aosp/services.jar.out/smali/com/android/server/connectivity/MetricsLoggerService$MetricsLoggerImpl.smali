.class final Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;
.super Landroid/net/IConnectivityMetricsLogger$Stub;
.source "MetricsLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MetricsLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MetricsLoggerImpl"
.end annotation


# instance fields
.field private final mPendingIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/MetricsLoggerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/MetricsLoggerService;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-direct {p0}, Landroid/net/IConnectivityMetricsLogger$Stub;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    .line 127
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 135
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Permission Denial: can\'t dump ConnectivityMetricsLoggerService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 136
    const-string/jumbo v13, ", uid="

    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v5, 0x0

    .line 142
    .local v5, "dumpSerializedSize":Z
    const/4 v4, 0x0

    .line 143
    .local v4, "dumpEvents":Z
    const/4 v3, 0x0

    .line 144
    .local v3, "dumpDebugInfo":Z
    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    :goto_0
    if-ge v12, v13, :cond_5

    aget-object v2, p3, v12

    .line 145
    .local v2, "arg":Ljava/lang/String;
    const-string/jumbo v14, "--debug"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 147
    const/4 v3, 0x1

    .line 144
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 145
    :cond_2
    const-string/jumbo v14, "--events"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 151
    const/4 v4, 0x1

    .line 152
    goto :goto_1

    .line 145
    :cond_3
    const-string/jumbo v14, "--size"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 155
    const/4 v5, 0x1

    .line 156
    goto :goto_1

    .line 145
    :cond_4
    const-string/jumbo v14, "--all"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 159
    const/4 v3, 0x1

    .line 160
    const/4 v4, 0x1

    .line 161
    const/4 v5, 0x1

    .line 162
    goto :goto_1

    .line 166
    .end local v2    # "arg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v13

    monitor-enter v13

    .line 167
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Number of events: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Counter: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Time span: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityMetricsEvent;

    iget-wide v0, v12, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 173
    const-wide/16 v18, 0x3e8

    .line 172
    div-long v16, v16, v18

    .line 171
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v12

    .line 170
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :cond_6
    if-eqz v5, :cond_8

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 178
    .local v9, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    .line 179
    .local v6, "e":Landroid/net/ConnectivityMetricsEvent;
    const/4 v12, 0x0

    invoke-virtual {v9, v6, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 166
    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 181
    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    .restart local v9    # "p":Landroid/os/Parcel;
    :cond_7
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Serialized data size: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 185
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :cond_8
    if-eqz v4, :cond_9

    .line 186
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 187
    const-string/jumbo v12, "Events:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    .line 189
    .restart local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v6}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v13

    .line 194
    if-eqz v3, :cond_c

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v13

    monitor-enter v13

    .line 196
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 197
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    const/4 v12, 0x5

    if-ge v8, v12, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v12

    aget v12, v12, v8

    if-lez v12, :cond_a

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Throttling Counter #"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v14

    aget v14, v14, v8

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 202
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Throttling Time Remaining: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    .line 205
    const-wide/16 v16, 0x3e8

    .line 204
    div-long v14, v14, v16

    .line 203
    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    .line 202
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v13

    .line 209
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v13

    .line 210
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 211
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 212
    const-string/jumbo v12, "Pending intents:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pi$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 214
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 209
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "pi$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 195
    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_d
    monitor-exit v13

    .line 132
    return-void
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 14
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;

    .prologue
    .line 315
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 316
    invoke-virtual {p1}, Landroid/net/ConnectivityMetricsEvent$Reference;->getValue()J

    move-result-wide v6

    .line 320
    .local v6, "ref":J
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v9

    monitor-enter v9

    .line 321
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    .line 322
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "Invalid reference"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    const/4 v8, 0x0

    monitor-exit v9

    return-object v8

    .line 326
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    cmp-long v8, v6, v10

    if-gez v8, :cond_1

    .line 327
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    int-to-long v12, v8

    sub-long v6, v10, v12

    .line 331
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 332
    iget-object v10, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v10}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-int v10, v10

    .line 331
    sub-int v4, v8, v10

    .line 334
    .local v4, "numEventsToSkip":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    sub-int/2addr v8, v4

    new-array v5, v8, [Landroid/net/ConnectivityMetricsEvent;

    .line 335
    .local v5, "result":[Landroid/net/ConnectivityMetricsEvent;
    const/4 v2, 0x0

    .line 336
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    .line 337
    .local v0, "e":Landroid/net/ConnectivityMetricsEvent;
    if-lez v4, :cond_2

    .line 338
    add-int/lit8 v4, v4, -0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 340
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v0, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    .end local v0    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v4    # "numEventsToSkip":I
    .end local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 344
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .restart local v4    # "numEventsToSkip":I
    .restart local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 347
    return-object v5
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)J
    .locals 4
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 221
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/ConnectivityMetricsEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 222
    .local v0, "events":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v2

    return-wide v2
.end method

.method public logEvents([Landroid/net/ConnectivityMetricsEvent;)J
    .locals 18
    .param p1, "events"    # [Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap1(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 237
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 238
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "No events passed to logEvents()"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-wide/16 v4, -0x1

    return-wide v4

    .line 242
    :cond_1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v8, v3, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    .line 243
    .local v8, "componentTag":I
    if-ltz v8, :cond_2

    .line 244
    const/4 v3, 0x5

    if-lt v8, v3, :cond_3

    .line 245
    :cond_2
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-wide/16 v4, -0x1

    return-wide v4

    .line 249
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v4

    monitor-enter v4

    .line 250
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 251
    .local v10, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    cmp-long v3, v10, v6

    if-lez v3, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3, v10, v11}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap3(Lcom/android/server/connectivity/MetricsLoggerService;J)V

    .line 255
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v3

    aget v5, v3, v8

    move-object/from16 v0, p1

    array-length v6, v0

    add-int/2addr v5, v6

    aput v5, v3, v8

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v3

    aget v3, v3, v8

    .line 258
    const/16 v5, 0x3e8

    .line 257
    if-le v3, v5, :cond_5

    .line 259
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Too many events from #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    const-string/jumbo v6, ". Block until "

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v6}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    .line 259
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v4

    return-wide v6

    :cond_5
    monitor-exit v4

    .line 266
    const/4 v14, 0x0

    .line 268
    .local v14, "sendPendingIntents":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v4

    monitor-enter v4

    .line 269
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_7

    aget-object v12, p1, v3

    .line 270
    .local v12, "e":Landroid/net/ConnectivityMetricsEvent;
    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    if-eq v6, v8, :cond_6

    .line 271
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 272
    const-wide/16 v6, -0x1

    monitor-exit v4

    return-wide v6

    .line 249
    .end local v10    # "currentTimeMillis":J
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v14    # "sendPendingIntents":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 275
    .restart local v10    # "currentTimeMillis":J
    .restart local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .restart local v14    # "sendPendingIntents":Z
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v6, v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap0(Lcom/android/server/connectivity/MetricsLoggerService;Landroid/net/ConnectivityMetricsEvent;)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    move-object/from16 v0, p1

    array-length v5, v0

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    invoke-static {v3, v6, v7}, Lcom/android/server/connectivity/MetricsLoggerService;->-set1(Lcom/android/server/connectivity/MetricsLoggerService;J)J

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v5

    move-object/from16 v0, p1

    array-length v6, v0

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v3

    const/16 v5, 0x12c

    if-lt v3, v5, :cond_8

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    const/4 v14, 0x1

    :cond_8
    monitor-exit v4

    .line 287
    if-eqz v14, :cond_a

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v15

    .line 289
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "pi$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    .local v2, "pi":Landroid/app/PendingIntent;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 293
    :catch_0
    move-exception v9

    .line 294
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_5
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending intent canceled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 288
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v15

    throw v3

    .line 268
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v15

    .line 301
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_a
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 354
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Replacing registered pending intent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 361
    const/4 v0, 0x1

    return v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 368
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$MetricsLoggerImpl;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Pending intent is not registered"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 364
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
