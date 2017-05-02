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

.field private static final TAG:Ljava/lang/String; = "MzGlobalActions"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/policy/MzGlobalActions;

.field static mMzDialog:Landroid/app/Dialog;


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mCancelOnUp:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MzGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MzGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mIntercepted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/MzGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowTouchSlop:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MzGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mCancelOnUp:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/MzGlobalActions;Lcom/android/server/policy/EnableAccessibilityController;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/MzGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mIntercepted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MzGlobalActions;)Z
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sput-object p1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowTouchSlop:I

    .line 73
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/policy/MzGlobalActions;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/MzGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    return-object v0
.end method

.method private lossMode()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public showGlobalActionsDialog()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 90
    sget v2, Lcom/flyme/internal/R$style;->GlobalActionsDialog:I

    .line 89
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;-><init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    .line 91
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 92
    const/high16 v1, 0x10000

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 93
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1ffffff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 95
    :cond_0
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 87
    return-void
.end method
