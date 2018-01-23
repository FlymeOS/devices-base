.class public Lcom/android/server/policy/MzGlobalActions;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
    }
.end annotation


# static fields
.field public static final FONT_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.meizu.font.change"

.field private static final SHOW_BUTTONS:I = 0x0

.field private static final SHOW_PASSWORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MzGlobalActions"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/policy/MzGlobalActions;

.field static mMzDialog:Landroid/app/Dialog;


# instance fields
.field private mAction:I

.field private mCancelOnUp:Z

.field private mConfirm:Z

.field private mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mConfirmSet:Landroid/animation/AnimatorSet;

.field mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MzGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mCancelOnUp:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get5()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mIntercepted:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/MzGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowTouchSlop:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MzGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mCancelOnUp:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/MzGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mIntercepted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions;->isIndiaArea()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions;->lossMode()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    .line 88
    iput v0, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    .line 92
    sput-object p1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 94
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowTouchSlop:I

    .line 91
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/server/policy/MzGlobalActions;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/MzGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    return-object v0
.end method

.method private isIndiaArea()Z
    .locals 3

    .prologue
    .line 839
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    const-string/jumbo v0, "IN"

    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 841
    const-string/jumbo v2, "mz_region"

    .line 840
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    const-string/jumbo v0, "hi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 839
    :goto_0
    return v0

    .line 840
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lossMode()Z
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public showGlobalActionsDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog(ZI)V

    .line 105
    return-void
.end method

.method public showGlobalActionsDialog(ZI)V
    .locals 3
    .param p1, "isConfirming"    # Z
    .param p2, "action"    # I

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    .line 111
    iput p2, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    .line 112
    const-string/jumbo v0, "MzGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showGlobalActionsDialog , mConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 115
    sget v2, Lcom/flyme/internal/R$style;->GlobalActionsDialog:I

    .line 114
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;-><init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    .line 116
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 117
    const/high16 v1, 0x10000

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1ffffff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 120
    :cond_0
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 109
    return-void
.end method
