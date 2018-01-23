.class public Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MzGlobalActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;,
        Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x1f4L

.field private static final ANIM_IN_DURATION:J = 0x12cL

.field private static final BUTTON_ANIM_DURATION:J = 0x12cL

.field private static final DISMISS_DIAlOG_DELAYED_TIME:I = 0x320

.field private static final MESSAGE_MZ_DISMISS:I = 0x0

.field private static final MESSAGE_MZ_FADEOUT:I = 0x1

.field private static final MESSAGE_MZ_UPDATE:I = 0x2


# instance fields
.field ai:Landroid/view/animation/AccelerateInterpolator;

.field private d:Landroid/view/Display;

.field di:Landroid/view/animation/DecelerateInterpolator;

.field private dm:Landroid/util/DisplayMetrics;

.field private mAttached:Z

.field private mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonView:Landroid/view/View;

.field mButtons:Landroid/widget/LinearLayout;

.field mContainer:Landroid/widget/LinearLayout;

.field private mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mEmergencyButton:Landroid/widget/ImageButton;

.field private mFadeInSet:Landroid/animation/AnimatorSet;

.field private mFadeOutSet:Landroid/animation/AnimatorSet;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimtor:Landroid/animation/ObjectAnimator;

.field mMzRecevier:Landroid/content/BroadcastReceiver;

.field private mOutAnimtor:Landroid/animation/ObjectAnimator;

.field mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

.field mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lcom/android/server/policy/MzGlobalActions;

.field private window:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->UpdateGlobalView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->confirmPassword(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->startAnim2()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;IZ)V
    .locals 0
    .param p1, "witch"    # I
    .param p2, "withAnim"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(IZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/MzGlobalActions;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    .line 126
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 152
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    .line 542
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    .line 125
    return-void
.end method

.method private UpdateGlobalView(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 186
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_global_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setTextSize(IF)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_global_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setTextSize(IF)V

    .line 194
    :cond_1
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    sget v2, Lcom/flyme/internal/R$string;->global_action_power_restart:I

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    sget v2, Lcom/flyme/internal/R$string;->global_action_shut_down:I

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_2
    const-string/jumbo v0, "com.meizu.font.change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 185
    :cond_3
    return-void
.end method

.method private confirmPassword(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "confirm":Z
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->needConfirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string/jumbo v1, "MzGlobalActions"

    const-string/jumbo v2, "confirm password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    .line 481
    :cond_0
    if-eqz v0, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 487
    new-instance v3, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 482
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/policy/FlymeConfirmPasswordView;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 493
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setAlpha(F)V

    .line 494
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 500
    const-wide/16 v4, 0x64

    .line 494
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 504
    const-wide/16 v2, 0x320

    .line 503
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private needConfirm()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->hasFlymeAccount()Z

    move-result v0

    .line 511
    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFindPhoneEnabled()Z

    move-result v0

    .line 511
    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareAnimators()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const/4 v4, 0x2

    .line 704
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 705
    const-string/jumbo v1, "blurAlpha"

    .line 704
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 706
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 707
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 710
    const-string/jumbo v1, "blurAlpha"

    .line 709
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 711
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 715
    const-string/jumbo v1, "Alpha"

    .line 714
    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 716
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 717
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 720
    const-string/jumbo v1, "Alpha"

    .line 719
    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 721
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 722
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 725
    const-string/jumbo v1, "Alpha"

    .line 724
    new-array v2, v4, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 726
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 727
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 730
    const-string/jumbo v1, "Alpha"

    .line 729
    new-array v2, v4, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 731
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 732
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 735
    const-string/jumbo v2, "Alpha"

    .line 734
    new-array v3, v4, [F

    fill-array-data v3, :array_6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->-set1(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 736
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get3(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 737
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get3(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 743
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    .line 744
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    .line 745
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    .line 744
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$14;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    .line 774
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    .line 775
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    .line 774
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$15;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->-set2(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 808
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get3(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$16;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    return-void

    .line 704
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 709
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 714
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 719
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 724
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 729
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 734
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 218
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 219
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v5

    .line 220
    const-string/jumbo v6, "window"

    .line 219
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 221
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 222
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 224
    .local v3, "screen_w":I
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 225
    .local v2, "screen_h":I
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 226
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 227
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 228
    .local v1, "rot":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 233
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 234
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 237
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    return-void

    .line 231
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private showPortrit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 244
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 245
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v4

    .line 246
    const-string/jumbo v5, "window"

    .line 245
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 247
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 248
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 249
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 250
    .local v2, "screen_w":I
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 251
    .local v1, "screen_h":I
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 252
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 254
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 258
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    return-void
.end method

.method private startAnim2()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    return-void
.end method

.method private switchView(I)V
    .locals 1
    .param p1, "witch"    # I

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(IZ)V

    .line 516
    return-void
.end method

.method private switchView(IZ)V
    .locals 5
    .param p1, "witch"    # I
    .param p2, "withAnim"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 520
    if-eqz p2, :cond_0

    if-nez p1, :cond_4

    .line 521
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    if-ne p1, v4, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setVisibility(I)V

    .line 519
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 521
    goto :goto_0

    :cond_3
    move v1, v2

    .line 522
    goto :goto_1

    .line 524
    :cond_4
    if-ne p1, v4, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x41

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$11;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 652
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 654
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 656
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 657
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 658
    .local v11, "eventY":I
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get8(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v2

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get8(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v2

    neg-int v2, v2

    if-ge v11, v2, :cond_5

    .line 662
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v13}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 666
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get7(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 667
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->-set4(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 668
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get7(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 671
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 670
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 672
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 673
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 680
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get1(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 683
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 684
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v12}, Lcom/android/server/policy/MzGlobalActions;->-set4(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 688
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 660
    .restart local v8    # "action":I
    .restart local v9    # "decor":Landroid/view/View;
    .restart local v10    # "eventX":I
    .restart local v11    # "eventY":I
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get8(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    .line 661
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get8(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v3

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    goto :goto_0

    .line 676
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 679
    if-ne v8, v13, :cond_8

    .line 680
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get1(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 681
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 683
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 684
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set4(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 676
    :cond_8
    return v2

    .line 678
    :catchall_0
    move-exception v2

    .line 679
    if-ne v8, v13, :cond_a

    .line 680
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get1(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 681
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 683
    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 684
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set4(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 678
    :cond_a
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 268
    sget v1, Lcom/flyme/internal/R$layout;->mz_globalaction_system_dialog:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setContentView(I)V

    .line 269
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_layout:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 270
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_buttons:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    .line 271
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    .line 272
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    .line 274
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "MzGlobalActions"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 283
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, v2, Lcom/android/server/policy/MzGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 285
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    .line 288
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    .line 289
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 290
    const/16 v2, 0x202

    .line 289
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 352
    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 351
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 388
    sget v1, Lcom/flyme/internal/R$id;->mz_shutdown:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 389
    sget v1, Lcom/flyme/internal/R$id;->mz_restart:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 390
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    sget v1, Lcom/flyme/internal/R$id;->mz_confirm:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/FlymeConfirmPasswordView;

    iput-object v1, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 391
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initValues()V

    .line 392
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 393
    sget v3, Lcom/flyme/internal/R$string;->global_action_power_restart:I

    .line 392
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 395
    sget v3, Lcom/flyme/internal/R$color;->mz_global_restart_bg_color:I

    .line 394
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 396
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 397
    sget v3, Lcom/flyme/internal/R$string;->global_action_shut_down:I

    .line 396
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 399
    sget v3, Lcom/flyme/internal/R$color;->mz_global_shutdown_bg_color:I

    .line 398
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 400
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget v1, Lcom/flyme/internal/R$id;->mz_emergency:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    .line 447
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 464
    .local v0, "mzFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string/jumbo v1, "com.meizu.font.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->prepareAnimators()V

    .line 265
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 694
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 698
    :cond_0
    return v1

    .line 700
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 573
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 574
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions;->mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initValues()V

    .line 577
    :cond_0
    const-string/jumbo v2, "MzGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mConfirm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 580
    invoke-direct {p0, v5}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(I)V

    .line 581
    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$12;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-direct {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->confirmPassword(Ljava/lang/Runnable;)V

    .line 592
    return-void

    .line 594
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->switchView(I)V

    .line 597
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    if-eqz v2, :cond_2

    .line 598
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v2}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v2

    .line 597
    if-nez v2, :cond_3

    .line 598
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-wrap1(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    .line 597
    if-eqz v2, :cond_4

    .line 599
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 600
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 601
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 602
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 609
    :goto_0
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 610
    .local v0, "Config":I
    invoke-virtual {p0, v5}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 611
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 612
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showLandscape()V

    .line 621
    :goto_1
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 622
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v3, Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get5()Landroid/content/Context;

    move-result-object v4

    .line 623
    new-instance v5, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;

    invoke-direct {v5, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$13;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 622
    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->-set3(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;

    .line 632
    invoke-super {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 639
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mEmergencyButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-wrap0(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 571
    return-void

    .line 604
    .end local v0    # "Config":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 605
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 606
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v8}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 607
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2, v8}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    goto :goto_0

    .line 614
    .restart local v0    # "Config":I
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showPortrit()V

    goto :goto_1

    .line 634
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v6}, Lcom/android/server/policy/MzGlobalActions;->-set3(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;

    .line 635
    invoke-super {p0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_2

    .line 639
    :cond_7
    const/16 v1, 0x8

    goto :goto_3
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 648
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 644
    return-void
.end method
