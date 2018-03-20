.class final Lcom/android/internal/policy/DecorView$FlymeInjector;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateNavigationBarColor(Lcom/android/internal/policy/DecorView;)I
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2530
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0

    .line 2532
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v0

    return v0
.end method

.method static flymeDispatchKeyEvent(Lcom/android/internal/policy/DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 2483
    .local v0, "isDown":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_1

    .line 2485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2486
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->dispatchStatusBarTap()Z

    .line 2487
    return v1

    .end local v0    # "isDown":Z
    :cond_0
    move v0, v2

    .line 2482
    goto :goto_0

    .line 2491
    .restart local v0    # "isDown":Z
    :cond_1
    return v2
.end method

.method static flymeDrawStatusBarBackground(Lcom/android/internal/policy/DecorView;Landroid/graphics/Canvas;)V
    .locals 3
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2495
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    .line 2496
    .local v1, "window":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v1, :cond_0

    .line 2497
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2498
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2499
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->drawStatusBarBackground(Landroid/graphics/Canvas;)V

    .line 2494
    :cond_0
    return-void
.end method

.method static flymeGetDisplayMetricsHeight(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;III)I
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "height"    # I

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldStatusColorViewState()Lcom/android/internal/policy/DecorView$ColorViewState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2520
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p4, p0, Lcom/android/internal/policy/DecorView;->mFlymeStableInsetTop:I

    .line 2521
    :cond_0
    if-lez p4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p4

    add-int/lit8 p4, v0, -0x1

    .line 2524
    :cond_1
    :goto_0
    return p4

    .line 2521
    :cond_2
    const/4 p4, 0x0

    goto :goto_0
.end method

.method static flymeOnStatusBarColorChange(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 1
    .param p0, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "color"    # I

    .prologue
    .line 2505
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2506
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onStatusBarColorChange(I)I

    move-result v0

    return v0

    .line 2508
    :cond_0
    return p1
.end method

.method static flymeSuperDispatchKeyEvent(Lcom/android/internal/policy/DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2471
    .local v0, "action":I
    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2478
    :cond_0
    return v4

    .line 2472
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v1

    .line 2473
    .local v1, "listener":Landroid/view/ActionMode$BackPressedListener;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    .line 2474
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2476
    :cond_2
    return v3

    :cond_3
    move v2, v3

    .line 2473
    goto :goto_0
.end method

.method static isStatusBarTintEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_status_bar_tint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static setFlymeStableInsetTop(Lcom/android/internal/policy/DecorView;Landroid/view/WindowInsets;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2513
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mFlymeStableInsetTop:I

    .line 2511
    return-void
.end method

.method static updateNavigationBarIcon(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;Z)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "showView"    # Z

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldNavigationColorViewState()Lcom/android/internal/policy/DecorView$ColorViewState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2547
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateNavigationBarIcon(Z)V

    .line 2544
    :cond_0
    return-void
.end method

.method static updateNavigationGuardColorInner(Lcom/android/internal/policy/DecorView;)V
    .locals 3
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldNavigationGuard()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2538
    invoke-static {p0}, Lcom/android/internal/policy/DecorView$FlymeInjector;->calculateNavigationBarColor(Lcom/android/internal/policy/DecorView;)I

    move-result v0

    .line 2539
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldNavigationGuard()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2540
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->updateNavigationBarIcon(Z)V

    .line 2536
    .end local v0    # "color":I
    :cond_0
    return-void
.end method
