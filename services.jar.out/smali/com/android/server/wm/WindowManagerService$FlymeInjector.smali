.class final Lcom/android/server/wm/WindowManagerService$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final HIDE_IME:I = 0x46

.field private static final INTECEPT_WINDOW_BROADCAST:I = 0x64


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustBackupWindowFlag(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 12031
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/MoveWindowService;->adjustBackupWindowFlag(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 12029
    :cond_0
    return-void
.end method

.method static adjustFlymeKeyguardFlags(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12116
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 12117
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 12118
    const/4 v1, 0x0

    .line 12120
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 12123
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 12124
    :cond_0
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 12114
    :cond_1
    return-void

    .line 12121
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static adjustInputWindow(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "viewVisibility"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12036
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 12037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/MoveWindowService;->adjustInputWindow(Lcom/android/server/wm/WindowState;I)V

    .line 12035
    :cond_0
    return-void
.end method

.method static adjustOnOrientationChanged(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 12042
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 12043
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MoveWindowService;->adjustOnOrientationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 12041
    :cond_0
    return-void
.end method

.method static createFlymeCustomAnimation(Lcom/android/server/wm/WindowManagerService;IZLandroid/view/DisplayInfo;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 12106
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isCustomTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12108
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createCustomAnimationLocked(Landroid/view/DisplayInfo;IZI)Landroid/view/animation/Animation;

    move-result-object p4

    .line 12111
    :cond_0
    return-object p4
.end method

.method static handleFlymeMessage(Lcom/android/server/wm/WindowManagerService;Landroid/os/Message;)V
    .locals 19
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 12071
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 12070
    :cond_0
    :goto_0
    return-void

    .line 12074
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/view/IInputMethodClient;

    .line 12075
    .local v15, "client":Lcom/android/internal/view/IInputMethodClient;
    if-eqz v15, :cond_0

    .line 12079
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v15, v2, v4}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12080
    :catch_0
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 12087
    .end local v15    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 12088
    .local v18, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 12091
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 12092
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.meizu.safe.ACTION_BLOCK_LOCKED_SCREEN_SHOW"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.meizu.safe"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "pkgName"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12094
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 12095
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 12094
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12095
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 12094
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 12096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12097
    :catch_1
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 12071
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method static isFlymeDisableScreenRotation(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 12060
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mFlymeDisableScreenRotation:Z

    return v0
.end method

.method static isFlymeInterceptWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12132
    const/4 v0, 0x0

    .line 12133
    .local v0, "isFinish":Z
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 12134
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService$FlymeInjector;->mayIntercept(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12135
    const/4 v0, 0x1

    .line 12142
    :cond_1
    :goto_0
    return v0

    .line 12136
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService$FlymeInjector;->mayIntercept(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12137
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService$FlymeInjector;->isIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isIntercept(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 12147
    invoke-static {p0}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    .line 12148
    .local v0, "flymePackageManager":Landroid/content/pm/FlymePackageManager;
    if-eqz v0, :cond_0

    .line 12149
    invoke-virtual {v0}, Landroid/content/pm/FlymePackageManager;->getInterceptPackage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 12151
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static mayIntercept(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12155
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymePackageManagerService;

    .line 12156
    .local v0, "flymePackageManagerService":Lcom/android/server/pm/FlymePackageManagerService;
    if-eqz v0, :cond_1

    .line 12157
    if-ne p1, v3, :cond_0

    .line 12158
    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getMayInterceptPackage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12159
    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/FlymePackageManagerService;->changeMayInterceptPackage(Ljava/lang/String;Z)Z

    .line 12160
    return v3

    .line 12163
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 12164
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/FlymePackageManagerService;->getKeyGuardPackage(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 12167
    :cond_1
    return v2
.end method

.method static resetOnWindowChanged(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "viewVisibility"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12024
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 12025
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MoveWindowService;->resetOnWindowChanged(ILcom/android/server/wm/WindowState;)V

    .line 12023
    :cond_0
    return-void
.end method

.method static sendFlymeMessage(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 12172
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 12173
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 12174
    const/16 v1, -0x6f

    return v1
.end method

.method static setFlymeConfigurationExt(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 12049
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iput-object v1, v0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 12047
    return-void
.end method

.method static setFlymeConfigurationExt(Lcom/android/server/wm/WindowManagerService;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 12055
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iput-object v1, v0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 12053
    return-void
.end method

.method static updateFlymeScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ScreenRotationAnimation;)Z
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "screenRotationAnimation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 12064
    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 12065
    const/4 p1, 0x0

    .line 12066
    .local p1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mFlymeDisableScreenRotation:Z

    .line 12067
    const/4 v0, 0x1

    return v0
.end method
