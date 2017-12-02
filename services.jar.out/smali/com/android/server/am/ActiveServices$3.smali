.class Lcom/android/server/am/ActiveServices$3;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$callerFg:Z

.field final synthetic val$connection:Landroid/app/IServiceConnection;

.field final synthetic val$serviceIntent:Landroid/content/Intent;

.field final synthetic val$serviceRecord:Lcom/android/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "val$serviceRecord"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "val$serviceIntent"    # Landroid/content/Intent;
    .param p4, "val$callerFg"    # Z
    .param p5, "val$connection"    # Landroid/app/IServiceConnection;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 938
    .local v8, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 960
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 935
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 939
    return-void

    .line 945
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 948
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget v2, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 945
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 950
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    .line 951
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 952
    iget-boolean v3, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 950
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->-wrap1(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 960
    :goto_0
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v7

    .line 935
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 934
    return-void

    .line 957
    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    .line 960
    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 935
    .end local v8    # "identity":J
    :catchall_1
    move-exception v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 953
    .restart local v8    # "identity":J
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
