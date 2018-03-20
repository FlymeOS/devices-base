.class final Lcom/android/server/am/ActivityStarter$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeMayInterceptPackage(Lcom/android/server/am/ActivityStarter;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2145
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v1, :cond_0

    .line 2146
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/FlymePackageManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    .line 2148
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter;->flymeGetFieldService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2149
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2150
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/FlymePackageManagerService;->changeMayInterceptPackage(Ljava/lang/String;Z)Z

    .line 2143
    :cond_1
    return-void
.end method

.method static isFlymeAccessApplication(Lcom/android/server/am/ActivityStarter;)Z
    .locals 1
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter;->flymeGetFieldStartActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isAccessApplication()Z

    move-result v0

    return v0
.end method

.method static setFlymeAccessApplication(Lcom/android/server/am/ActivityStarter;)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/am/ActivityStarter;

    .prologue
    .line 2161
    invoke-static {p0}, Lcom/android/server/am/ActivityStarter$FlymeInjector;->isFlymeAccessApplication(Lcom/android/server/am/ActivityStarter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->flymeSetFieldAvoidMoveToFront(Z)V

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter;->flymeGetFieldService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->flymeSetFieldDoResume(Z)V

    .line 2159
    :cond_0
    return-void
.end method
