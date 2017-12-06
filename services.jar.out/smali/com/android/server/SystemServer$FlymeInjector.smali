.class final Lcom/android/server/SystemServer$FlymeInjector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v1

    .line 1536
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/meizu/server/AccessControlService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerPolicy()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    .line 1537
    .local v0, "acs":Lcom/meizu/server/AccessControlService;
    const-string/jumbo v3, "access_control"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1538
    if-eqz v0, :cond_0

    .line 1540
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V

    .line 1534
    return-void

    .line 1541
    :catch_0
    move-exception v2

    .line 1542
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "BOOT FAILURE for making AccessControlService Service ready"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1594
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->startMoveWindowService(Landroid/content/Context;)Lcom/android/server/wm/MoveWindowService;

    move-result-object v1

    .line 1595
    .local v1, "mws":Lcom/android/server/wm/MoveWindowService;
    const-string/jumbo v2, "move_window"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1592
    return-void
.end method

.method private static addFlymePackageManagerService(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1586
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v1

    .line 1587
    .local v1, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string/jumbo v2, "flyme_packagemanager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1584
    return-void
.end method

.method static addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1525
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 1526
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 1527
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeThemeService(Lcom/android/server/SystemServer;)V

    .line 1528
    iget-object v0, p0, Lcom/android/server/SystemServer;->mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .line 1529
    .local v0, "wmsl":Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getService()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 1530
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addPermissionControlService(Lcom/android/server/SystemServer;)V

    .line 1531
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePackageManagerService(Lcom/android/server/SystemServer;)V

    .line 1524
    return-void
.end method

.method static addFlymeStatusBarManagerService()V
    .locals 4

    .prologue
    .line 1601
    const/4 v1, 0x0

    .line 1603
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_0
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    .local v2, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_1
    const-string/jumbo v3, "flyme_statusbar"

    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1600
    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1605
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_0
    move-exception v0

    .line 1606
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v3, "FlymeStatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1605
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    goto :goto_1
.end method

.method private static addFlymeThemeService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1552
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v0}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .line 1553
    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string/jumbo v3, "flyme_theme_service"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1554
    if-eqz v2, :cond_0

    .line 1556
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1557
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "BOOT FAILURE for making flymeThemeService Service ready"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1567
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v1

    .line 1568
    .local v1, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string/jumbo v2, "flyme_wallpaper"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1565
    return-void
.end method

.method static addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1614
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceFlyme;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;

    move-result-object v1

    .line 1615
    .local v1, "networkManagementService":Lcom/android/server/NetworkManagementServiceFlyme;
    const-string/jumbo v2, "networkmanagement_service_flyme"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1612
    return-void
.end method

.method private static addPermissionControlService(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1575
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1576
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "flyme_permission"

    new-instance v3, Lcom/meizu/server/FlymePermissionService;

    invoke-direct {v3, v0}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Failed to add flyme_permission service "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
