.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
    }
.end annotation


# static fields
.field private static mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "outAppOp"    # [I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x18

    const/4 v2, 0x0

    .line 8327
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8328
    .local v0, "type":I
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_1

    .line 8329
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v1, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    .line 8330
    aput v3, p1, v2

    .line 8338
    :cond_0
    :goto_0
    return-object p2

    .line 8332
    :cond_1
    const/16 v1, 0x7fb

    if-eq v0, v1, :cond_2

    .line 8333
    const/16 v1, 0x7fa

    if-ne v0, v1, :cond_0

    .line 8334
    :cond_2
    const-string/jumbo p2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 8335
    aput v3, p1, v2

    goto :goto_0
.end method

.method static checkShowToOwnerOnly(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 8354
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static getForceHideWallpaperExitAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8423
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$anim;->mz_lock_screen_wallpaper_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 8342
    const/4 v0, 0x0

    .line 8343
    .local v0, "permission":Ljava/lang/String;
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8344
    .local v1, "type":I
    const/16 v2, 0x7fc

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_2

    .line 8345
    :cond_0
    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 8350
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 8346
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x7fa

    if-ne v1, v2, :cond_1

    .line 8347
    const-string/jumbo v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .local v0, "permission":Ljava/lang/String;
    goto :goto_0
.end method

.method static getSlideAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/AnimationSet;
    .locals 7
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const/4 v6, 0x0

    .line 8408
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/flyme/internal/R$anim;->mz_lock_screen_behind_enter:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 8409
    .local v2, "set":Landroid/view/animation/AnimationSet;
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    if-nez v3, :cond_0

    .line 8410
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e0f5c29    # 0.14f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v3, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    .line 8412
    :cond_0
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 8413
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 8414
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8413
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8417
    :cond_1
    return-object v2
.end method

.method static getStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 3
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v2, 0x0

    .line 8394
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 8395
    .local v0, "isKeyguard":Z
    :goto_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 8397
    :cond_0
    if-eqz v0, :cond_2

    sget v1, Lcom/flyme/internal/R$anim;->mz_keyguard_exit:I

    :goto_1
    return v1

    .line 8394
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    .line 8397
    :cond_2
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_exit:I

    goto :goto_1

    .line 8398
    :cond_3
    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 8399
    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, -0x1

    :goto_2
    return v1

    :cond_5
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_enter:I

    goto :goto_2

    .line 8403
    :cond_6
    return v2
.end method

.method static handleLongPressOnHeadSetIfNeeded(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8439
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "headset_middle_key_wakeup"

    .line 8440
    const/4 v4, -0x3

    .line 8439
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 8441
    .local v1, "startVoiceAssistant":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 8442
    .local v0, "keyCode":I
    if-ne v1, v6, :cond_0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymePw:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8445
    :cond_0
    return v5

    .line 8443
    :cond_1
    return v6
.end method

.method static hideBootMessages(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8321
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8322
    .local v0, "hideFlymeBootMessage":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8323
    const/4 v1, 0x1

    return v1
.end method

.method static initFlymeExtraFields(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8306
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 8307
    .local v1, "statusbarEventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8308
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8309
    .local v0, "statusBarEventReceiver":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8311
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzPhoneWindowManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymePw:Lcom/android/server/policy/MzPhoneWindowManager;

    .line 8304
    return-void
.end method

.method static interceptFlymeKeyBeforeQueueing(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)I
    .locals 6
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I

    .prologue
    .line 8451
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "headset_middle_key_wakeup"

    const/4 v4, 0x0

    .line 8452
    const/4 v5, -0x3

    .line 8451
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 8453
    .local v1, "startVoiceAssistant":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 8454
    .local v0, "keyCode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8457
    :cond_0
    :goto_0
    return p2

    .line 8455
    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method static selectStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v1, 0x1

    .line 8384
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_2

    .line 8385
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 8387
    :cond_0
    return v1

    .line 8386
    :cond_1
    if-eq p2, v1, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 8390
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static setFlymeStatusBarTheme(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 21
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v16, v0

    .line 8463
    .local v16, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->flymeGetFieldImmersiveModeConfirmation()Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 8466
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodIsStatusBarKeyguard()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v16, v0

    .line 8468
    :cond_0
    :goto_1
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    not-int v0, v0

    move/from16 v18, v0

    and-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    not-int v0, v0

    move/from16 v18, v0

    and-int v14, v17, v18

    .line 8469
    .local v14, "tmpVisibility":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 8470
    const/16 v17, 0x7

    invoke-static/range {v16 .. v17}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v17

    move/from16 v0, v17

    not-int v0, v0

    move/from16 v17, v0

    and-int v14, v14, v17

    .line 8473
    :cond_1
    and-int/lit16 v0, v14, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/4 v10, 0x1

    .line 8475
    .local v10, "lightStatusBar":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodUpdateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v9

    .line 8477
    .local v9, "fullscreenVisibility":I
    if-nez v10, :cond_9

    and-int/lit16 v0, v9, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const/4 v4, 0x1

    .line 8479
    .local v4, "change":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodUpdateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v7

    .line 8480
    .local v7, "dockedVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodUpdateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v15

    .line 8481
    .local v15, "visibility":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v17, v0

    xor-int v5, v15, v17

    .line 8482
    .local v5, "diff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    move/from16 v17, v0

    xor-int v8, v9, v17

    .line 8483
    .local v8, "fullscreenDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    move/from16 v17, v0

    xor-int v6, v7, v17

    .line 8484
    .local v6, "dockedDiff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v11

    .line 8486
    .local v11, "needsMenu":Z
    and-int/lit16 v0, v15, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/4 v10, 0x1

    .line 8487
    .local v10, "lightStatusBar":Z
    :goto_4
    if-nez v10, :cond_2

    and-int/lit16 v0, v9, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_b

    :cond_2
    const/4 v10, 0x1

    .line 8488
    .local v10, "lightStatusBar":Z
    :goto_5
    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    .line 8489
    .local v13, "statusBarColor":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    if-eqz v8, :cond_d

    .line 8491
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->shouldWindowAffectDarkStatusBarIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v12

    .line 8492
    .local v12, "shouldWindowStatusBarIcon":Z
    if-nez v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 8493
    and-int/lit16 v0, v9, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/4 v10, 0x1

    .line 8494
    :goto_8
    const/4 v12, 0x1

    .line 8496
    .end local v12    # "shouldWindowStatusBarIcon":Z
    :cond_4
    if-eqz v12, :cond_5

    .line 8497
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    .line 8498
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    .line 8499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 8500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8461
    :cond_5
    :goto_9
    return-void

    .line 8462
    .end local v4    # "change":Z
    .end local v5    # "diff":I
    .end local v6    # "dockedDiff":I
    .end local v7    # "dockedVisibility":I
    .end local v8    # "fullscreenDiff":I
    .end local v9    # "fullscreenVisibility":I
    .end local v10    # "lightStatusBar":Z
    .end local v11    # "needsMenu":Z
    .end local v13    # "statusBarColor":I
    .end local v14    # "tmpVisibility":I
    .end local v15    # "visibility":I
    .end local v16    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 8466
    .restart local v16    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 8473
    .restart local v14    # "tmpVisibility":I
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "lightStatusBar":Z
    goto/16 :goto_2

    .line 8477
    .restart local v9    # "fullscreenVisibility":I
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "change":Z
    goto/16 :goto_3

    .line 8486
    .restart local v5    # "diff":I
    .restart local v6    # "dockedDiff":I
    .restart local v7    # "dockedVisibility":I
    .restart local v8    # "fullscreenDiff":I
    .restart local v11    # "needsMenu":Z
    .restart local v15    # "visibility":I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 8487
    .local v10, "lightStatusBar":Z
    :cond_b
    const/4 v10, 0x0

    .local v10, "lightStatusBar":Z
    goto :goto_5

    .line 8488
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .restart local v13    # "statusBarColor":I
    goto :goto_6

    .line 8489
    :cond_d
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 8490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    goto/16 :goto_7

    .line 8493
    .restart local v12    # "shouldWindowStatusBarIcon":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_8

    .line 8502
    .end local v12    # "shouldWindowStatusBarIcon":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;-><init>(Lcom/android/server/policy/PhoneWindowManager;ZZ)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method static setHideLockScreen(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 8376
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 8377
    .local v0, "fl":I
    const/high16 v3, 0x80000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 8378
    .local v1, "showWhenLocked":Z
    :goto_0
    if-nez v1, :cond_0

    .line 8379
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 8375
    :cond_0
    return-void

    .end local v1    # "showWhenLocked":Z
    :cond_1
    move v1, v2

    .line 8377
    goto :goto_0
.end method

.method static setRectBottom(Lcom/android/server/policy/PhoneWindowManager;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 8372
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8371
    return-void
.end method

.method static showBootMessage(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 8315
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    .line 8316
    .local v0, "showFlymeBootMessage":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8317
    const/4 v1, 0x1

    return v1
.end method

.method static showFlymeGlobalActions(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 4
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8427
    const-string/jumbo v0, "globalactions"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 8428
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog()V

    .line 8429
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8432
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8434
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 8359
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_0

    .line 8360
    const/4 v0, 0x3

    return v0

    .line 8363
    :cond_0
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_1

    .line 8364
    const/16 v0, 0xe

    return v0

    .line 8368
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
