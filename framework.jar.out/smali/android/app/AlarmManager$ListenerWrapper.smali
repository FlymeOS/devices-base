.class final Landroid/app/AlarmManager$ListenerWrapper;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerWrapper"
.end annotation


# instance fields
.field mCompletion:Landroid/app/IAlarmCompleteListener;

.field mHandler:Landroid/os/Handler;

.field final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AlarmManager;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    .line 192
    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 191
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-static {v1}, Landroid/app/AlarmManager;->-get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const-class v2, Landroid/app/AlarmManager;

    monitor-enter v2

    .line 207
    :try_start_1
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    .line 199
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 206
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 1
    .param p1, "alarmManager"    # Landroid/app/IAlarmCompleteListener;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    .line 216
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 223
    const-class v2, Landroid/app/AlarmManager;

    monitor-enter v2

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 231
    :try_start_1
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v1}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    :try_start_2
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :goto_0
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "Unable to report completion to Alarm Manager!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 237
    :try_start_3
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v2, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    :goto_1
    throw v1

    .line 238
    :catch_1
    move-exception v0

    .line 239
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "Unable to report completion to Alarm Manager!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method
