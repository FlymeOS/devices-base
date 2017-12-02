.class Landroid/app/job/JobService$JobHandler;
.super Landroid/os/Handler;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/job/JobService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 133
    iput-object p1, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method

.method private ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 181
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 182
    .local v2, "jobId":I
    if-eqz v0, :cond_1

    .line 184
    :try_start_0
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "JobService"

    const-string/jumbo v4, "System unreachable for starting job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "JobService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string/jumbo v3, "JobService"

    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 197
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 198
    .local v2, "jobId":I
    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "JobService"

    const-string/jumbo v4, "System unreachable for stopping job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "JobService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const-string/jumbo v3, "JobService"

    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/job/JobParameters;

    .line 140
    .local v4, "params":Landroid/app/job/JobParameters;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 174
    const-string/jumbo v7, "JobService"

    const-string/jumbo v8, "Unrecognised message received."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 143
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v7, v4}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v6

    .line 144
    .local v6, "workOngoing":Z
    invoke-direct {p0, v4, v6}, Landroid/app/job/JobService$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v6    # "workOngoing":Z
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "JobService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error while executing job: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v7, v4}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v5

    .line 153
    .local v5, "ret":Z
    invoke-direct {p0, v4, v5}, Landroid/app/job/JobService$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 154
    .end local v5    # "ret":Z
    :catch_1
    move-exception v2

    .line 155
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "JobService"

    const-string/jumbo v8, "Application unable to handle onStopJob."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v3, 0x1

    .line 161
    .local v3, "needsReschedule":Z
    :goto_1
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 162
    .local v0, "callback":Landroid/app/job/IJobCallback;
    if-eqz v0, :cond_1

    .line 164
    :try_start_2
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    invoke-interface {v0, v7, v3}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "JobService"

    const-string/jumbo v8, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v0    # "callback":Landroid/app/job/IJobCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "needsReschedule":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "needsReschedule":Z
    goto :goto_1

    .line 170
    .restart local v0    # "callback":Landroid/app/job/IJobCallback;
    :cond_1
    const-string/jumbo v7, "JobService"

    const-string/jumbo v8, "finishJob() called for a nonexistent job id."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
