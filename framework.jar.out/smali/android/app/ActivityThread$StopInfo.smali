.class Landroid/app/ActivityThread$StopInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopInfo"
.end annotation


# instance fields
.field activity:Landroid/app/ActivityThread$ActivityClientRecord;

.field description:Ljava/lang/CharSequence;

.field persistentState:Landroid/os/PersistableBundle;

.field state:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$StopInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityThread$StopInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3774
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 3775
    iget-object v2, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    iget-object v5, p0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    .line 3774
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3770
    return-void

    .line 3776
    :catch_0
    move-exception v0

    .line 3777
    .local v0, "ex":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_0

    .line 3778
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 3779
    const-string/jumbo v1, "ActivityThread"

    const-string/jumbo v2, "App sent too much data in instance state, so it was ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3780
    return-void

    .line 3782
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
