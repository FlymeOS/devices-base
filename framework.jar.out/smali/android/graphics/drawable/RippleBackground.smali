.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$1;,
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_ENTER_DURATION:I = 0x258

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final OPACITY_EXIT_DURATION:I = 0x1e0


# instance fields
.field private mIsBounded:Z

.field private mOpacity:F

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/RippleBackground;)F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/RippleBackground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 179
    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z
    .param p4, "forceSoftware"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p4}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 59
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 10
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 131
    new-instance v4, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-direct {v4}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .line 133
    .local v4, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 134
    .local v5, "targetAlpha":I
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 135
    .local v0, "currentAlpha":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 138
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 139
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 140
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 142
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    if-eqz v6, :cond_2

    .line 143
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    const/high16 v7, 0x42f00000    # 120.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 146
    .local v3, "fastEnterDuration":I
    :goto_0
    new-instance v2, Landroid/view/RenderNodeAnimator;

    .line 147
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 146
    invoke-direct {v2, v6, v9, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 148
    .local v2, "exit":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    const-wide/16 v6, 0x1e0

    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 150
    if-lez v3, :cond_0

    .line 151
    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 152
    int-to-float v6, v5

    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    .line 154
    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 157
    if-lez v3, :cond_1

    .line 158
    new-instance v1, Landroid/view/RenderNodeAnimator;

    .line 159
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    int-to-float v7, v5

    .line 158
    invoke-direct {v1, v6, v9, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 160
    .local v1, "enter":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 162
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 165
    .end local v1    # "enter":Landroid/view/RenderNodeAnimator;
    :cond_1
    return-object v4

    .line 143
    .end local v2    # "exit":Landroid/view/RenderNodeAnimator;
    .end local v3    # "fastEnterDuration":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "fastEnterDuration":I
    goto :goto_0
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 8
    .param p1, "fast"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 91
    if-eqz p1, :cond_0

    const/16 v1, 0x78

    .line 92
    .local v1, "maxDuration":I
    :goto_0
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    sub-float v3, v6, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 94
    .local v0, "duration":I
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 95
    .local v2, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 96
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    return-object v2

    .line 91
    .end local v0    # "duration":I
    .end local v1    # "maxDuration":I
    .end local v2    # "opacity":Landroid/animation/ObjectAnimator;
    :cond_0
    const/16 v1, 0x258

    .restart local v1    # "maxDuration":I
    goto :goto_0
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .local v4, "set":Landroid/animation/AnimatorSet;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v5

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    .local v2, "exit":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    const-wide/16 v6, 0x1e0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 112
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 115
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    if-eqz v6, :cond_1

    .line 116
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    sub-float v6, v10, v6

    const/high16 v7, 0x42f00000    # 120.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 117
    .local v3, "fastEnterDuration":I
    :goto_0
    if-lez v3, :cond_0

    .line 118
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v7, v9, [F

    aput v10, v7, v5

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 119
    .local v1, "enter":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    .end local v1    # "enter":Landroid/animation/ObjectAnimator;
    :cond_0
    return-object v4

    .end local v3    # "fastEnterDuration":I
    :cond_1
    move v3, v5

    .line 116
    goto :goto_0
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 71
    .local v2, "origAlpha":I
    int-to-float v3, v2

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 72
    .local v0, "alpha":I
    if-lez v0, :cond_0

    .line 73
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    invoke-virtual {p1, v5, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    const/4 v1, 0x1

    .line 79
    :cond_0
    return v1
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->isHardwareAnimating()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected jumpValuesToExit()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    .line 169
    return-void
.end method
