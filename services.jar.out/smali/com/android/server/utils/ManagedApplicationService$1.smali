.class Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/ManagedApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
