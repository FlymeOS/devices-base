.class public Lcom/android/server/content/ContentService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 98
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->systemReady()V

    .line 97
    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    .line 91
    const/4 v2, 0x1

    .line 90
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 92
    .local v0, "factoryTest":Z
    :goto_0
    new-instance v1, Lcom/android/server/content/ContentService;

    invoke-virtual {p0}, Lcom/android/server/content/ContentService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    .line 93
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/ContentService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 89
    return-void

    .line 90
    .end local v0    # "factoryTest":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "factoryTest":Z
    goto :goto_0
.end method
