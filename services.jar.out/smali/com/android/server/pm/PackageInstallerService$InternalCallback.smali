.class Lcom/android/server/pm/PackageInstallerService$InternalCallback;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerService;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "active"    # Z

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap0(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V

    .line 1239
    return-void
.end method

.method public onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap1(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap2(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1234
    return-void
.end method

.method public onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "success"    # Z

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionFinished(IIZ)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get2(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1247
    return-void
.end method

.method public onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap2(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1268
    return-void
.end method

.method public onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "progress"    # F

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap3(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V

    .line 1243
    return-void
.end method

.method public onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap3(Lcom/android/server/pm/PackageInstallerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1274
    return-void

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
