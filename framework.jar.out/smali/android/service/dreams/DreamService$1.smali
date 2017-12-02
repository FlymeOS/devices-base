.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;

.field final synthetic val$started:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;
    .param p2, "val$started"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1016
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1019
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get4(Landroid/service/dreams/DreamService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get1(Landroid/service/dreams/DreamService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Calling onDreamingStarted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/dreams/DreamService;->-set0(Landroid/service/dreams/DreamService;Z)Z

    .line 1023
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :try_start_1
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1018
    :cond_2
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1024
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1026
    :try_start_2
    iget-object v2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1024
    throw v1

    .line 1027
    :catch_1
    move-exception v0

    .line 1028
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
