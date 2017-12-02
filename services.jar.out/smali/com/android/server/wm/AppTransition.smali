.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mProlongedAnimationsEnded:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AppTransition;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/AppTransition;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 95
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 148
    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 152
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 151
    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 166
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 179
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 198
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 215
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 224
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 228
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 229
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 232
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 241
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 244
    const v0, 0x10c000e

    .line 243
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    const v0, 0x10c000f

    .line 245
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 248
    const v0, 0x10c000d

    .line 247
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    const/high16 v1, 0x10e0000

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 252
    const v0, 0x10c0003

    .line 251
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 265
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 276
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 278
    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 240
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1847
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1849
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    return-object v0

    .line 1851
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    return-object v0

    .line 1853
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1855
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 1794
    packed-switch p0, :pswitch_data_0

    .line 1841
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 1796
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    return-object v0

    .line 1799
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    return-object v0

    .line 1802
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1805
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1808
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1811
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1814
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1817
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1820
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1823
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 1826
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1829
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1832
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 1835
    :pswitch_e
    const-string/jumbo v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 1838
    :pswitch_f
    const-string/jumbo v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 1794
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 4
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    const-wide/16 v2, 0x150

    return-wide v2

    .line 733
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 734
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 733
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 736
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    .line 735
    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 603
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 604
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 605
    int-to-float v1, p0

    return v1

    .line 607
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1207
    const/4 v1, 0x1

    .line 1206
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1214
    const/4 v1, 0x0

    .line 1213
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 31
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .prologue
    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 1220
    .local v27, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v25, v0

    .line 1221
    .local v25, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v20, v0

    .line 1222
    .local v20, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    .line 1223
    .local v18, "destHeight":F
    if-eqz p4, :cond_1

    div-float v3, v27, v20

    .line 1224
    .local v3, "scaleH":F
    :goto_0
    if-eqz p4, :cond_2

    div-float v5, v25, v18

    .line 1225
    .local v5, "scaleV":F
    :goto_1
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1226
    .local v23, "set":Landroid/view/animation/AnimationSet;
    if-nez p3, :cond_3

    .line 1227
    const/16 v28, 0x0

    .line 1228
    .local v28, "surfaceInsetsH":I
    :goto_2
    if-nez p3, :cond_4

    .line 1229
    const/16 v29, 0x0

    .line 1232
    .local v29, "surfaceInsetsV":I
    :goto_3
    if-eqz p4, :cond_5

    .end local v20    # "destWidth":F
    :goto_4
    move/from16 v0, v28

    int-to-float v4, v0

    add-float v4, v4, v20

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    .line 1233
    .local v7, "scaleHCenter":F
    if-eqz p4, :cond_6

    .end local v18    # "destHeight":F
    :goto_5
    move/from16 v0, v29

    int-to-float v4, v0

    add-float v4, v4, v18

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v4, v6

    .line 1234
    .local v8, "scaleVCenter":F
    if-eqz p4, :cond_7

    .line 1235
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1237
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v24, v4, v6

    .line 1238
    .local v24, "sourceHCenter":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v26, v4, v6

    .line 1239
    .local v26, "sourceVCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v17, v4, v6

    .line 1240
    .local v17, "destHCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v19, v4, v6

    .line 1241
    .local v19, "destVCenter":I
    if-eqz p4, :cond_8

    sub-int v21, v24, v17

    .line 1242
    .local v21, "fromX":I
    :goto_7
    if-eqz p4, :cond_9

    sub-int v22, v26, v19

    .line 1243
    .local v22, "fromY":I
    :goto_8
    if-eqz p4, :cond_a

    new-instance v30, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v21

    int-to-float v4, v0

    const/4 v6, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1245
    .local v30, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1246
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    move-object/from16 v16, v0

    .line 1249
    .local v16, "callback":Landroid/os/IRemoteCallback;
    if-eqz v16, :cond_0

    .line 1250
    new-instance v4, Lcom/android/server/wm/AppTransition$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1263
    :cond_0
    return-object v23

    .line 1223
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "scaleH":F
    .end local v5    # "scaleV":F
    .end local v7    # "scaleHCenter":F
    .end local v8    # "scaleVCenter":F
    .end local v16    # "callback":Landroid/os/IRemoteCallback;
    .end local v17    # "destHCenter":I
    .end local v19    # "destVCenter":I
    .end local v21    # "fromX":I
    .end local v22    # "fromY":I
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    .end local v24    # "sourceHCenter":I
    .end local v26    # "sourceVCenter":I
    .end local v28    # "surfaceInsetsH":I
    .end local v29    # "surfaceInsetsV":I
    .end local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    .restart local v18    # "destHeight":F
    .restart local v20    # "destWidth":F
    :cond_1
    div-float v3, v20, v27

    .restart local v3    # "scaleH":F
    goto/16 :goto_0

    .line 1224
    :cond_2
    div-float v5, v18, v25

    .restart local v5    # "scaleV":F
    goto/16 :goto_1

    .line 1227
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    :cond_3
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v28, v4, v6

    .restart local v28    # "surfaceInsetsH":I
    goto/16 :goto_2

    .line 1229
    :cond_4
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v29, v4, v6

    .restart local v29    # "surfaceInsetsV":I
    goto/16 :goto_3

    :cond_5
    move/from16 v20, v27

    .line 1232
    goto/16 :goto_4

    .end local v20    # "destWidth":F
    .restart local v7    # "scaleHCenter":F
    :cond_6
    move/from16 v18, v25

    .line 1233
    goto/16 :goto_5

    .line 1236
    .end local v18    # "destHeight":F
    .restart local v8    # "scaleVCenter":F
    :cond_7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v9, v2

    move v11, v3

    move v13, v5

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_6

    .line 1241
    .restart local v17    # "destHCenter":I
    .restart local v19    # "destVCenter":I
    .restart local v24    # "sourceHCenter":I
    .restart local v26    # "sourceVCenter":I
    :cond_8
    sub-int v21, v17, v24

    .restart local v21    # "fromX":I
    goto :goto_7

    .line 1242
    :cond_9
    sub-int v22, v19, v26

    .restart local v22    # "fromY":I
    goto :goto_8

    .line 1244
    :cond_a
    new-instance v30, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v6, v0

    const/4 v9, 0x0

    move/from16 v0, v22

    int-to-float v10, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    goto :goto_9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 31
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 742
    if-eqz p2, :cond_6

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 744
    .local v16, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 748
    .local v8, "appHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 750
    const/16 v27, 0x0

    .line 751
    .local v27, "t":F
    if-lez v8, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v27, v6, v7

    .line 754
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v27

    float-to-int v7, v7

    add-int v30, v6, v7

    .line 755
    .local v30, "translationY":I
    const/16 v29, 0x0

    .line 756
    .local v29, "translationX":I
    move/from16 v9, v30

    .line 757
    .local v9, "translationYCorrection":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 758
    .local v17, "centerX":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 759
    .local v18, "centerY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v25, v6, 0x2

    .line 760
    .local v25, "halfWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v24, v6, 0x2

    .line 761
    .local v24, "halfHeight":I
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v6, v7

    .line 762
    .local v20, "clipStartX":I
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v7

    .line 763
    .local v5, "clipStartY":I
    const/16 v21, 0x0

    .line 768
    .local v21, "cutOff":Z
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v18, v24

    if-le v6, v7, :cond_1

    .line 769
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v30, v6, v7

    .line 770
    const/4 v9, 0x0

    .line 771
    const/4 v5, 0x0

    .line 772
    const/16 v21, 0x1

    .line 774
    :cond_1
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v17, v25

    if-le v6, v7, :cond_2

    .line 775
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v29, v6, v7

    .line 776
    const/16 v20, 0x0

    .line 777
    const/16 v21, 0x1

    .line 779
    :cond_2
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v17, v25

    if-ge v6, v7, :cond_3

    .line 780
    add-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v29, v6, v7

    .line 781
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v20, v16, v6

    .line 782
    const/16 v21, 0x1

    .line 784
    :cond_3
    move/from16 v0, v29

    int-to-float v6, v0

    .line 785
    move/from16 v0, v30

    int-to-float v7, v0

    .line 784
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v22

    .line 788
    .local v22, "duration":J
    new-instance v19, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    .line 789
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v6, v6, v20

    const/4 v7, 0x0

    .line 788
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 790
    .local v19, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 791
    move-wide/from16 v0, v22

    long-to-float v6, v0

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    float-to-long v6, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 793
    new-instance v28, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v29

    int-to-float v6, v0

    const/4 v7, 0x0

    move/from16 v0, v30

    int-to-float v10, v0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v7, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 794
    .local v28, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v21, :cond_4

    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 798
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    .line 799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v5

    .line 802
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 800
    const/4 v7, 0x0

    .line 801
    const/4 v10, 0x0

    .line 798
    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 803
    .local v4, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 804
    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 807
    const-wide/16 v6, 0x4

    div-long v14, v22, v6

    .line 808
    .local v14, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v12, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 809
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 810
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 812
    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 813
    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 814
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 815
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 816
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 817
    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 818
    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 819
    move-object/from16 v13, v26

    .line 820
    .local v13, "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 821
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 825
    if-eqz v21, :cond_5

    .line 826
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 825
    :goto_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 854
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :goto_2
    return-object v13

    .line 795
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v5    # "clipStartY":I
    .restart local v8    # "appHeight":I
    .restart local v9    # "translationYCorrection":I
    .restart local v16    # "appWidth":I
    .restart local v17    # "centerX":I
    .restart local v18    # "centerY":I
    .restart local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .restart local v20    # "clipStartX":I
    .restart local v21    # "cutOff":Z
    .restart local v24    # "halfHeight":I
    .restart local v25    # "halfWidth":I
    .restart local v27    # "t":F
    .restart local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v29    # "translationX":I
    .restart local v30    # "translationY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_0

    .line 826
    .restart local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .restart local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v14    # "alphaDuration":J
    .restart local v26    # "set":Landroid/view/animation/AnimationSet;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 829
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v22    # "duration":J
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 835
    const-wide/16 v22, 0x150

    .line 838
    .restart local v22    # "duration":J
    :goto_3
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_7

    .line 839
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_8

    .line 844
    :cond_7
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 845
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 850
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 851
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 852
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_2

    .line 832
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v22    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v6

    move-wide/from16 v22, v0

    .line 833
    .restart local v22    # "duration":J
    goto :goto_3

    .line 848
    :cond_8
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v13    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    .line 829
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 1034
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    .line 1035
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v1

    .line 1037
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1038
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 7
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    const v3, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    .line 1043
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1044
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1046
    cmpl-float v1, p3, p4

    if-lez v1, :cond_0

    .line 1048
    mul-float v1, v3, p3

    mul-float/2addr v2, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p2

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1053
    :goto_0
    return-object v0

    .line 1051
    :cond_0
    mul-float v1, v2, p3

    mul-float v2, v3, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    .line 1380
    .local v4, "left":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 1381
    .local v8, "top":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v12, v4

    neg-int v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1384
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1385
    .local v5, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1386
    .local v3, "fromWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    .line 1387
    .local v7, "toWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v2, v11

    .line 1391
    .local v2, "fromHeight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v6, v11

    .line 1392
    .local v6, "toHeight":F
    const/4 v10, 0x0

    .line 1393
    .local v10, "translateAdjustment":I
    cmpg-float v11, v3, v7

    if-gtz v11, :cond_0

    cmpg-float v11, v2, v6

    if-gtz v11, :cond_0

    .line 1397
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v11, v12, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1411
    :goto_0
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    .line 1412
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v13, v10

    int-to-float v13, v13

    const/4 v14, 0x0

    .line 1411
    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1413
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1414
    const-wide/16 v12, 0x150

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1415
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1416
    return-object v5

    .line 1401
    .end local v9    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    div-float v12, v3, v7

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v14, v2, v6

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1405
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    div-float/2addr v11, v6

    float-to-int v10, v11

    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 14
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 613
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 615
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 616
    .local v9, "appHeight":I
    if-eqz p2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v10

    div-float v1, v2, v4

    .line 619
    .local v1, "scaleW":F
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v9

    div-float v3, v2, v4

    .line 620
    .local v3, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 621
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v5

    .line 622
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 620
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 623
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 625
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 626
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 628
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 629
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 630
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 631
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 632
    move-object v7, v11

    .line 650
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v1    # "scaleW":F
    .end local v3    # "scaleH":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 656
    const-wide/16 v12, 0x150

    .line 659
    .local v12, "duration":J
    :goto_1
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 660
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 661
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 662
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 663
    return-object v7

    .line 633
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v12    # "duration":J
    :cond_0
    const/16 v2, 0xe

    if-eq p1, v2, :cond_1

    .line 634
    const/16 v2, 0xf

    if-ne p1, v2, :cond_2

    .line 639
    :cond_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 640
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 643
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 653
    :pswitch_0
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v12, v2

    .line 654
    .restart local v12    # "duration":J
    goto :goto_1

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1752
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_0

    .line 1753
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1754
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1756
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/AppTransition$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$4;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1751
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .prologue
    .line 1057
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1058
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1060
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 1065
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1068
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 460
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 464
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 465
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 466
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_0

    .line 467
    const-string/jumbo v0, "android"

    .line 471
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    .line 472
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 471
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 464
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v0, "android"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 474
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 480
    if-eqz p1, :cond_1

    .line 481
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 482
    const-string/jumbo p1, "android"

    .line 486
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    .line 487
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 486
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 489
    :cond_1
    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 669
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 666
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private isTvUiMode(I)Z
    .locals 2
    .param p1, "uiMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 1993
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 523
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 525
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 526
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 527
    move v0, p2

    .line 530
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 531
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 533
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method private prepare()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 370
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 371
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 372
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 373
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 374
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 692
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    .line 693
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 692
    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 691
    return-void
.end method

.method private setAppTransition(I)V
    .locals 2
    .param p1, "transit"    # I

    .prologue
    const/4 v1, 0x0

    .line 294
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 295
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 293
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1984
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1985
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 1984
    if-nez v1, :cond_0

    .line 1986
    if-ne p2, v0, :cond_1

    .line 1984
    :cond_0
    :goto_0
    return v0

    .line 1986
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1862
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1864
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    .line 1866
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1868
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1870
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1872
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1874
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1876
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1878
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1862
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1425
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v0, :cond_1

    .line 1426
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 1427
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1425
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1427
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1425
    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 410
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 411
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 413
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 414
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 415
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 416
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 409
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 33
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "freeform"    # Z
    .param p9, "taskId"    # I

    .prologue
    .line 1080
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 1081
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 1082
    .local v13, "appHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v28

    .line 1084
    .local v28, "thumbWidthI":I
    if-lez v28, :cond_0

    move/from16 v5, v28

    :goto_0
    int-to-float v0, v5

    move/from16 v27, v0

    .line 1085
    .local v27, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 1086
    .local v24, "thumbHeightI":I
    if-lez v24, :cond_1

    move/from16 v5, v24

    :goto_1
    int-to-float v0, v5

    move/from16 v23, v0

    .line 1087
    .local v23, "thumbHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v25, v5, v6

    .line 1088
    .local v25, "thumbStartX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v26, v5, v6

    .line 1090
    .local v26, "thumbStartY":I
    packed-switch p1, :pswitch_data_0

    .line 1196
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Invalid thumbnail transition state"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1084
    .end local v23    # "thumbHeight":F
    .end local v24    # "thumbHeightI":I
    .end local v25    # "thumbStartX":I
    .end local v26    # "thumbStartY":I
    .end local v27    # "thumbWidth":F
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 1086
    .restart local v24    # "thumbHeightI":I
    .restart local v27    # "thumbWidth":F
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 1093
    .restart local v23    # "thumbHeight":F
    .restart local v25    # "thumbStartX":I
    .restart local v26    # "thumbStartY":I
    :pswitch_0
    if-nez p1, :cond_2

    const/16 v17, 0x1

    .line 1094
    .local v17, "scaleUp":Z
    :goto_2
    if-eqz p8, :cond_3

    if-eqz v17, :cond_3

    .line 1095
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 1200
    .end local v17    # "scaleUp":Z
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    move-object/from16 v6, p0

    move v8, v14

    move v9, v13

    .line 1199
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v5

    return-object v5

    .line 1093
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v17, 0x0

    .restart local v17    # "scaleUp":Z
    goto :goto_2

    .line 1097
    :cond_3
    if-eqz p8, :cond_4

    .line 1098
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 1101
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1104
    .local v18, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1116
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1119
    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v14, v5

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1118
    div-float v16, v27, v5

    .line 1120
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v5, :cond_5

    .line 1121
    div-float v5, v23, v16

    float-to-int v0, v5

    move/from16 v30, v0

    .line 1122
    .local v30, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v30

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1125
    .end local v30    # "unscaledThumbHeight":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1127
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 1128
    if-eqz v17, :cond_6

    move/from16 v5, v16

    :goto_4
    if-eqz v17, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1129
    :goto_5
    if-eqz v17, :cond_8

    move/from16 v7, v16

    :goto_6
    if-eqz v17, :cond_9

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1130
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1131
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move-object/from16 v0, p6

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1127
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1132
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v21, v0

    .line 1133
    .local v21, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1134
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1133
    sub-float v31, v5, v6

    .line 1135
    .local v31, "x":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v22, v0

    .line 1136
    .local v22, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1137
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1136
    sub-float v32, v5, v6

    .line 1138
    .local v32, "y":F
    sub-float v19, v21, v31

    .line 1139
    .local v19, "startX":F
    sub-float v20, v22, v32

    .line 1140
    .local v20, "startY":F
    if-eqz v17, :cond_a

    .line 1141
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1143
    .local v15, "clipAnim":Landroid/view/animation/Animation;
    :goto_8
    if-eqz v17, :cond_b

    .line 1144
    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v20, v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1147
    .local v29, "translateAnim":Landroid/view/animation/Animation;
    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v31    # "x":F
    .end local v32    # "y":F
    :goto_a
    move-object/from16 v7, v18

    .line 1169
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_3

    .line 1128
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .restart local v16    # "scale":F
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_7
    move/from16 v6, v16

    goto/16 :goto_5

    .line 1129
    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_9
    move/from16 v8, v16

    goto/16 :goto_7

    .line 1142
    .restart local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .restart local v19    # "startX":F
    .restart local v20    # "startY":F
    .restart local v21    # "targetX":F
    .restart local v22    # "targetY":F
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_a
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_8

    .line 1145
    :cond_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v20, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_9

    .line 1153
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v24

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v28

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1156
    if-eqz v17, :cond_d

    .line 1157
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1159
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    :goto_b
    if-eqz v17, :cond_e

    .line 1160
    move/from16 v0, v25

    int-to-float v5, v0

    const/4 v6, 0x0

    .line 1161
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v26, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    .line 1160
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1165
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1166
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_a

    .line 1158
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :cond_d
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_b

    .line 1162
    :cond_e
    const/4 v5, 0x0

    move/from16 v0, v25

    int-to-float v6, v0

    const/4 v8, 0x0

    .line 1163
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v26, v9

    int-to-float v9, v9

    .line 1162
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_c

    .line 1175
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v17    # "scaleUp":Z
    .end local v18    # "set":Landroid/view/animation/AnimationSet;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_f

    .line 1178
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1180
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_f
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1186
    .end local v7    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_10

    .line 1189
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1191
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_10
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;
    .locals 36
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/Bitmap;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 921
    .local v32, "thumbWidthI":I
    if-lez v32, :cond_3

    move/from16 v7, v32

    :goto_0
    int-to-float v0, v7

    move/from16 v31, v0

    .line 922
    .local v31, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 923
    .local v30, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 925
    .local v22, "appWidth":I
    move/from16 v0, v22

    int-to-float v7, v0

    div-float v8, v7, v31

    .line 926
    .local v8, "scaleW":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 933
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 934
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 935
    .local v26, "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 939
    .local v27, "fromY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v8, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float v33, v7, v9

    .line 940
    .local v33, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v34, v7, v9

    .line 941
    .local v34, "toY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v11, v7

    .line 942
    .local v11, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-float v12, v7, v8

    .line 943
    .local v12, "pivotY":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v7, :cond_0

    .line 946
    move/from16 v0, v30

    int-to-float v7, v0

    sub-float v27, v27, v7

    .line 947
    move/from16 v0, v30

    int-to-float v7, v0

    mul-float/2addr v7, v8

    sub-float v34, v34, v7

    .line 957
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v24

    .line 958
    .local v24, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    .line 959
    .local v28, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_7

    .line 961
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 962
    .local v6, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 963
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 964
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 965
    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_5

    .line 966
    sget-object v7, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 965
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 967
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_6

    .line 968
    const-wide/16 v16, 0x2

    div-long v16, v24, v16

    .line 967
    :goto_3
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 970
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v27

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 971
    .local v35, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 972
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 974
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 975
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 980
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 981
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 983
    if-eqz p2, :cond_1

    .line 984
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 985
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 986
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    .line 987
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    float-to-int v14, v14

    .line 984
    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    .line 990
    :cond_1
    new-instance v23, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 991
    .local v23, "clipAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 992
    invoke-virtual/range {v23 .. v25}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 995
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 996
    .local v29, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 997
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_2

    .line 999
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1002
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    move-object/from16 v15, v29

    .line 1027
    .end local v23    # "clipAnim":Landroid/view/animation/Animation;
    .local v15, "a":Landroid/view/animation/Animation;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v17

    const-wide/16 v18, 0x0

    .line 1028
    const/16 v20, 0x0

    move-object/from16 v14, p0

    move/from16 v16, v22

    .line 1027
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 921
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v11    # "pivotX":F
    .end local v12    # "pivotY":F
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v22    # "appWidth":I
    .end local v24    # "duration":J
    .end local v26    # "fromX":F
    .end local v27    # "fromY":F
    .end local v28    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v29    # "set":Landroid/view/animation/AnimationSet;
    .end local v30    # "thumbHeightI":I
    .end local v31    # "thumbWidth":F
    .end local v33    # "toX":F
    .end local v34    # "toY":F
    .end local v35    # "translate":Landroid/view/animation/Animation;
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 950
    .restart local v8    # "scaleW":F
    .restart local v22    # "appWidth":I
    .restart local v30    # "thumbHeightI":I
    .restart local v31    # "thumbWidth":F
    :cond_4
    const/4 v11, 0x0

    .line 951
    .restart local v11    # "pivotX":F
    const/4 v12, 0x0

    .line 952
    .restart local v12    # "pivotY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 953
    .restart local v26    # "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 954
    .restart local v27    # "fromY":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v33, v0

    .line 955
    .restart local v33    # "toX":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v34, v0

    .restart local v34    # "toY":F
    goto/16 :goto_1

    .line 966
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    .restart local v24    # "duration":J
    .restart local v28    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_2

    :cond_6
    move-wide/from16 v16, v24

    .line 969
    goto/16 :goto_3

    .line 1006
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    :cond_7
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v13, v6

    move v14, v8

    move/from16 v16, v8

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1007
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1008
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1009
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1010
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1011
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1012
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v26

    move/from16 v3, v34

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 1013
    .restart local v35    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1014
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1017
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1018
    .restart local v29    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_8

    .line 1021
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1023
    :cond_8
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1024
    move-object/from16 v15, v29

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    .prologue
    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1315
    .local v15, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1316
    .local v14, "appHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1318
    .local v21, "thumbnailHeader":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1319
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1320
    .local v20, "thumbWidthI":I
    :goto_0
    if-lez v20, :cond_1

    .end local v20    # "thumbWidthI":I
    :goto_1
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1321
    .local v19, "thumbWidth":F
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1322
    .local v18, "thumbHeightI":I
    :goto_2
    if-lez v18, :cond_3

    .end local v18    # "thumbHeightI":I
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1324
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_0

    .line 1371
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Invalid thumbnail transition state"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    :cond_0
    move/from16 v20, v15

    .line 1319
    goto :goto_0

    .line 1320
    .restart local v20    # "thumbWidthI":I
    :cond_1
    const/16 v20, 0x1

    goto :goto_1

    .end local v20    # "thumbWidthI":I
    .restart local v19    # "thumbWidth":F
    :cond_2
    move/from16 v18, v14

    .line 1321
    goto :goto_2

    .line 1322
    .restart local v18    # "thumbHeightI":I
    :cond_3
    const/16 v18, 0x1

    goto :goto_3

    .line 1327
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1328
    .local v3, "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1329
    .local v5, "scaleH":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1330
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    .line 1331
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    .line 1329
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1374
    .end local v3    # "scaleW":F
    .end local v5    # "scaleH":F
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v15, v14, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4

    .line 1336
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v4, 0xe

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 1340
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1343
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1350
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1351
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1355
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1356
    .restart local v3    # "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1357
    .restart local v5    # "scaleH":F
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v12

    move v8, v3

    move v10, v5

    .line 1357
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1361
    .local v6, "scale":Landroid/view/animation/Animation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1363
    .local v13, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1364
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1365
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1366
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1367
    move-object/from16 v2, v16

    .line 1368
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1273
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1274
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1275
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1276
    .local v16, "thumbWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1277
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    .line 1279
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 1281
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1282
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1283
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1284
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 1285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1283
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1286
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1288
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1289
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1292
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1293
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1294
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1295
    move-object v5, v13

    .line 1305
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 1275
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1277
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    goto :goto_1

    .line 1298
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1299
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1300
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1300
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1886
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1887
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 1889
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1932
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 1933
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1936
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 1937
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    :cond_2
    return-void

    .line 1894
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1898
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1905
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1908
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1909
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1911
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1913
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1915
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_0

    .line 1923
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1925
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1927
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1928
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 419
    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    .prologue
    .line 1612
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 1613
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 1615
    :cond_0
    const/4 v0, 0x2

    .line 1612
    :goto_0
    return v0

    .line 1614
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1616
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 332
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 335
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .prologue
    .line 700
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 678
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 681
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 682
    :cond_1
    sget-object v1, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 682
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 676
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 898
    if-eqz p1, :cond_1

    .line 899
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 905
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 906
    const/4 v0, 0x1

    return v0

    .line 908
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "topOpeningAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "topClosingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p4, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 381
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 382
    .local v1, "appTransition":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 383
    iput v7, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 385
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v6, v4

    .line 386
    :goto_0
    if-eqz p2, :cond_3

    iget-object v4, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v4

    .line 387
    :goto_1
    if-eqz p1, :cond_4

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 388
    :goto_2
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 384
    :cond_0
    invoke-direct {p0, v6, v5, v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 394
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    if-eqz v3, :cond_5

    .line 380
    :cond_1
    return-void

    :cond_2
    move-object v6, v3

    .line 385
    goto :goto_0

    :cond_3
    move-object v5, v3

    .line 386
    goto :goto_1

    :cond_4
    move-object v4, v3

    .line 387
    goto :goto_2

    .line 395
    :cond_5
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_1

    .line 396
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 397
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v0, v7}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    .line 395
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 356
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 350
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 351
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 340
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 341
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 305
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    .line 306
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 286
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z
    .param p11, "freeform"    # Z
    .param p12, "taskId"    # I

    .prologue
    .line 1456
    if-eqz p10, :cond_2

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    .line 1457
    const/16 v5, 0x8

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 1459
    :cond_0
    if-eqz p3, :cond_4

    .line 1460
    const v5, 0x10a00a1

    .line 1459
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1608
    :goto_1
    return-object v15

    .line 1458
    :cond_1
    const/16 v5, 0xa

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    .line 1466
    :cond_2
    if-eqz p10, :cond_6

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_3

    .line 1467
    const/16 v5, 0x9

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    .line 1469
    :cond_3
    if-eqz p3, :cond_7

    .line 1470
    const v5, 0x10a009f

    .line 1469
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .local v15, "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1461
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v5, 0x10a00a2

    goto :goto_0

    .line 1468
    :cond_5
    const/16 v5, 0xb

    move/from16 v0, p2

    if-eq v0, v5, :cond_3

    .line 1476
    :cond_6
    const/16 v5, 0x12

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 1477
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1471
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v5, 0x10a00a0

    goto :goto_2

    .line 1483
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 1484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_9

    .line 1485
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1484
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1485
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3

    .line 1491
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    .line 1492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1498
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_c

    .line 1499
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1505
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 1506
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1512
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_e

    .line 1513
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    .line 1515
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    .line 1514
    :goto_4
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1516
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p2

    move/from16 v3, p12

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1515
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 1526
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_11

    .line 1527
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_13

    .line 1529
    :cond_11
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    .line 1528
    :goto_5
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1531
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p11

    move/from16 v14, p12

    .line 1530
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1529
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    .line 1542
    :cond_13
    const/16 v16, 0x0

    .line 1543
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_0

    .line 1600
    :goto_6
    :pswitch_0
    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1545
    .end local v15    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-eqz p3, :cond_14

    .line 1546
    const/16 v16, 0x4

    goto :goto_6

    .line 1547
    :cond_14
    const/16 v16, 0x5

    goto :goto_6

    .line 1550
    :pswitch_2
    if-eqz p3, :cond_15

    .line 1551
    const/16 v16, 0x6

    goto :goto_6

    .line 1552
    :cond_15
    const/16 v16, 0x7

    goto :goto_6

    .line 1556
    :pswitch_3
    if-eqz p3, :cond_16

    .line 1557
    const/16 v16, 0x8

    goto :goto_6

    .line 1558
    :cond_16
    const/16 v16, 0x9

    goto :goto_6

    .line 1561
    :pswitch_4
    if-eqz p3, :cond_17

    .line 1562
    const/16 v16, 0xa

    goto :goto_6

    .line 1563
    :cond_17
    const/16 v16, 0xb

    goto :goto_6

    .line 1566
    :pswitch_5
    if-eqz p3, :cond_18

    .line 1567
    const/16 v16, 0xc

    goto :goto_6

    .line 1568
    :cond_18
    const/16 v16, 0xd

    goto :goto_6

    .line 1571
    :pswitch_6
    if-eqz p3, :cond_19

    .line 1572
    const/16 v16, 0xe

    goto :goto_6

    .line 1573
    :cond_19
    const/16 v16, 0xf

    goto :goto_6

    .line 1576
    :pswitch_7
    if-eqz p3, :cond_1a

    .line 1577
    const/16 v16, 0x10

    goto :goto_6

    .line 1578
    :cond_1a
    const/16 v16, 0x11

    goto :goto_6

    .line 1581
    :pswitch_8
    if-eqz p3, :cond_1b

    .line 1582
    const/16 v16, 0x12

    goto :goto_6

    .line 1583
    :cond_1b
    const/16 v16, 0x13

    goto :goto_6

    .line 1586
    :pswitch_9
    if-eqz p3, :cond_1c

    .line 1587
    const/16 v16, 0x14

    goto :goto_6

    .line 1588
    :cond_1c
    const/16 v16, 0x15

    goto :goto_6

    .line 1591
    :pswitch_a
    if-eqz p3, :cond_1d

    .line 1592
    const/16 v16, 0x16

    goto :goto_6

    .line 1593
    :cond_1d
    const/16 v16, 0x17

    goto :goto_6

    .line 1596
    :pswitch_b
    if-eqz p3, :cond_1e

    .line 1597
    const/16 v16, 0x19

    goto :goto_6

    .line 1598
    :cond_1e
    const/16 v16, 0x18

    goto :goto_6

    .line 1600
    :cond_1f
    const/4 v15, 0x0

    .local v15, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 495
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 497
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 498
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 499
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 502
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 503
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 505
    :cond_1
    return-object v5
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 510
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    .line 511
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 512
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 513
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 515
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 517
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method

.method notifyProlongedAnimationsEnded()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 405
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1740
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1741
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1742
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1737
    :goto_0
    return-void

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1631
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1632
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1633
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1634
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1636
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1628
    :goto_0
    return-void

    .line 1638
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1680
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1681
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1683
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    .line 1684
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1687
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1678
    :goto_1
    return-void

    .line 1682
    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 1689
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1656
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1657
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1653
    :cond_0
    return-void
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 9
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .prologue
    .line 1696
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1697
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1698
    if-eqz p4, :cond_1

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1700
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1701
    if-eqz p1, :cond_2

    .line 1702
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p1

    if-ge v6, v0, :cond_2

    .line 1703
    aget-object v8, p1, v6

    .line 1704
    .local v8, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v8, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v1, v8, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1706
    if-nez v6, :cond_0

    .line 1709
    iget-object v7, v8, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1710
    .local v7, "rect":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 1711
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v8, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 1710
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1702
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1699
    .end local v6    # "i":I
    .end local v8    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    .line 1716
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1717
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1718
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1695
    :goto_2
    return-void

    .line 1720
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_2
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1729
    if-eqz p3, :cond_1

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1731
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1732
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1733
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1726
    :cond_0
    return-void

    .line 1730
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1646
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1647
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1643
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1666
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1668
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, v3

    move-object v5, p1

    .line 1669
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1670
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1671
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1663
    :goto_1
    return-void

    .line 1667
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1673
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1622
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1621
    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1623
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1619
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZ)Z
    .locals 5
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .prologue
    const/16 v4, 0xd

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v1, :cond_3

    .line 1961
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 1972
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v0

    .line 1973
    .local v0, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1974
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1975
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1977
    :cond_2
    return v0

    .line 1962
    .end local v0    # "prepared":Z
    :cond_3
    if-nez p2, :cond_1

    .line 1963
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1965
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0

    .line 1966
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 1967
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    .line 1966
    if-eqz v1, :cond_1

    .line 1969
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 881
    packed-switch p4, :pswitch_data_0

    .line 887
    const/16 v7, 0x150

    .line 890
    .local v7, "duration":I
    :goto_0
    int-to-long v4, v7

    .line 891
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 890
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 884
    .end local v7    # "duration":I
    :pswitch_0
    iget v7, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .restart local v7    # "duration":I
    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 862
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 863
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 865
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 866
    if-eqz p6, :cond_1

    .line 867
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 869
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 870
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1947
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1946
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 318
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 299
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 298
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 311
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 309
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 326
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
