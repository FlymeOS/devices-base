.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;,
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field private mWindowInsetLeft:I

.field private mWindowInsetTop:I

.field mWindowSpaceHeight:I

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowSpaceWidth:I

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 103
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 104
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 105
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 125
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 128
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 130
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 147
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 156
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 155
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 168
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 170
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 174
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 702
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 875
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 211
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 208
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 792
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 794
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 796
    return-object v0

    .line 792
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 356
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 358
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 353
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 342
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 344
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 341
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v4, 0x0

    .line 315
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 316
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 319
    :cond_0
    const/4 v7, 0x1

    .line 320
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 322
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 334
    .end local v7    # "opaque":Z
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const/4 v7, 0x0

    .line 337
    :cond_2
    return v7

    .line 323
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    .line 324
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 325
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 326
    .local v6, "h":I
    if-lez v8, :cond_1

    if-lez v6, :cond_1

    .line 327
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 329
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v4

    .line 330
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 331
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 799
    return-void
.end method

.method public isFixedSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 811
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 227
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 228
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 229
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 230
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SurfaceView - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 234
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 236
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 237
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 238
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 225
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 270
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 272
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 273
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 277
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 278
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 279
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 280
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v2, :cond_1

    .line 282
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    iput-object v4, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 288
    :cond_1
    iput-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 289
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 291
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 269
    return-void

    .line 283
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    .line 297
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 299
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 300
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 302
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 295
    return-void

    .line 298
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 301
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 245
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 246
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 247
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 245
    goto :goto_0

    :cond_1
    move v0, v1

    .line 246
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 309
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 310
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 417
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 254
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 255
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 264
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 265
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 251
    return-void

    :cond_1
    move v1, v2

    .line 253
    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    .local v0, "newRequestedVisible":Z
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 431
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 430
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 377
    const/16 v0, 0x3ec

    .line 376
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 375
    return-void

    .line 378
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 398
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 394
    :goto_0
    return-void

    .line 400
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 401
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 42
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v4, :cond_0

    .line 437
    return-void

    .line 439
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v39

    .line 440
    .local v39, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v39, :cond_1

    .line 441
    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 444
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v30, v0

    .line 449
    .local v30, "myWidth":I
    if-gtz v30, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v30

    .line 450
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v29, v0

    .line 451
    .local v29, "myHeight":I
    if-gtz v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v29

    .line 453
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_d

    const/16 v24, 0x1

    .line 454
    .local v24, "creating":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v4, v5, :cond_e

    const/16 v27, 0x1

    .line 455
    .local v27, "formatChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    move/from16 v0, v30

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    move/from16 v0, v29

    if-eq v4, v0, :cond_f

    :cond_5
    const/16 v35, 0x1

    .line 456
    .local v35, "sizeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v4, v5, :cond_10

    const/16 v41, 0x1

    .line 457
    .local v41, "visibleChanged":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v5, :cond_11

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v5, :cond_12

    const/16 v28, 0x1

    .line 460
    .local v28, "layoutSizeChanged":Z
    :goto_4
    if-nez p1, :cond_6

    if-nez v24, :cond_6

    if-nez v27, :cond_6

    if-nez v35, :cond_6

    if-nez v41, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 460
    if-nez v4, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 460
    if-nez v4, :cond_6

    if-eqz p2, :cond_29

    .line 462
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 472
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 473
    .local v40, "visible":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 475
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 476
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 477
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 483
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 490
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x4218

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 498
    if-nez v24, :cond_8

    if-eqz p1, :cond_13

    .line 502
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x2001

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 506
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 510
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v6, 0x10040

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_a

    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v25

    .line 515
    .local v25, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 519
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v8, :cond_15

    const/4 v8, 0x0

    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 520
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 518
    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 528
    .end local v25    # "display":Landroid/view/Display;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v34, v0

    .line 532
    .local v34, "reportDrawNeeded":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 533
    if-eqz v40, :cond_16

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 540
    if-eqz v40, :cond_17

    const/4 v10, 0x0

    .line 542
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 543
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move-object/from16 v20, v0

    .line 541
    const/4 v11, 0x2

    .line 538
    invoke-interface/range {v4 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v33

    .line 545
    .local v33, "relayoutResult":I
    and-int/lit8 v4, v33, 0x2

    if-eqz v4, :cond_b

    .line 546
    const/16 v34, 0x1

    .line 553
    .end local v34    # "reportDrawNeeded":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_18

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 564
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    .line 565
    .local v38, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    .line 566
    .local v37, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v38

    if-ne v4, v0, :cond_19

    .line 567
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v37

    if-eq v4, v0, :cond_1a

    const/16 v32, 0x1

    .line 568
    .local v32, "realSizeChanged":Z
    :goto_a
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 569
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 575
    or-int v4, v24, v34

    or-int p2, p2, v4

    .line 577
    const/16 v23, 0x0

    .line 579
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v4, v33, 0x4

    if-eqz v4, :cond_1b

    const/16 v36, 0x1

    .line 581
    .local v36, "surfaceChanged":Z
    :goto_b
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v4, :cond_1d

    if-nez v36, :cond_c

    if-nez v40, :cond_1d

    if-eqz v41, :cond_1d

    .line 582
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 586
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v23

    .line 587
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_c
    if-ge v4, v5, :cond_1c

    aget-object v22, v23, v4

    .line 588
    .local v22, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 587
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 453
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "creating":Z
    .end local v27    # "formatChanged":Z
    .end local v28    # "layoutSizeChanged":Z
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v35    # "sizeChanged":Z
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    .end local v41    # "visibleChanged":Z
    :cond_d
    const/16 v24, 0x0

    .restart local v24    # "creating":Z
    goto/16 :goto_0

    .line 454
    :cond_e
    const/16 v27, 0x0

    .restart local v27    # "formatChanged":Z
    goto/16 :goto_1

    .line 455
    :cond_f
    const/16 v35, 0x0

    .restart local v35    # "sizeChanged":Z
    goto/16 :goto_2

    .line 456
    :cond_10
    const/16 v41, 0x0

    .restart local v41    # "visibleChanged":Z
    goto/16 :goto_3

    .line 457
    :cond_11
    const/16 v28, 0x1

    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    .line 458
    .end local v28    # "layoutSizeChanged":Z
    :cond_12
    const/16 v28, 0x0

    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    .line 498
    .restart local v40    # "visible":Z
    :cond_13
    if-nez v35, :cond_8

    .line 499
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 656
    .end local v40    # "visible":Z
    :catch_0
    move-exception v26

    .line 657
    .local v26, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    const-string/jumbo v5, "Exception from relayout"

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v26    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_d
    return-void

    .line 519
    .restart local v25    # "display":Landroid/view/Display;
    .restart local v40    # "visible":Z
    :cond_15
    const/16 v8, 0x8

    goto/16 :goto_6

    .line 533
    .end local v25    # "display":Landroid/view/Display;
    .restart local v34    # "reportDrawNeeded":Z
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 540
    :cond_17
    const/16 v10, 0x8

    goto/16 :goto_8

    .line 559
    .end local v34    # "reportDrawNeeded":Z
    .restart local v33    # "relayoutResult":I
    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v21, v0

    .line 560
    .local v21, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v21

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v21

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_9

    .line 570
    .end local v21    # "appInvertedScale":F
    .end local v33    # "relayoutResult":I
    :catchall_0
    move-exception v4

    .line 571
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 570
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 566
    .restart local v33    # "relayoutResult":I
    .restart local v37    # "surfaceHeight":I
    .restart local v38    # "surfaceWidth":I
    :cond_19
    const/16 v32, 0x1

    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    .line 567
    .end local v32    # "realSizeChanged":Z
    :cond_1a
    const/16 v32, 0x0

    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    .line 579
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/16 v36, 0x0

    .restart local v36    # "surfaceChanged":Z
    goto/16 :goto_b

    .line 601
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 607
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 608
    if-eqz v40, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 609
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v4, :cond_20

    if-nez v36, :cond_1e

    if-eqz v41, :cond_20

    .line 610
    :cond_1e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 611
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 614
    if-nez v23, :cond_1f

    .line 615
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v23

    .line 617
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_e
    if-ge v4, v5, :cond_20

    aget-object v22, v23, v4

    .line 618
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 621
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_20
    if-nez v24, :cond_21

    if-nez v27, :cond_21

    if-nez v35, :cond_21

    if-nez v41, :cond_21

    if-eqz v32, :cond_23

    .line 626
    :cond_21
    if-nez v23, :cond_22

    .line 627
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v23

    .line 629
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_f
    if-ge v4, v5, :cond_23

    aget-object v22, v23, v4

    .line 630
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-interface {v0, v6, v7, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 629
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 633
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_23
    if-eqz p2, :cond_26

    .line 636
    if-nez v23, :cond_24

    .line 637
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v23

    .line 639
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, v23

    array-length v5, v0

    :goto_10
    if-ge v4, v5, :cond_26

    aget-object v22, v23, v4

    .line 640
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    instance-of v6, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_25

    .line 641
    check-cast v22, Landroid/view/SurfaceHolder$Callback2;

    .line 642
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 641
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 639
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 648
    :cond_26
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 649
    if-eqz p2, :cond_27

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 654
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    goto/16 :goto_d

    .line 647
    :catchall_1
    move-exception v4

    .line 648
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 649
    if-eqz p2, :cond_28

    .line 652
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 654
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 647
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 666
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 667
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v4, v5, :cond_2d

    .line 668
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_2e

    const/16 v31, 0x1

    .line 669
    .local v31, "positionChanged":Z
    :goto_11
    if-nez v31, :cond_2a

    if-eqz v28, :cond_14

    .line 670
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 680
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 679
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2b

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 686
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v4, :cond_14

    .line 692
    :cond_2c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 693
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 692
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_d

    .line 694
    :catch_1
    move-exception v26

    .line 695
    .restart local v26    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    const-string/jumbo v5, "Exception from relayout"

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 667
    .end local v26    # "ex":Landroid/os/RemoteException;
    .end local v31    # "positionChanged":Z
    :cond_2d
    const/16 v31, 0x1

    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11

    .line 668
    .end local v31    # "positionChanged":Z
    :cond_2e
    const/16 v31, 0x0

    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11
.end method

.method public final updateWindowPosition_renderWorker(JIIII)V
    .locals 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 710
    iget-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 711
    .local v4, "session":Landroid/view/IWindowSession;
    iget-object v5, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 712
    .local v5, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 714
    :cond_0
    return-void

    .line 724
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 725
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    .line 726
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    if-ne v6, v0, :cond_2

    .line 727
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move/from16 v0, p5

    if-ne v6, v0, :cond_2

    .line 728
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p6

    if-ne v6, v0, :cond_2

    .line 729
    return-void

    .line 740
    :cond_2
    :try_start_0
    iget-object v12, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p1

    .line 738
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    .line 742
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v13

    .line 744
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SurfaceView"

    const-string/jumbo v7, "Exception from repositionChild"

    invoke-static {v6, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final windowPositionLost_uiRtSync(J)V
    .locals 11
    .param p1, "frameNumber"    # J

    .prologue
    .line 758
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 759
    .local v0, "session":Landroid/view/IWindowSession;
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 760
    .local v1, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 762
    :cond_0
    return-void

    .line 764
    :cond_1
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v2, :cond_3

    .line 765
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 770
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 771
    iget-object v5, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    .line 772
    iget-object v6, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v6, v7

    .line 770
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 774
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 786
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 753
    :cond_3
    return-void

    .line 780
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 781
    iget-object v4, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-wide v6, p1

    .line 780
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v9

    .line 783
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception from relayout"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
