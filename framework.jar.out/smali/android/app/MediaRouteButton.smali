.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private mCheatSheetEnabled:Z

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static synthetic -wrap0(Landroid/app/MediaRouteButton;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v3, [I

    .line 60
    const v1, 0x10100a0

    aput v1, v0, v2

    .line 59
    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 64
    new-array v0, v3, [I

    .line 65
    const v1, 0x10102fe

    aput v1, v0, v2

    .line 64
    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const v0, 0x10103ad

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const-string/jumbo v2, "media_router"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 85
    new-instance v2, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$MediaRouterCallback;)V

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 88
    sget-object v2, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    .line 87
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 93
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 96
    const/4 v2, 0x2

    .line 95
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 98
    .local v1, "routeTypes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 101
    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 103
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 81
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 173
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 174
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 176
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 178
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private refreshRoute()V
    .locals 7

    .prologue
    .line 392
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_3

    .line 393
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 394
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v1

    .line 395
    .local v1, "isRemote":Z
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    .line 397
    :goto_1
    const/4 v2, 0x0

    .line 398
    .local v2, "needsRefresh":Z
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v4, v1, :cond_0

    .line 399
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 400
    const/4 v2, 0x1

    .line 402
    :cond_0
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v4, v0, :cond_1

    .line 403
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 404
    const/4 v2, 0x1

    .line 407
    :cond_1
    if-eqz v2, :cond_2

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 411
    :cond_2
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 412
    const/4 v6, 0x1

    .line 411
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 391
    .end local v1    # "isRemote":Z
    .end local v2    # "needsRefresh":Z
    .end local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_3
    return-void

    .line 394
    .restart local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 395
    .restart local v1    # "isRemote":Z
    :cond_5
    const/4 v0, 0x0

    .local v0, "isConnecting":Z
    goto :goto_1
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 270
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 273
    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 267
    return-void

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 260
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 261
    .local v0, "remoteIndicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 261
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 291
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 288
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 307
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 310
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 312
    const/16 v3, 0x8

    .line 311
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 314
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 306
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 242
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 248
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_1

    .line 249
    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 320
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 324
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 318
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 377
    .local v5, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 378
    .local v6, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 379
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 381
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 382
    .local v4, "drawWidth":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 383
    .local v1, "drawHeight":I
    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    .line 384
    .local v2, "drawLeft":I
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 386
    .local v3, "drawTop":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 387
    add-int v9, v2, v4

    add-int v10, v3, v1

    .line 386
    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 329
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 330
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 331
    .local v2, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 332
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 334
    .local v1, "heightMode":I
    iget v10, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 335
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v8, v11

    .line 334
    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 336
    .local v5, "width":I
    iget v8, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v10, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 337
    iget-object v9, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    .line 336
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 340
    .local v0, "height":I
    sparse-switch v6, :sswitch_data_0

    .line 349
    :sswitch_0
    move v4, v5

    .line 354
    .local v4, "measuredWidth":I
    :goto_1
    sparse-switch v1, :sswitch_data_1

    .line 363
    :sswitch_1
    move v3, v0

    .line 367
    .local v3, "measuredHeight":I
    :goto_2
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 328
    return-void

    .end local v0    # "height":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v5    # "width":I
    :cond_1
    move v8, v9

    .line 335
    goto :goto_0

    .line 342
    .restart local v0    # "height":I
    .restart local v5    # "width":I
    :sswitch_2
    move v4, v7

    .line 343
    .restart local v4    # "measuredWidth":I
    goto :goto_1

    .line 345
    .end local v4    # "measuredWidth":I
    :sswitch_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4    # "measuredWidth":I
    goto :goto_1

    .line 356
    :sswitch_4
    move v3, v2

    .line 357
    .restart local v3    # "measuredHeight":I
    goto :goto_2

    .line 359
    .end local v3    # "measuredHeight":I
    :sswitch_5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "measuredHeight":I
    goto :goto_2

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 354
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 193
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "handled":Z
    :goto_0
    return v0

    .restart local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 201
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 202
    return v12

    .line 205
    :cond_0
    iget-boolean v9, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    if-nez v9, :cond_1

    .line 206
    return v11

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 210
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 212
    return v11

    .line 215
    :cond_2
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 216
    .local v6, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 218
    invoke-virtual {p0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 221
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 222
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 223
    .local v4, "height":I
    aget v9, v6, v12

    div-int/lit8 v10, v4, 0x2

    add-int v5, v9, v10

    .line 224
    .local v5, "midy":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    .local v7, "screenWidth":I
    invoke-static {v2, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 227
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 230
    aget v9, v6, v11

    sub-int v9, v7, v9

    div-int/lit8 v10, v8, 0x2

    sub-int/2addr v9, v10

    .line 229
    const v10, 0x800035

    invoke-virtual {v0, v10, v9, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 235
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    invoke-virtual {p0, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 237
    return v12

    .line 233
    :cond_3
    const/16 v9, 0x51

    invoke-virtual {v0, v9, v11, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    .line 185
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 139
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    .prologue
    .line 123
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    .line 124
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 128
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 130
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 132
    const/16 v2, 0x8

    .line 131
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 135
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 122
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 297
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    .line 155
    return-void
.end method

.method showDialogInternal()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-boolean v2, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-nez v2, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 165
    iget v3, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v4, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 164
    invoke-static {v2, v3, v4}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 166
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
