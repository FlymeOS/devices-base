.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    .line 47
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 46
    return-void
.end method

.method private updateSnapshot(III[I)Ljava/util/List;
    .locals 17
    .param p1, "event"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 170
    :try_start_0
    const-string/jumbo v2, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v3, "Unknown event %d for session %d, source %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 171
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 170
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v13, 0x0

    .line 174
    .local v13, "configChanged":Z
    :goto_0
    if-eqz v13, :cond_3

    .line 175
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v16

    .line 180
    return-object v14

    .line 133
    .end local v13    # "configChanged":Z
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    .restart local v13    # "configChanged":Z
    goto :goto_0

    .end local v13    # "configChanged":Z
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "configChanged":Z
    goto :goto_0

    .line 136
    .end local v13    # "configChanged":Z
    :pswitch_1
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 137
    const/4 v3, 0x0

    aget v3, p4, v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 139
    const/4 v3, 0x1

    aget v3, p4, v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 140
    const/4 v3, 0x2

    aget v3, p4, v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    .line 142
    .local v4, "clientFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 143
    const/4 v3, 0x3

    aget v3, p4, v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 145
    const/4 v3, 0x4

    aget v3, p4, v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 146
    const/4 v3, 0x5

    aget v3, p4, v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 148
    .local v5, "deviceFormat":Landroid/media/AudioFormat;
    const/4 v2, 0x6

    aget v6, p4, v2

    .line 149
    .local v6, "patchHandle":I
    new-instance v15, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 150
    .local v15, "sessionKey":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    new-instance v1, Landroid/media/AudioRecordingConfiguration;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecordingConfiguration;-><init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V

    .line 154
    .local v1, "updatedConfig":Landroid/media/AudioRecordingConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const/4 v13, 0x0

    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    .line 158
    .end local v13    # "configChanged":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v13, 0x1

    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    .line 163
    .end local v1    # "updatedConfig":Landroid/media/AudioRecordingConfiguration;
    .end local v13    # "configChanged":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    .line 164
    new-instance v7, Landroid/media/AudioRecordingConfiguration;

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecordingConfiguration;-><init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V

    .line 163
    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    const/4 v13, 0x1

    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    .line 177
    .end local v4    # "clientFormat":Landroid/media/AudioFormat;
    .end local v5    # "deviceFormat":Landroid/media/AudioFormat;
    .end local v6    # "patchHandle":I
    .end local v15    # "sessionKey":Ljava/lang/Integer;
    :cond_3
    const/4 v14, 0x0

    .local v14, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    goto/16 :goto_1

    .line 129
    .end local v13    # "configChanged":Z
    .end local v14    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getActiveRecordingConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    monitor-enter v1

    .line 110
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method initMonitor()V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    .line 75
    return-void
.end method

.method public onRecordingConfigurationChanged(III[I)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I

    .prologue
    .line 55
    invoke-static {p3}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(III[I)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    if-eqz v1, :cond_2

    .line 61
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    iget-object v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v5, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_1
    monitor-exit v4

    .line 54
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_2
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 84
    :try_start_0
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;)V

    .line 85
    .local v0, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 79
    return-void

    .line 83
    .end local v0    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 4
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 99
    .local v1, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    iget-object v2, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_2
    monitor-exit v3

    .line 91
    return-void

    .line 95
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
