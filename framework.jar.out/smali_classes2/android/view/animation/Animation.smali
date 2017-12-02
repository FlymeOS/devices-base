.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 111
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 117
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 123
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 130
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 136
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 141
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 163
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 168
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 175
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 206
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 208
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 209
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 211
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 213
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 214
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 216
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 228
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 111
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 117
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 123
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 130
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 136
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 141
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 146
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 163
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 168
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 175
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 201
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 206
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 208
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 209
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 211
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 212
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 213
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 214
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 216
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 239
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 242
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 244
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 245
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 246
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 248
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 249
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 251
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 253
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 255
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 257
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 259
    .local v1, "resID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    if-lez v1, :cond_0

    .line 262
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 238
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationRepeat()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationStart()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isCanceled()Z
    .locals 4

    .prologue
    .line 913
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 984
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 313
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 305
    return-void

    .line 307
    :cond_1
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 309
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 271
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 272
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 273
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 274
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 275
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .prologue
    .line 828
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 322
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 323
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    goto :goto_0
.end method

.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 815
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1065
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1063
    return-void

    .line 1068
    :catchall_0
    move-exception v0

    .line 1069
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1068
    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 690
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 1024
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1025
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1027
    .local v0, "previousRegion":Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1028
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1030
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1031
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1032
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1034
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1036
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1037
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1039
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1040
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1041
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1022
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 700
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 15
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 842
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_0

    .line 843
    move-wide/from16 v0, p1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v8

    .line 847
    .local v8, "startOffset":J
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 849
    .local v2, "duration":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-eqz v7, :cond_a

    .line 850
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v10, v8

    sub-long v10, p1, v10

    long-to-float v7, v10

    .line 851
    long-to-float v10, v2

    .line 850
    div-float v6, v7, v10

    .line 857
    .local v6, "normalizedTime":F
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-gez v7, :cond_c

    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v4

    .line 858
    .local v4, "expired":Z
    :goto_1
    if-eqz v4, :cond_d

    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 860
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 862
    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-gez v7, :cond_2

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_7

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_7

    .line 863
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_4

    .line 864
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 865
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 866
    sget-boolean v7, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v7, :cond_4

    .line 867
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v10, "cancel or detach or getTransformation"

    invoke-virtual {v7, v10}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 871
    :cond_4
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 873
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_6

    .line 874
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    .line 877
    :cond_6
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 878
    .local v5, "interpolatedTime":F
    move-object/from16 v0, p3

    invoke-virtual {p0, v5, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 881
    .end local v5    # "interpolatedTime":F
    :cond_7
    if-eqz v4, :cond_9

    .line 882
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v10, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq v7, v10, :cond_8

    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 883
    :cond_8
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_9

    .line 884
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 885
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    .line 886
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 904
    :cond_9
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_12

    .line 905
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 906
    const/4 v7, 0x1

    return v7

    .line 854
    .end local v4    # "expired":Z
    .end local v6    # "normalizedTime":F
    :cond_a
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v10

    if-gez v7, :cond_b

    const/4 v6, 0x0

    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    .end local v6    # "normalizedTime":F
    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    .line 857
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 858
    .restart local v4    # "expired":Z
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 889
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_f

    .line 890
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 893
    :cond_f
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_10

    .line 894
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 897
    :cond_10
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 898
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 900
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_3

    .line 894
    :cond_11
    const/4 v7, 0x1

    goto :goto_4

    .line 909
    :cond_12
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    return v7
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .prologue
    .line 951
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 952
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 352
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 1053
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1054
    .local v1, "region":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1056
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1057
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1059
    .local v0, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1052
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 285
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 286
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 287
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 288
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 289
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 290
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 283
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .prologue
    .line 999
    packed-switch p1, :pswitch_data_0

    .line 1007
    return p2

    .line 1001
    :pswitch_0
    return p2

    .line 1003
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr v0, p2

    return v0

    .line 1005
    :pswitch_2
    int-to-float v0, p4

    mul-float/2addr v0, p2

    return v0

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 11
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 452
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 453
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 454
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 455
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 456
    return-void

    .line 459
    :cond_0
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 460
    .local v0, "dur":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 461
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 462
    move-wide v0, p1

    .line 465
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    .line 466
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 467
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 468
    return-void

    .line 473
    :cond_2
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_3

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_5

    .line 477
    :cond_3
    :goto_0
    div-long v2, p1, v0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 478
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_4

    .line 479
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 450
    :cond_4
    return-void

    .line 474
    :cond_5
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_4

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 490
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 491
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 489
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 808
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 807
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I

    .prologue
    .line 633
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    .line 632
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 658
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 435
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 434
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 611
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 595
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 577
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 398
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 397
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 409
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 408
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 363
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 371
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 386
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 362
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 550
    if-gez p1, :cond_0

    .line 551
    const/4 p1, -0x1

    .line 553
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 549
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 537
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 536
    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    .prologue
    .line 422
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 421
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 506
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 507
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 508
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 504
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    .prologue
    .line 623
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 622
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 517
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 516
    return-void
.end method

.method public startNow()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 524
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x1

    return v0
.end method
