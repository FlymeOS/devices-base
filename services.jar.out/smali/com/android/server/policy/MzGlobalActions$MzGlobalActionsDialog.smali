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

.field private mFadeInSet:Landroid/animation/AnimatorSet;

.field private mFadeOutSet:Landroid/animation/AnimatorSet;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimtor:Landroid/animation/ObjectAnimator;

.field mMzRecevier:Landroid/content/BroadcastReceiver;

.field private mOutAnimtor:Landroid/animation/ObjectAnimator;

.field mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

.field mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

.field private newConfig:I

.field private oldConfig:I

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

.method constructor <init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/MzGlobalActions;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    .line 101
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 128
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    .line 397
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$2;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method private prepareAnimators()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const/4 v4, 0x2

    .line 543
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 544
    const-string/jumbo v1, "blurAlpha"

    .line 543
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 545
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 546
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 549
    const-string/jumbo v1, "blurAlpha"

    .line 548
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 550
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 551
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 554
    const-string/jumbo v1, "Alpha"

    .line 553
    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 555
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 556
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 559
    const-string/jumbo v1, "Alpha"

    .line 558
    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 560
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 561
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 564
    const-string/jumbo v1, "Alpha"

    .line 563
    new-array v2, v4, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 565
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 566
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 569
    const-string/jumbo v1, "Alpha"

    .line 568
    new-array v2, v4, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 570
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 571
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    .line 574
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    .line 575
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    .line 574
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 576
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$8;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    .line 604
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    .line 605
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    .line 604
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$9;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    return-void

    .line 543
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 548
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 553
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 558
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 563
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 568
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 164
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 165
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v5

    .line 166
    const-string/jumbo v6, "window"

    .line 165
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 167
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 168
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 170
    .local v3, "screen_w":I
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    .local v2, "screen_h":I
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 173
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 174
    .local v1, "rot":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 179
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    return-void

    .line 177
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

    .line 190
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 191
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v4

    .line 192
    const-string/jumbo v5, "window"

    .line 191
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 193
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 194
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 196
    .local v2, "screen_w":I
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 197
    .local v1, "screen_h":I
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 198
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 199
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 200
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 204
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v4, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 189
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 491
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 493
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 495
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 496
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 497
    .local v11, "eventY":I
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v2

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v2

    neg-int v2, v2

    if-ge v11, v2, :cond_5

    .line 501
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v13}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 505
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get3(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 506
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->-set2(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 507
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get3(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 510
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 509
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 511
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 512
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 519
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get0(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 523
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2, v12}, Lcom/android/server/policy/MzGlobalActions;->-set2(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 527
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 499
    .restart local v8    # "action":I
    .restart local v9    # "decor":Landroid/view/View;
    .restart local v10    # "eventX":I
    .restart local v11    # "eventY":I
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    .line 500
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get4(Lcom/android/server/policy/MzGlobalActions;)I

    move-result v3

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    goto :goto_0

    .line 515
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 518
    if-ne v8, v13, :cond_8

    .line 519
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get0(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 520
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 522
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 523
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set2(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 515
    :cond_8
    return v2

    .line 517
    :catchall_0
    move-exception v2

    .line 518
    if-ne v8, v13, :cond_a

    .line 519
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/MzGlobalActions;->-get0(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 520
    invoke-virtual {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->cancel()V

    .line 522
    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set0(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 523
    iget-object v3, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v3, v12}, Lcom/android/server/policy/MzGlobalActions;->-set2(Lcom/android/server/policy/MzGlobalActions;Z)Z

    .line 517
    :cond_a
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 214
    sget v1, Lcom/flyme/internal/R$layout;->mz_globalaction_system_dialog:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setContentView(I)V

    .line 215
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_layout:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 216
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_buttons:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    .line 217
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    .line 218
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 219
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    .line 220
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "MzGlobalActions"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 228
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 229
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 230
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    .line 233
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    .line 234
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 235
    const/16 v2, 0x202

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$3;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 297
    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$4;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 296
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 333
    sget v1, Lcom/flyme/internal/R$id;->mz_shutdown:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 334
    sget v1, Lcom/flyme/internal/R$id;->mz_restart:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    .line 335
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 336
    sget v3, Lcom/flyme/internal/R$string;->global_action_power_restart:I

    .line 335
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 338
    sget v3, Lcom/flyme/internal/R$color;->mz_global_restart_bg_color:I

    .line 337
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 339
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 340
    sget v3, Lcom/flyme/internal/R$string;->global_action_shut_down:I

    .line 339
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    sget v3, Lcom/flyme/internal/R$color;->mz_global_shutdown_bg_color:I

    .line 341
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setCustomColor(I)V

    .line 343
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v0, "mzFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v1, "com.meizu.font.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->prepareAnimators()V

    .line 211
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 533
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    :cond_0
    return v1

    .line 539
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 437
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 439
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v1}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v1

    .line 439
    if-nez v1, :cond_1

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions;->-wrap0(Lcom/android/server/policy/MzGlobalActions;)Z

    move-result v1

    .line 439
    if-eqz v1, :cond_2

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 442
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 443
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 444
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 451
    :goto_0
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 452
    .local v0, "Config":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 453
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showLandscape()V

    .line 457
    :goto_1
    iput v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->oldConfig:I

    .line 463
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    new-instance v2, Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v3

    .line 465
    new-instance v4, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;

    invoke-direct {v4, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$7;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 464
    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/android/server/policy/MzGlobalActions;->-set1(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;

    .line 474
    invoke-super {p0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 435
    :goto_2
    return-void

    .line 446
    .end local v0    # "Config":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 447
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setEnabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    .line 449
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/MzCustomCircleButton;->setAlpha(F)V

    goto :goto_0

    .line 455
    .restart local v0    # "Config":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->showPortrit()V

    goto :goto_1

    .line 476
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v1, v6}, Lcom/android/server/policy/MzGlobalActions;->-set1(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;

    .line 477
    invoke-super {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/server/policy/MzGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions;->-get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 486
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 482
    return-void
.end method
