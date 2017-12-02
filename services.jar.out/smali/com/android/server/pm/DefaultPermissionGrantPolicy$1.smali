.class Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/DefaultPermissionGrantPolicy;-><init>(Lcom/android/server/pm/PackageManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/DefaultPermissionGrantPolicy;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get1(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    iget-object v2, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-set0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 173
    :cond_1
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
