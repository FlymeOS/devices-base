.class public Lcom/android/server/policy/StatusBarController;
.super Lcom/android/server/policy/BarController;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/StatusBarController$1;
    }
.end annotation


# static fields
.field private static final TRANSITION_DURATION:J = 0x78L


# instance fields
.field private final mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;


# direct methods
.method static synthetic -wrap0(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 2
    .param p0, "openAnimation"    # Landroid/view/animation/Animation;
    .param p1, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/high16 v2, 0x4000000

    .line 105
    const-string/jumbo v1, "StatusBar"

    .line 107
    const/high16 v3, 0x10000000

    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    .line 109
    const/4 v5, 0x1

    .line 111
    const/16 v7, 0x8

    move-object v0, p0

    move v6, v2

    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    .line 43
    new-instance v0, Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1;-><init>(Lcom/android/server/policy/StatusBarController;)V

    .line 42
    iput-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    .line 104
    return-void
.end method

.method private static calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 8
    .param p0, "openAnimation"    # Landroid/view/animation/Animation;
    .param p1, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 131
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 132
    invoke-static {p0}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    .line 133
    .local v1, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-static {p1}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 134
    .local v0, "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/policy/StatusBarController;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v2

    .line 140
    .local v2, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 141
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v6

    .line 140
    add-long/2addr v4, v6

    .line 142
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v6

    long-to-float v3, v6

    mul-float/2addr v3, v2

    float-to-long v6, v3

    .line 140
    add-long/2addr v4, v6

    .line 142
    const-wide/16 v6, 0x78

    .line 140
    sub-long/2addr v4, v6

    return-wide v4

    .line 143
    .end local v2    # "t":F
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    return-wide v4

    .line 146
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    return-wide v4

    .line 149
    .end local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .locals 4
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 178
    const/high16 v1, 0x3f000000    # 0.5f

    .line 179
    .local v1, "val":F
    const/high16 v0, 0x3e800000    # 0.25f

    .line 180
    .local v0, "adj":F
    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 181
    invoke-interface {p0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 182
    add-float/2addr v1, v0

    .line 186
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_0

    .line 184
    :cond_0
    sub-float/2addr v1, v0

    goto :goto_1

    .line 188
    :cond_1
    return v1
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    instance-of v3, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_0

    .line 160
    check-cast p0, Landroid/view/animation/TranslateAnimation;

    .end local p0    # "animation":Landroid/view/animation/Animation;
    return-object p0

    .line 161
    .restart local p0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    instance-of v3, p0, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_2

    move-object v2, p0

    .line 162
    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 163
    .local v2, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 164
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 165
    .local v0, "a":Landroid/view/animation/Animation;
    instance-of v3, v0, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_1

    .line 166
    check-cast v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    return-object v0

    .line 163
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method

.method protected skipAnimation()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
