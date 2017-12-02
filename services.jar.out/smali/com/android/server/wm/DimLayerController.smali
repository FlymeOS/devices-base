.class Lcom/android/server/wm/DimLayerController;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayerController$DimLayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "DimLayerController"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

.field private mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/DimLayer$DimLayerUser;",
            "Lcom/android/server/wm/DimLayerController$DimLayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 46
    return-void
.end method

.method private animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 10
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 223
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 230
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_2

    .line 231
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 232
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 242
    .local v0, "dimAmount":F
    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v5

    .line 243
    .local v5, "targetAlpha":F
    cmpl-float v6, v5, v0

    if-eqz v6, :cond_7

    .line 244
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_4

    .line 245
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 265
    :cond_0
    :goto_1
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-nez v6, :cond_8

    .line 268
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->show()V

    .line 273
    :cond_1
    const/4 v6, 0x0

    return v6

    .line 234
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v5    # "targetAlpha":F
    :cond_2
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    if-eqz v6, :cond_3

    .line 235
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, 0x1

    .line 236
    .restart local v1    # "dimLayer":I
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 238
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    :cond_3
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, -0x1

    .line 239
    .restart local v1    # "dimLayer":I
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 247
    .restart local v5    # "targetAlpha":F
    :cond_4
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_6

    .line 248
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 250
    .local v2, "duration":J
    :goto_2
    cmpl-float v6, v5, v0

    if-lez v6, :cond_5

    .line 251
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DimLayerController;->getDimLayerFadeDuration(J)J

    move-result-wide v2

    .line 253
    :cond_5
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 257
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 259
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1

    .line 249
    .end local v2    # "duration":J
    :cond_6
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_2

    .line 262
    .end local v2    # "duration":J
    :cond_7
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 263
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto :goto_1

    .line 270
    :cond_8
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v6

    return v6
.end method

.method private getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 134
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimLayerFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 282
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 283
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 284
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    .line 283
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 285
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 286
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 290
    :cond_0
    :goto_0
    return-wide p1

    .line 287
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 288
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private static getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;
    .locals 2
    .param p0, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DimLayerController/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 99
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .end local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-direct {v0, v2}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>(Lcom/android/server/wm/DimLayerController$DimLayerState;)V

    .line 101
    .restart local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-object v0
.end method

.method private setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 108
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 106
    return-void
.end method

.method private stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 176
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iput-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, "fullScreen":I
    const/4 v1, -0x1

    .line 190
    .local v1, "fullScreenAndDimming":I
    const/4 v3, 0x0

    .line 192
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .end local v3    # "result":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 193
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 194
    .local v5, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 199
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v6, v7, :cond_1

    .line 200
    move v0, v2

    .line 201
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iget-boolean v6, v6, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-eqz v6, :cond_0

    .line 202
    move v1, v2

    .line 192
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .local v3, "result":Z
    goto :goto_1

    .line 212
    .end local v3    # "result":Z
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v5    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    if-eq v1, v8, :cond_4

    .line 213
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 219
    :cond_3
    :goto_2
    return v3

    .line 214
    :cond_4
    if-eq v0, v8, :cond_3

    .line 217
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v6

    or-int/2addr v3, v6

    .restart local v3    # "result":Z
    goto :goto_2
.end method

.method applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to apply dim layer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    const-string/jumbo v2, ", but no dim layer user found."

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimLayerController;->startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 322
    :cond_1
    return-void
.end method

.method applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 317
    return-void
.end method

.method applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 313
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 296
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 298
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 299
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 293
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "DimLayerController"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v0, "  "

    .line 350
    .local v0, "doubleSpace":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "prefixPlusDoubleSpace":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 355
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dimLayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 356
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v5, v7, :cond_1

    const-string/jumbo v5, "shared"

    .line 355
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 357
    const-string/jumbo v6, ", animator="

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 357
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 357
    const-string/jumbo v6, ", continueDimming="

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 357
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 356
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    goto :goto_1

    .line 347
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_2
    return-void
.end method

.method isDimming()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 119
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    return v2

    .line 117
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 123
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_1
    return v3
.end method

.method isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 278
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 304
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_1

    .line 306
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eq v1, v2, :cond_0

    .line 307
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_1
    return-void
.end method

.method resetDimming()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iput-boolean v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v0

    .line 142
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iput-boolean p3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    .line 147
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-gt v1, v2, :cond_2

    .line 150
    :cond_0
    iput-object p2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 151
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 157
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    :cond_2
    return-void

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 3

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 165
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 163
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 161
    .end local v0    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_0
    return-void
.end method

.method updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 6
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v3

    .line 53
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 56
    .local v2, "previousFullscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 57
    .local v0, "displayId":I
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 58
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_2

    .line 60
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->setBoundsForFullscreen()V

    .line 61
    return-void

    .line 54
    .end local v0    # "displayId":I
    .end local v2    # "previousFullscreen":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 53
    .end local v2    # "previousFullscreen":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 64
    .restart local v0    # "displayId":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 65
    .local v1, "newDimLayer":Lcom/android/server/wm/DimLayer;
    if-nez v1, :cond_5

    .line 66
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_4

    .line 68
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 74
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    iput-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 88
    :cond_3
    :goto_2
    iput-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 51
    return-void

    .line 71
    :cond_4
    new-instance v1, Lcom/android/server/wm/DimLayer;

    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_1

    .line 77
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_3

    .line 78
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    goto :goto_2

    .line 81
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_6
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_8

    .line 82
    :cond_7
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .line 85
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 86
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 84
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_3
.end method
