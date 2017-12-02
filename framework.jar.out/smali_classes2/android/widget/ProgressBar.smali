.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleWidth:I

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static synthetic -get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ProgressBar;)F
    .locals 1

    iget v0, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return v0
.end method

.method static synthetic -set0(Landroid/widget/ProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ProgressBar;F)F
    .locals 0

    iput p1, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ProgressBar;IIZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ProgressBar;IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 206
    sput-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 265
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 248
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 2042
    new-instance v4, Landroid/widget/ProgressBar$1;

    const-string/jumbo v5, "visual_progress"

    invoke-direct {v4, p0, v5}, Landroid/widget/ProgressBar$1;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 2041
    iput-object v4, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 276
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 279
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 278
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 283
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 284
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 288
    invoke-static {v2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 289
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 298
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 299
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 300
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 301
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 303
    iget v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 306
    const/16 v4, 0xd

    .line 307
    const v5, 0x10a000b

    .line 305
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 308
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 309
    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 312
    :cond_1
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 314
    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 317
    iget v4, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v5, 0x4

    .line 316
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 320
    const/4 v4, 0x7

    .line 319
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 321
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 322
    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 323
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_2
    :goto_1
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/4 v5, 0x6

    .line 329
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 332
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 334
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v4, :cond_16

    .line 335
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    const/4 v5, 0x5

    .line 334
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 337
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 339
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_3

    .line 341
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 343
    :cond_3
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 344
    const/16 v5, 0x11

    const/4 v6, -0x1

    .line 343
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 344
    const/4 v6, 0x0

    .line 343
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 345
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 348
    :cond_4
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 349
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    .line 350
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 352
    :cond_5
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 353
    const/16 v5, 0x10

    .line 352
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 354
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 357
    :cond_6
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 358
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    .line 359
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 361
    :cond_7
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 362
    const/16 v5, 0x13

    const/4 v6, -0x1

    .line 361
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 362
    const/4 v6, 0x0

    .line 361
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 363
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 366
    :cond_8
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 367
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    .line 368
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 370
    :cond_9
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 371
    const/16 v5, 0x12

    .line 370
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 372
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 375
    :cond_a
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 376
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    .line 377
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 379
    :cond_b
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 380
    const/16 v5, 0x15

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x0

    .line 379
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 381
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 384
    :cond_c
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 385
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    .line 386
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 388
    :cond_d
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 389
    const/16 v5, 0x14

    .line 388
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 390
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 393
    :cond_e
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 394
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    .line 395
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 397
    :cond_f
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 398
    const/16 v5, 0x17

    const/4 v6, -0x1

    .line 397
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 398
    const/4 v6, 0x0

    .line 397
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 399
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 402
    :cond_10
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 403
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    .line 404
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 406
    :cond_11
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 407
    const/16 v5, 0x16

    .line 406
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 408
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 411
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 414
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 417
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_13

    .line 418
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    .line 272
    :cond_13
    return-void

    .line 291
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 325
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 334
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_2
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    .line 748
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    .line 749
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 750
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 751
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 757
    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 758
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 763
    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 747
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    .line 864
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    .line 865
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 864
    if-eqz v1, :cond_3

    .line 866
    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 867
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 868
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 871
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 872
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 877
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 878
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 863
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    .line 889
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    .line 890
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 889
    if-eqz v1, :cond_3

    .line 891
    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 892
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 893
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 896
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 897
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 902
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 888
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 854
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 855
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 851
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    .line 914
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    .line 915
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 914
    if-eqz v1, :cond_3

    .line 916
    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 917
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 918
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 921
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 922
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 927
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 913
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 1313
    :try_start_0
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v4, :cond_1

    int-to-float v4, p2

    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 1314
    .local v2, "scale":F
    :goto_0
    const v4, 0x102000d

    if-ne p1, v4, :cond_2

    .line 1316
    .local v1, "isPrimary":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 1317
    iget-object v3, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1318
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1319
    const-wide/16 v4, 0x50

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1320
    sget-object v3, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1321
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1326
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 1327
    invoke-virtual {p0, v2, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1312
    return-void

    .line 1313
    .end local v1    # "isPrimary":Z
    .end local v2    # "scale":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "scale":F
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1314
    goto :goto_1

    .line 1323
    .restart local v1    # "isPrimary":Z
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "isPrimary":Z
    .end local v2    # "scale":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    .line 1188
    const/4 v1, 0x0

    .line 1190
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1191
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1192
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1194
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1195
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1198
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1199
    move-object v1, v0

    .line 1203
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 568
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 569
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 570
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 571
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 572
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 573
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 574
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 575
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 576
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 577
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 578
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 567
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 430
    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 431
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 432
    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 433
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 434
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    return v6

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    return v5

    .line 441
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v4, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_5

    move-object v2, p0

    .line 442
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 443
    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 444
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 445
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    return v6

    .line 444
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_4
    return v5

    .line 454
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    .line 455
    return v6

    .line 458
    :cond_6
    return v5
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    .prologue
    monitor-enter p0

    .line 1381
    :try_start_0
    iget-wide v0, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1382
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1380
    return-void

    .line 1384
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_2

    .line 1385
    new-instance v0, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 1388
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v6

    .line 1389
    .local v6, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v6    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1986
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1987
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    .line 1991
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1985
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setVisualProgress(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .prologue
    .line 1344
    iput p2, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    .line 1346
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1348
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1349
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1350
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1355
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1359
    :cond_0
    if-eqz v0, :cond_1

    .line 1360
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 1361
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1366
    .end local v1    # "level":I
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 1343
    return-void

    .line 1363
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 619
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 621
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 625
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 626
    iget-object v3, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v1

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 617
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 626
    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 469
    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_4

    move-object v7, p1

    .line 470
    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    .line 471
    .local v7, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 472
    .local v0, "N":I
    new-array v9, v0, [Landroid/graphics/drawable/Drawable;

    .line 474
    .local v9, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 475
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 476
    .local v5, "id":I
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 477
    const v10, 0x102000d

    if-eq v5, v10, :cond_0

    const v10, 0x102000f

    if-ne v5, v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 476
    :goto_1
    invoke-direct {p0, v11, v10}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v9, v4

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 480
    .end local v5    # "id":I
    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 481
    .local v2, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    .line 482
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 483
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 484
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 485
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 486
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 487
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 488
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 489
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 490
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 491
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 494
    :cond_3
    return-object v2

    .line 497
    .end local v0    # "N":I
    .end local v2    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "i":I
    .end local v7    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v9    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v10, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v10, :cond_6

    move-object v6, p1

    .line 498
    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    .line 499
    .local v6, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 500
    .local v8, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 501
    .restart local v0    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v0, :cond_5

    .line 502
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v10

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {p0, v11, p2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 501
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 505
    :cond_5
    return-object v8

    .line 508
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v8    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_9

    .line 509
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 510
    .local v3, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 511
    .local v1, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 513
    iget v10, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    if-gtz v10, :cond_7

    .line 514
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 517
    :cond_7
    if-eqz p2, :cond_8

    .line 518
    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v10, v1, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v10

    .line 520
    :cond_8
    return-object v1

    .line 524
    .end local v1    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_9
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 538
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 539
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 540
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 541
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 542
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 544
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 545
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 546
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 547
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 550
    move-object p1, v4

    .line 552
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1705
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1706
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1708
    move/from16 v8, p1

    .line 1709
    .local v8, "right":I
    move/from16 v1, p2

    .line 1710
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1711
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1713
    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1715
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v12, :cond_4

    .line 1736
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 1737
    move v9, v7

    .line 1738
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1739
    sub-int v8, p1, v9

    .line 1741
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1744
    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1745
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1702
    :cond_3
    return-void

    .line 1718
    :cond_4
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1719
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1720
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1721
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1722
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 1723
    cmpl-float v12, v2, v4

    if-lez v12, :cond_5

    .line 1725
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1726
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1727
    add-int v8, v7, v11

    goto :goto_0

    .line 1730
    .end local v11    # "width":I
    :cond_5
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1731
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1732
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 5

    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    .line 1825
    .local v3, "state":[I
    const/4 v0, 0x0

    .line 1827
    .local v0, "changed":Z
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1828
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1829
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 1832
    .end local v0    # "changed":Z
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1833
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1834
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1837
    :cond_1
    if-eqz v0, :cond_2

    .line 1838
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1823
    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1760
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1761
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1766
    .local v1, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    .line 1767
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1768
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1773
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 1774
    .local v4, "time":J
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 1775
    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1776
    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1778
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1779
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1783
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 1786
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1787
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1789
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 1790
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1791
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1759
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1770
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1780
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    .line 1781
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1780
    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1844
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1846
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1850
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1851
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1843
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1819
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1820
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1818
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1997
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1999
    const-string/jumbo v0, "progress:max"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2000
    const-string/jumbo v0, "progress:progress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2001
    const-string/jumbo v0, "progress:secondaryProgress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2002
    const-string/jumbo v0, "progress:indeterminate"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1996
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1955
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    const/16 v1, 0x8

    new-array v0, v1, [F

    .local v0, "roundedCorners":[F
    fill-array-data v0, :array_0

    .line 529
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 528
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 709
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 744
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1528
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1497
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1058
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1092
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 976
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1013
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 1514
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1137
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1175
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 1564
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1563
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 1575
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1574
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1683
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 1684
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1685
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1686
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 1687
    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 1689
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    .line 1690
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    .line 1689
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 1682
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 588
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1240
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1241
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1242
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1239
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1917
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1918
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 1921
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1922
    monitor-enter p0

    .line 1923
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1924
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 1925
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar$RefreshData;

    .line 1926
    .local v8, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v1, v8, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v2, v8, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v3, v8, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v5, v8, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1927
    invoke-virtual {v8}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1924
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1929
    .end local v8    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1932
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_2
    iput-boolean v9, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1916
    return-void

    .line 1922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1937
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1938
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1940
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1941
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1942
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    .line 1944
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1945
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1949
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1950
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1936
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 1751
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1753
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1750
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1961
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1962
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1963
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1960
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1969
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1971
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1973
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 1972
    invoke-static {v4, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 1974
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1968
    .end local v0    # "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    .line 1798
    const/4 v2, 0x0

    .line 1799
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1801
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1802
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1803
    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1804
    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1807
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1809
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1810
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1812
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1813
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1814
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1797
    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 1331
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1251
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1254
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1257
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1258
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1249
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1908
    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 1909
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1911
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1912
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1907
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1897
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1898
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1900
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1901
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1903
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1699
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1698
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1661
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1663
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_1

    .line 1664
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    .line 1666
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1668
    if-eqz p1, :cond_2

    .line 1669
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 1675
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1660
    :cond_1
    return-void

    .line 1671
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    goto :goto_0
.end method

.method onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .prologue
    .line 1375
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1265
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1263
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 603
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 602
    return-void

    .line 603
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_0

    .line 604
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 606
    if-eqz p1, :cond_2

    .line 608
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 611
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 653
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 655
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    if-eqz p1, :cond_2

    .line 661
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 662
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 663
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 666
    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 669
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 670
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 651
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 782
    if-eqz p1, :cond_0

    .line 783
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 786
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 693
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 697
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 699
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 692
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 728
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 730
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 723
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1637
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1636
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1647
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1646
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1542
    if-gez p1, :cond_0

    .line 1543
    const/4 p1, 0x0

    .line 1545
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1546
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1547
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1549
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1550
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1552
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 1541
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1414
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1413
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    .line 1428
    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1038
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1041
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1042
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1044
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1045
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1037
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1076
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1077
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1079
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1080
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1072
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 810
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 811
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 813
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 818
    if-eqz p1, :cond_3

    .line 819
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 820
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 821
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 826
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    .line 827
    .local v6, "drawableHeight":I
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v0, v6, :cond_2

    .line 828
    iput v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 829
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 832
    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 835
    .end local v6    # "drawableHeight":I
    :cond_3
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_4

    .line 836
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 840
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 841
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 843
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 844
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 809
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1218
    if-eqz p1, :cond_0

    .line 1219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1222
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1434
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 1436
    return v2

    .line 1439
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1441
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    .line 1443
    return v2

    .line 1446
    :cond_1
    :try_start_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1447
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1448
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 956
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 959
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 960
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 962
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 955
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 994
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 995
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 997
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 998
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 990
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 4
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1465
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 1466
    return-void

    .line 1469
    :cond_0
    if-gez p1, :cond_1

    .line 1470
    const/4 p1, 0x0

    .line 1473
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    .line 1474
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1477
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    .line 1478
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 1479
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 1464
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    .line 1116
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1119
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1120
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1122
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1123
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1115
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 1153
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1156
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1157
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1159
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1160
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1152
    :cond_1
    return-void
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1582
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    :cond_0
    return-void

    .line 1586
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    .line 1587
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1588
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1614
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1581
    return-void

    .line 1590
    :cond_2
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1592
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 1593
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1596
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_4

    .line 1597
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1602
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_5

    .line 1603
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1608
    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1609
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1610
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1611
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1612
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_0

    .line 1599
    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_1

    .line 1605
    :cond_5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_2
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1621
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1622
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1624
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1626
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1620
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1235
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
