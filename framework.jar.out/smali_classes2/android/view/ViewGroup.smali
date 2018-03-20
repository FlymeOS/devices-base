.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$1;,
        Landroid/view/ViewGroup$2;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ViewLocationHolder;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field public static DEBUG_DRAW:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragChild:Landroid/view/View;

.field private mCurrentDragStartEvent:Landroid/view/DragEvent;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mIsInterestedInDrag:Z

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/ViewGroup;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return v0
.end method

.method static synthetic -get3(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    sput-boolean v3, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    .line 332
    const/high16 v0, 0x20000

    const/high16 v1, 0x40000

    .line 333
    const/high16 v2, 0x60000

    .line 332
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 331
    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 443
    sput v3, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 518
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 566
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 570
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 221
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 464
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 469
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 498
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 508
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 509
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 6309
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 6308
    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 580
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 581
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 578
    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6201
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6203
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 6204
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6207
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6200
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4497
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4498
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4499
    .local v1, "count":I
    array-length v2, v0

    .line 4500
    .local v2, "size":I
    if-ne p2, v1, :cond_2

    .line 4501
    if-ne v2, v1, :cond_0

    .line 4502
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4503
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4504
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4506
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 4496
    :cond_1
    :goto_0
    return-void

    .line 4507
    :cond_2
    if-ge p2, v1, :cond_4

    .line 4508
    if-ne v2, v1, :cond_3

    .line 4509
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4510
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4511
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4512
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4516
    :goto_1
    aput-object p1, v0, p2

    .line 4517
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4518
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 4519
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 4514
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4522
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .prologue
    .line 2480
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2481
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2482
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2483
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x400000

    const/4 v7, 0x0

    .line 4410
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_0

    .line 4413
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 4416
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4417
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4421
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_2

    .line 4422
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4425
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4426
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 4429
    :cond_3
    if-eqz p4, :cond_d

    .line 4430
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4435
    :goto_0
    if-gez p2, :cond_4

    .line 4436
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4439
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4442
    if-eqz p4, :cond_e

    .line 4443
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 4448
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4449
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4452
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4453
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v5, v8

    if-nez v5, :cond_7

    .line 4454
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4455
    .local v2, "lastKeepOn":Z
    iput-boolean v7, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4456
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4457
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_6

    .line 4458
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4460
    :cond_6
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4463
    .end local v2    # "lastKeepOn":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4464
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 4467
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 4469
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_9

    .line 4470
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4473
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4474
    invoke-virtual {p0, p1, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4477
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_b

    .line 4478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4481
    :cond_b
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 4482
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 4483
    .local v4, "transientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_f

    .line 4484
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4485
    .local v3, "oldIndex":I
    if-gt p2, v3, :cond_c

    .line 4486
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4483
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4432
    .end local v0    # "ai":Landroid/view/View$AttachInfo;
    .end local v1    # "i":I
    .end local v3    # "oldIndex":I
    .end local v4    # "transientCount":I
    :cond_d
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 4445
    :cond_e
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto/16 :goto_1

    .line 4491
    .restart local v0    # "ai":Landroid/view/View$AttachInfo;
    :cond_f
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v5, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_10

    .line 4492
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 4408
    :cond_10
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4584
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4585
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4583
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2543
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    .line 2544
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2544
    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 2440
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 2441
    const/4 v8, 0x0

    .line 2442
    .local v8, "syntheticEvent":Z
    if-nez p1, :cond_0

    .line 2443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2445
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 2444
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2446
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2447
    const/4 v8, 0x1

    .line 2450
    .end local v0    # "now":J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 2451
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2452
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2450
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2454
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2456
    if-eqz v8, :cond_2

    .line 2457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2439
    .end local v8    # "syntheticEvent":Z
    .end local v9    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1942
    const/4 v10, 0x0

    .line 1943
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1944
    .end local v10    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v11, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_2

    .line 1945
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1946
    .local v9, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 1947
    if-nez v10, :cond_0

    .line 1948
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1952
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1956
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1955
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1957
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1958
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1959
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1960
    return-void

    .line 1950
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1962
    :cond_1
    move-object v10, v11

    .line 1963
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    move-object v11, v9

    goto :goto_0

    .line 1941
    .end local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    .end local v10    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 2513
    const/4 v10, 0x0

    .line 2514
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2515
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v11, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_2

    .line 2516
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2517
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 2518
    if-nez v10, :cond_0

    .line 2519
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2523
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2527
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 2526
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2528
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2529
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2530
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2531
    return-void

    .line 2521
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2533
    :cond_1
    move-object v10, v11

    .line 2534
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v11, v9

    goto :goto_0

    .line 2512
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v10    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    .prologue
    .line 4342
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4343
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4341
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2425
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2426
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 2428
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2429
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2430
    move-object v1, v0

    .line 2431
    if-nez v0, :cond_0

    .line 2432
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2424
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .prologue
    .line 585
    sget-boolean v0, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dipsToPixels(I)I
    .locals 3
    .param p1, "dips"    # I

    .prologue
    .line 3352
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3353
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 1716
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1717
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1718
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v3, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 1719
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1727
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return-object v2

    .line 1721
    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 1722
    .local v0, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1723
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1724
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 1725
    .restart local v2    # "pointerIcon":Landroid/view/PointerIcon;
    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2109
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2110
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2111
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2112
    .local v0, "handled":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2120
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 2114
    .end local v0    # "handled":Z
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 2115
    .local v1, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2116
    .local v2, "offsetY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2117
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2118
    .restart local v0    # "handled":Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2597
    .local v4, "oldAction":I
    if-nez p2, :cond_0

    if-ne v4, v8, :cond_2

    .line 2598
    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2599
    if-nez p3, :cond_1

    .line 2600
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2604
    .local v0, "handled":Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2605
    return v0

    .line 2602
    .end local v0    # "handled":Z
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 2609
    .end local v0    # "handled":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2610
    .local v5, "oldPointerIdBits":I
    and-int v1, v5, p4

    .line 2614
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_3

    .line 2615
    return v7

    .line 2623
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2624
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2625
    :cond_4
    if-nez p3, :cond_5

    .line 2626
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2636
    .restart local v0    # "handled":Z
    :goto_1
    return v0

    .line 2628
    .end local v0    # "handled":Z
    :cond_5
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2629
    .local v2, "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2630
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2632
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2634
    .restart local v0    # "handled":Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2638
    .end local v0    # "handled":Z
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2644
    .local v6, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2645
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2658
    .restart local v0    # "handled":Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 2659
    return v0

    .line 2640
    .end local v0    # "handled":Z
    .end local v6    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2

    .line 2647
    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2648
    .restart local v2    # "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2649
    .restart local v3    # "offsetY":F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2650
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2651
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2654
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_3
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .prologue
    .line 3347
    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3348
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v4, p2, v0

    add-int v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3346
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 7905
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 7907
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 7910
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 7911
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 7912
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 7913
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 7915
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 7916
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 7917
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 7918
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 7920
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 7921
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 7922
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 7923
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 7925
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 7926
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 7927
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 7928
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 7930
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 7904
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .prologue
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p6

    move v5, p6

    move v6, p7

    .line 3358
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3359
    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p4

    move v4, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3360
    neg-int v4, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p2

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3361
    neg-int v4, p6

    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p4

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3357
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1931
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    .line 1932
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1934
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1933
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1935
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1936
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1937
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1930
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3367
    sub-int v2, p1, p5

    .line 3368
    .local v2, "x1":I
    sub-int v3, p2, p6

    .line 3370
    .local v3, "y1":I
    add-int v4, p3, p7

    .line 3371
    .local v4, "x4":I
    add-int v11, p4, p8

    .local v11, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v5, p2

    .line 3373
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move v8, p2

    move v9, p1

    move/from16 v10, p4

    .line 3374
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, p3

    move v8, p2

    move v9, v4

    move/from16 v10, p4

    .line 3375
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    .line 3376
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3366
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 3331
    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    .line 3332
    if-le p2, p4, :cond_0

    .line 3333
    move v6, p2

    .local v6, "tmp":I
    move p2, p4

    move p4, v6

    .line 3335
    .end local v6    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    .line 3336
    move v6, p3

    .restart local v6    # "tmp":I
    move p3, p5

    move p5, v6

    .line 3338
    .end local v6    # "tmp":I
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3330
    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2377
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 2378
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_0

    .line 2379
    return-object v4

    .line 2382
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2383
    .local v0, "current":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2384
    return-object v4

    .line 2387
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2388
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2389
    if-ne v1, p0, :cond_2

    .line 2390
    return-object v0

    :cond_2
    move-object v0, v1

    .line 2392
    check-cast v0, Landroid/view/View;

    .line 2393
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2396
    :cond_3
    return-object v4
.end method

.method private getAndVerifyPreorderedIndex(IIZ)I
    .locals 5
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    .prologue
    .line 1732
    if-eqz p3, :cond_1

    .line 1733
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 1734
    .local v1, "childIndex1":I
    if-lt v1, p1, :cond_0

    .line 1735
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1737
    const-string/jumbo v4, " (child count is "

    .line 1735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1737
    const-string/jumbo v4, ")"

    .line 1735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1739
    :cond_0
    move v0, v1

    .line 1743
    .end local v1    # "childIndex1":I
    .local v0, "childIndex":I
    :goto_0
    return v0

    .line 1741
    .end local v0    # "childIndex":I
    :cond_1
    move v0, p2

    .restart local v0    # "childIndex":I
    goto :goto_0
.end method

.method private static getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3054
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 3055
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3056
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3057
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3061
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    aget-object v0, p1, p2

    .line 3063
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 6106
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6107
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 6109
    .local v4, "specSize":I
    sub-int v5, v4, p1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6111
    .local v2, "size":I
    const/4 v1, 0x0

    .line 6112
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 6114
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_0

    .line 6171
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 6117
    :sswitch_0
    if-ltz p2, :cond_1

    .line 6118
    move v1, p2

    .line 6119
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6120
    :cond_1
    if-ne p2, v8, :cond_2

    .line 6122
    move v1, v2

    .line 6123
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6124
    :cond_2
    if-ne p2, v7, :cond_0

    .line 6127
    move v1, v2

    .line 6128
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6134
    :sswitch_1
    if-ltz p2, :cond_3

    .line 6136
    move v1, p2

    .line 6137
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6138
    :cond_3
    if-ne p2, v8, :cond_4

    .line 6141
    move v1, v2

    .line 6142
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6143
    :cond_4
    if-ne p2, v7, :cond_0

    .line 6146
    move v1, v2

    .line 6147
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6153
    :sswitch_2
    if-ltz p2, :cond_5

    .line 6155
    move v1, p2

    .line 6156
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6157
    :cond_5
    if-ne p2, v8, :cond_7

    .line 6160
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    .line 6161
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6160
    :cond_6
    move v1, v2

    goto :goto_1

    .line 6162
    :cond_7
    if-ne p2, v7, :cond_0

    .line 6165
    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v5, :cond_8

    const/4 v1, 0x0

    .line 6166
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 6165
    :cond_8
    move v1, v2

    goto :goto_2

    .line 6114
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 7897
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 7898
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    .line 7899
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7901
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1356
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    if-nez v0, :cond_0

    .line 2549
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 2551
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2467
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2468
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2469
    return-object v0

    .line 2467
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2472
    :cond_1
    return-object v2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2133
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 2134
    .local v0, "offsetX":F
    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v4, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 2135
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2136
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2137
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2138
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2140
    :cond_0
    return-object v2
.end method

.method private hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 5788
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasChildWithZ()Z
    .locals 3

    .prologue
    .line 3616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_1

    .line 3617
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 3616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3619
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 613
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 616
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 617
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 618
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 619
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 617
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 621
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 624
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 627
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 630
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 633
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 636
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 639
    :pswitch_6
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 640
    .local v5, "id":I
    if-lez v5, :cond_0

    .line 641
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 645
    .end local v5    # "id":I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 648
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 651
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 652
    .local v2, "animateLayoutChanges":Z
    if-eqz v2, :cond_0

    .line 653
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 657
    .end local v2    # "animateLayoutChanges":Z
    :pswitch_a
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    goto :goto_1

    .line 660
    :pswitch_b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto :goto_1

    .line 663
    :pswitch_c
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto :goto_1

    .line 668
    .end local v3    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 612
    return-void

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 590
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 593
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 594
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 595
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 596
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 597
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 599
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 600
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 603
    :cond_1
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 605
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 608
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 588
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 2

    .prologue
    .line 3660
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3661
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3663
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 3664
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    .line 3670
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3673
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3659
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    return-object p0

    .line 2051
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3709
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3710
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3711
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 3712
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3708
    return-void

    :cond_0
    move v0, v1

    .line 3709
    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4528
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4529
    .local v0, "children":[Landroid/view/View;
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    .line 4530
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4532
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4533
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 4534
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 4541
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 4542
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 4543
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 4527
    :cond_2
    :goto_1
    return-void

    .line 4535
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 4536
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4537
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 4539
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 4544
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 4545
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 4551
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4552
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4554
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4555
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4557
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    .line 4558
    return-void

    .line 4561
    :cond_0
    if-ne v2, v1, :cond_1

    .line 4562
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 4563
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4564
    aput-object v5, v0, v3

    .line 4562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4567
    .end local v3    # "i":I
    :cond_1
    move v3, p1

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4568
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4567
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4573
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4575
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_2
    if-ge v3, v1, :cond_3

    .line 4576
    aput-object v5, v0, v3

    .line 4575
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4580
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4550
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 2490
    const/4 v1, 0x0

    .line 2491
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2492
    .end local v1    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v2, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2493
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2494
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2495
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2496
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2497
    if-nez v1, :cond_0

    .line 2498
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2502
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2503
    move-object v2, v0

    .line 2504
    goto :goto_0

    .line 2500
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2507
    :cond_1
    move-object v1, v2

    .line 2508
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object v2, v0

    goto :goto_0

    .line 2489
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v1    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4696
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v4, :cond_0

    .line 4697
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4700
    :cond_0
    const/4 v0, 0x0

    .line 4701
    .local v0, "clearChildFocus":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v4, :cond_1

    .line 4702
    invoke-virtual {p2, v5}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4703
    const/4 v0, 0x1

    .line 4706
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4708
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4709
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4711
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_2

    .line 4712
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 4711
    if-eqz v4, :cond_8

    .line 4713
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4718
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4719
    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4722
    :cond_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4724
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4726
    if-eqz v0, :cond_5

    .line 4727
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4728
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4729
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4733
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4735
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    .line 4736
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4739
    :cond_6
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v4, :cond_9

    const/4 v3, 0x0

    .line 4740
    .local v3, "transientCount":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_a

    .line 4741
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4742
    .local v2, "oldIndex":I
    if-ge p1, v2, :cond_7

    .line 4743
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4740
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4714
    .end local v1    # "i":I
    .end local v2    # "oldIndex":I
    .end local v3    # "transientCount":I
    :cond_8
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_3

    .line 4715
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0

    .line 4739
    :cond_9
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "transientCount":I
    goto :goto_1

    .line 4747
    .restart local v1    # "i":I
    :cond_a
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v4, :cond_b

    .line 4748
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4695
    :cond_b
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 4687
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4688
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 4689
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 4690
    const/4 v1, 0x1

    return v1

    .line 4692
    :cond_0
    return v1
.end method

.method private removeViewsInternal(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 4792
    add-int v3, p1, p2

    .line 4794
    .local v3, "end":I
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 4795
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 4794
    :cond_1
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v3, v7, :cond_0

    .line 4798
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4799
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_7

    const/4 v2, 0x1

    .line 4800
    .local v2, "detach":Z
    :goto_0
    const/4 v1, 0x0

    .line 4802
    .local v1, "clearChildFocus":Z
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4804
    .local v0, "children":[Landroid/view/View;
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_9

    .line 4805
    aget-object v6, v0, v5

    .line 4807
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_2

    .line 4808
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4811
    :cond_2
    if-ne v6, v4, :cond_3

    .line 4812
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4813
    const/4 v1, 0x1

    .line 4816
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4818
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4819
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4821
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_4

    .line 4822
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 4821
    if-eqz v7, :cond_8

    .line 4823
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4828
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4829
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4832
    :cond_6
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4834
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4804
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4799
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "clearChildFocus":Z
    .end local v2    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "detach":Z
    goto :goto_0

    .line 4824
    .restart local v0    # "children":[Landroid/view/View;
    .restart local v1    # "clearChildFocus":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_5

    .line 4825
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 4837
    .end local v6    # "view":Landroid/view/View;
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4839
    if-eqz v1, :cond_a

    .line 4840
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4841
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4842
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4791
    :cond_a
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2414
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2415
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2416
    const/4 v0, 0x1

    return v0

    .line 2418
    :cond_0
    return v2
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2403
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2404
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2405
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2406
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2402
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 5792
    if-eqz p2, :cond_0

    .line 5793
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5791
    :goto_0
    return-void

    .line 5795
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method private setLayoutMode(IZ)V
    .locals 1
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .prologue
    .line 5835
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5836
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5834
    return-void
.end method

.method private static sign(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 3343
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1975
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1976
    return-void

    .line 1978
    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 1980
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 1981
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1982
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1983
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    .line 1984
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1987
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1991
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    .line 1992
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 1991
    throw v4

    .line 1992
    .restart local v2    # "childrenCount":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 1974
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1086
    .local v4, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 1088
    .local v3, "descendantFocusability":I
    const/high16 v6, 0x60000

    if-eq v3, v6, :cond_2

    .line 1089
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1090
    or-int/lit8 p3, p3, 0x1

    .line 1093
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1094
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1096
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1097
    aget-object v0, v1, v5

    .line 1098
    .local v0, "child":Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 1099
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1096
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1108
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_2
    const/high16 v6, 0x40000

    if-ne v3, v6, :cond_3

    .line 1110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 1111
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1083
    :cond_4
    :goto_1
    return-void

    .line 1112
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method public addStatesFromChildren()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6517
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1205
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1206
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1208
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1209
    aget-object v0, v1, v3

    .line 1210
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1211
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1208
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1202
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 4057
    if-gez p2, :cond_0

    .line 4058
    return-void

    .line 4060
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4061
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 4062
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 4064
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4065
    .local v1, "oldSize":I
    if-lez v1, :cond_4

    .line 4067
    const/4 v0, 0x0

    .local v0, "insertionIndex":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4068
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 4072
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4073
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4078
    .end local v0    # "insertionIndex":I
    :goto_1
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4079
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4080
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4056
    return-void

    .line 4067
    .restart local v0    # "insertionIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4075
    .end local v0    # "insertionIndex":I
    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4076
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4170
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 4188
    if-nez p1, :cond_0

    .line 4189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4192
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 4193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4194
    if-nez v0, :cond_1

    .line 4195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4198
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4187
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 4212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4213
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4214
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4215
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4211
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4249
    if-nez p1, :cond_0

    .line 4250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4256
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4244
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4230
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4229
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4389
    if-nez p1, :cond_0

    .line 4390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4392
    :cond_0
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4393
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4394
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4395
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 4600
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4602
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 4603
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 4604
    .restart local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4607
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 4608
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 4599
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    .line 5003
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5005
    if-gez p2, :cond_0

    .line 5006
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5009
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5011
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5012
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    .line 5013
    const v2, -0x8001

    .line 5012
    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5015
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5017
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5018
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5020
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 5021
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    .line 5020
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 5002
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1344
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1345
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1346
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1347
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1348
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1343
    :cond_0
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3631
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3632
    .local v1, "childrenCount":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3634
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 3635
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 3642
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    .line 3643
    .local v3, "customOrder":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 3645
    invoke-direct {p0, v1, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v0

    .line 3646
    .local v0, "childIndex":I
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v7, v0

    .line 3647
    .local v6, "nextChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    move-result v2

    .line 3650
    .local v2, "currentZ":F
    move v5, v4

    .line 3651
    .local v5, "insertIndex":I
    :goto_2
    if-lez v5, :cond_2

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_2

    .line 3652
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3632
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v3    # "customOrder":Z
    .end local v4    # "i":I
    .end local v5    # "insertIndex":I
    .end local v6    # "nextChild":Landroid/view/View;
    :cond_0
    return-object v8

    .line 3638
    :cond_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3639
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_0

    .line 3654
    .restart local v0    # "childIndex":I
    .restart local v2    # "currentZ":F
    .restart local v3    # "customOrder":Z
    .restart local v4    # "i":I
    .restart local v5    # "insertIndex":I
    .restart local v6    # "nextChild":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3643
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3656
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v5    # "insertIndex":I
    .end local v6    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v7
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2368
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 5593
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6858
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6859
    return-void

    .line 6861
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6862
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6857
    :cond_1
    return-void

    .line 6864
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6865
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6866
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6867
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 6865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4273
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6526
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 6527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 6525
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    .line 936
    .local v2, "oldHasTransientState":Z
    if-eqz p2, :cond_1

    .line 937
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 942
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 943
    .local v1, "newHasTransientState":Z
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 945
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :cond_0
    :goto_1
    return-void

    .line 939
    .end local v1    # "newHasTransientState":Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 946
    .restart local v1    # "newHasTransientState":Z
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 948
    const-string/jumbo v5, " does not fully implement ViewParent"

    .line 947
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4404
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4403
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 970
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 971
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 965
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    .prologue
    .line 6180
    iget-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6181
    .local v1, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    .line 6182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6183
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6185
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 6186
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6188
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 6183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6190
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6179
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 981
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    .line 982
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 977
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 985
    .local v0, "focused":Landroid/view/View;
    iput-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    .prologue
    .line 3309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3310
    const/4 v4, 0x0

    .line 3311
    .local v4, "left":I
    const/4 v6, 0x0

    .line 3312
    .local v6, "top":I
    const/4 v5, 0x0

    .line 3313
    .local v5, "right":I
    const/4 v0, 0x0

    .line 3314
    .local v0, "bottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v7, :cond_1

    .line 3315
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3316
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3317
    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 3318
    .local v3, "insets":Landroid/graphics/Insets;
    iget v7, v3, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3319
    iget v7, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3320
    iget v7, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3321
    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3314
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3324
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    return-object v7

    .line 3326
    .end local v0    # "bottom":I
    .end local v2    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :cond_2
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v7
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 3274
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3275
    .local v2, "count":I
    const/4 v4, 0x0

    .line 3277
    .local v4, "visibilities":[I
    if-eqz p3, :cond_1

    .line 3278
    new-array v4, v2, [I

    .line 3279
    .local v4, "visibilities":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3280
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3281
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 3282
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 3283
    iget v5, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Landroid/view/View;->mViewFlags:I

    .line 3279
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3289
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "visibilities":[I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3291
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 3292
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 3293
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3294
    .restart local v1    # "child":Landroid/view/View;
    iget v5, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    .line 3295
    aget v6, v4, v3

    and-int/lit8 v6, v6, 0xc

    .line 3294
    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/View;->mViewFlags:I

    .line 3292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3299
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 5315
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->damageChildDeferred(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5316
    return-void

    .line 5319
    :cond_0
    move-object v3, p0

    .line 5321
    .local v3, "parent":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5322
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    .line 5323
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 5324
    .local v1, "left":I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 5325
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5326
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 5330
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 5331
    check-cast v4, Landroid/view/ViewGroup;

    .line 5332
    .local v4, "parentVG":Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v6, :cond_3

    .line 5334
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 5335
    const/4 v3, 0x0

    .line 5349
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    .line 5314
    .end local v1    # "left":I
    .end local v5    # "top":I
    :cond_2
    return-void

    .line 5337
    .restart local v1    # "left":I
    .restart local v4    # "parentVG":Landroid/view/ViewGroup;
    .restart local v5    # "top":I
    :cond_3
    invoke-virtual {v4, v1, v5, p2}, Landroid/view/ViewGroup;->damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 5338
    .restart local v3    # "parent":Landroid/view/ViewParent;
    iget v1, v4, Landroid/view/ViewGroup;->mLeft:I

    .line 5339
    iget v5, v4, Landroid/view/ViewGroup;->mTop:I

    goto :goto_0

    .line 5344
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5345
    .local v2, "location":[I
    aput v1, v2, v7

    .line 5346
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 5347
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .restart local v3    # "parent":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public damageChildDeferred(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5293
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5294
    :goto_0
    if-eqz v0, :cond_2

    .line 5295
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5296
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 5297
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    .line 5298
    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5299
    const/4 v1, 0x1

    return v1

    .line 5301
    :cond_1
    const/4 v0, 0x0

    .local v0, "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 5304
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 5360
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 5361
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 5362
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5363
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 5364
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 5367
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 5368
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5367
    if-eqz v0, :cond_4

    .line 5370
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5371
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    .line 5374
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 5378
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .param p1, "depth"    # I

    .prologue
    .line 5948
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 5951
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 5952
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5953
    .local v3, "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5954
    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    .end local v3    # "output":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 5957
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5958
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5959
    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    .end local v3    # "output":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5962
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5963
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 5964
    .local v0, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 5962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5967
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 5968
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5969
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5970
    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5947
    .end local v3    # "output":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5104
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5105
    .local v1, "count":I
    if-gtz v1, :cond_0

    .line 5106
    return-void

    .line 5109
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5110
    .local v0, "children":[Landroid/view/View;
    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5112
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5113
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5114
    aput-object v4, v0, v2

    .line 5112
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5103
    :cond_1
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 5063
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5062
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5042
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5041
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 5085
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5084
    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 843
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 844
    return v4

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 847
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 848
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    return v4

    .line 847
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 6410
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6411
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6413
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6414
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6415
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6420
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object p1

    .line 6413
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 8
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 2915
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x400000

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2916
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2917
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v7, -0x400001

    and-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2919
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2920
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2921
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2922
    aget-object v0, v1, v3

    .line 2924
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    .line 2923
    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2921
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2926
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 2927
    .local v4, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 2928
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2930
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    .line 2929
    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2927
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2926
    .end local v4    # "transientCount":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "transientCount":I
    goto :goto_1

    .line 2914
    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    .prologue
    .line 3888
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 3890
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3891
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3892
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3893
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 3892
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3887
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 1330
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    .line 1331
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1332
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1333
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1334
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1335
    aget-object v0, v1, v3

    .line 1337
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    .line 1336
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1329
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1312
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1313
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1314
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1315
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1316
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1311
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3160
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3163
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3166
    iput-boolean v5, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3169
    iput-object v6, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 3170
    iput-boolean v5, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 3171
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v5, :cond_0

    .line 3172
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    .line 3173
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 3176
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3177
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3178
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3179
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3181
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3182
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v5, :cond_2

    const/4 v3, 0x0

    .line 3183
    .local v3, "transientCount":I
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 3184
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3185
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3183
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3182
    .end local v3    # "transientCount":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "transientCount":I
    goto :goto_1

    .line 3187
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3154
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    .prologue
    .line 1231
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1232
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1233
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1234
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1235
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    :cond_0
    return-void
.end method

.method dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    .line 1361
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1368
    iput-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1370
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1376
    const/4 v10, 0x0

    .line 1377
    .local v10, "retval":Z
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/DragEvent;->mX:F

    .line 1378
    .local v12, "tx":F
    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/DragEvent;->mY:F

    .line 1381
    .local v13, "ty":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 1383
    .local v9, "localPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mAction:I

    packed-switch v14, :pswitch_data_0

    .line 1516
    .end local v10    # "retval":Z
    :cond_0
    :goto_0
    return v10

    .line 1386
    .restart local v10    # "retval":Z
    :pswitch_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1389
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1390
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v14, :cond_2

    .line 1391
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1397
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1398
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1399
    .local v4, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_3

    .line 1400
    aget-object v2, v4, v8

    .line 1401
    .local v2, "child":Landroid/view/View;
    iget v14, v2, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v14, v14, -0x4

    iput v14, v2, Landroid/view/View;->mPrivateFlags2:I

    .line 1402
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_1

    .line 1403
    aget-object v14, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1404
    const/4 v10, 0x1

    .line 1399
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1393
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1410
    .restart local v4    # "children":[Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1411
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v14, :cond_4

    .line 1412
    const/4 v10, 0x1

    .line 1415
    :cond_4
    if-nez v10, :cond_0

    .line 1418
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v14}, Landroid/view/DragEvent;->recycle()V

    .line 1419
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    goto :goto_0

    .line 1425
    .end local v4    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1426
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_7

    .line 1427
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "child$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1429
    .restart local v2    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1430
    const/4 v10, 0x1

    goto :goto_3

    .line 1433
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1435
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v14, :cond_8

    .line 1436
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v14}, Landroid/view/DragEvent;->recycle()V

    .line 1437
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1440
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v14, :cond_0

    .line 1441
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1442
    const/4 v10, 0x1

    .line 1444
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    goto/16 :goto_0

    .line 1451
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v9}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v11

    .line 1453
    .local v11, "target":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v11, v14, :cond_d

    .line 1454
    sget-boolean v14, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v14, :cond_c

    .line 1459
    move-object/from16 v0, p1

    iget v1, v0, Landroid/view/DragEvent;->mAction:I

    .line 1462
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1463
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mY:F

    .line 1465
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v14, :cond_a

    .line 1466
    const/4 v14, 0x6

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mAction:I

    .line 1467
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1470
    :cond_a
    if-eqz v11, :cond_b

    .line 1471
    const/4 v14, 0x5

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mAction:I

    .line 1472
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1475
    :cond_b
    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    .line 1476
    move-object/from16 v0, p1

    iput v12, v0, Landroid/view/DragEvent;->mX:F

    .line 1477
    move-object/from16 v0, p1

    iput v13, v0, Landroid/view/DragEvent;->mY:F

    .line 1479
    .end local v1    # "action":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1482
    :cond_d
    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v14, :cond_e

    .line 1483
    move-object/from16 v11, p0

    .line 1487
    :cond_e
    if-eqz v11, :cond_0

    .line 1488
    move-object/from16 v0, p0

    if-eq v11, v0, :cond_10

    .line 1489
    iget v14, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1490
    iget v14, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mY:F

    .line 1492
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    .line 1494
    .local v10, "retval":Z
    move-object/from16 v0, p1

    iput v12, v0, Landroid/view/DragEvent;->mX:F

    .line 1495
    move-object/from16 v0, p1

    iput v13, v0, Landroid/view/DragEvent;->mY:F

    .line 1497
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v14, :cond_0

    .line 1499
    sget-boolean v14, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v14, :cond_f

    .line 1500
    move v7, v10

    .line 1505
    .local v7, "eventWasConsumed":Z
    :goto_4
    if-nez v7, :cond_0

    .line 1506
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 1502
    .end local v7    # "eventWasConsumed":Z
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v7, v0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .restart local v7    # "eventWasConsumed":Z
    goto :goto_4

    .line 1510
    .end local v7    # "eventWasConsumed":Z
    .local v10, "retval":Z
    :cond_10
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    .local v10, "retval":Z
    goto/16 :goto_0

    .line 1383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mRenderNode:Landroid/view/RenderNode;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v28

    .line 3442
    .local v28, "usingRenderNodeProperties":Z
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3443
    .local v10, "childrenCount":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3444
    .local v9, "children":[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    .line 3446
    .local v20, "flags":I
    and-int/lit8 v29, v20, 0x8

    if-eqz v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 3447
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v29

    if-eqz v29, :cond_1

    const/4 v6, 0x0

    .line 3448
    .local v6, "buildCache":Z
    :goto_0
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v10, :cond_2

    .line 3449
    aget-object v7, v9, v21

    .line 3450
    .local v7, "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-nez v29, :cond_0

    .line 3451
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 3452
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 3453
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 3448
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3447
    .end local v6    # "buildCache":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "i":I
    :cond_1
    const/4 v6, 0x1

    .restart local v6    # "buildCache":Z
    goto :goto_0

    .line 3457
    .restart local v21    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3458
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 3459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3462
    :cond_3
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 3464
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x11

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 3468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3472
    .end local v6    # "buildCache":Z
    .end local v13    # "controller":Landroid/view/animation/LayoutAnimationController;
    .end local v21    # "i":I
    :cond_4
    const/4 v11, 0x0

    .line 3473
    .local v11, "clipSaveCount":I
    and-int/lit8 v29, v20, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    const/4 v12, 0x1

    .line 3474
    .local v12, "clipToPadding":Z
    :goto_2
    if-eqz v12, :cond_5

    .line 3475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 3476
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v31, v0

    add-int v30, v30, v31

    .line 3477
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    .line 3478
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    .line 3476
    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3482
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x41

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3483
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3485
    const/16 v22, 0x0

    .line 3486
    .local v22, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v18

    .line 3488
    .local v18, "drawingTime":J
    if-eqz v28, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 3489
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    const/16 v26, 0x0

    .line 3490
    .local v26, "transientCount":I
    :goto_3
    if-eqz v26, :cond_c

    const/16 v27, 0x0

    .line 3493
    .local v27, "transientIndex":I
    :goto_4
    if-eqz v28, :cond_d

    .line 3494
    const/16 v24, 0x0

    .line 3495
    .local v24, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_5
    if-nez v24, :cond_e

    .line 3496
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    .line 3497
    :goto_6
    const/16 v21, 0x0

    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :goto_7
    move/from16 v0, v21

    if-ge v0, v10, :cond_12

    .line 3498
    :cond_7
    :goto_8
    if-ltz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3500
    .local v25, "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_8

    .line 3501
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_9

    .line 3502
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3504
    :cond_9
    add-int/lit8 v27, v27, 0x1

    .line 3505
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 3506
    const/16 v27, -0x1

    goto :goto_8

    .line 3473
    .end local v12    # "clipToPadding":Z
    .end local v18    # "drawingTime":J
    .end local v21    # "i":I
    .end local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "transientChild":Landroid/view/View;
    .end local v26    # "transientCount":I
    .end local v27    # "transientIndex":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3489
    .restart local v12    # "clipToPadding":Z
    .restart local v18    # "drawingTime":J
    .restart local v22    # "more":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v26

    goto :goto_3

    .line 3490
    .restart local v26    # "transientCount":I
    :cond_c
    const/16 v27, -0x1

    .restart local v27    # "transientIndex":I
    goto :goto_4

    .line 3494
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v24

    goto :goto_5

    .line 3495
    .restart local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_e
    const/4 v14, 0x0

    .local v14, "customOrder":Z
    goto :goto_6

    .line 3510
    .end local v14    # "customOrder":Z
    .end local v22    # "more":Z
    .restart local v21    # "i":I
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v1, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 3511
    .local v8, "childIndex":I
    move-object/from16 v0, v24

    invoke-static {v0, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3512
    .restart local v7    # "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_11

    .line 3513
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3497
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 3516
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_12
    if-ltz v27, :cond_15

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3519
    .restart local v25    # "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_13

    .line 3520
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_14

    .line 3521
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3523
    :cond_14
    add-int/lit8 v27, v27, 0x1

    .line 3524
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_12

    .line 3528
    .end local v25    # "transientChild":Landroid/view/View;
    :cond_15
    if-eqz v24, :cond_16

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 3531
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    .line 3532
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3533
    .local v15, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v16, v29, -0x1

    .line 3535
    .local v16, "disappearingCount":I
    move/from16 v21, v16

    :goto_9
    if-ltz v21, :cond_17

    .line 3536
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 3537
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3535
    .local v22, "more":Z
    add-int/lit8 v21, v21, -0x1

    goto :goto_9

    .line 3540
    .end local v7    # "child":Landroid/view/View;
    .end local v15    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "disappearingCount":I
    .end local v22    # "more":Z
    :cond_17
    if-eqz v28, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 3542
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v29

    if-eqz v29, :cond_19

    .line 3543
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 3546
    :cond_19
    if-eqz v12, :cond_1a

    .line 3547
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3551
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    .line 3553
    and-int/lit8 v29, v20, 0x4

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 3554
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3557
    :cond_1b
    and-int/lit8 v29, v20, 0x10

    if-nez v29, :cond_1c

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    if-nez v29, :cond_1c

    .line 3558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v29

    .line 3557
    if-eqz v29, :cond_1c

    .line 3558
    if-eqz v22, :cond_1d

    .line 3440
    :cond_1c
    :goto_a
    return-void

    .line 3562
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3563
    new-instance v17, Landroid/view/ViewGroup$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 3569
    .local v17, "end":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3864
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3865
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 3866
    return-void

    .line 3869
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3870
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 3871
    aget-object v0, v1, v4

    .line 3874
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v5, 0x0

    .line 3875
    .local v5, "nonActionable":Z
    :goto_1
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    .line 3876
    .local v3, "duplicatesState":Z
    :goto_2
    if-nez v5, :cond_2

    if-eqz v3, :cond_3

    .line 3877
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v6

    .line 3878
    .local v6, "point":[F
    aput p1, v6, v9

    .line 3879
    aput p2, v6, v10

    .line 3880
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3881
    aget v7, v6, v9

    aget v8, v6, v10

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3870
    .end local v6    # "point":[F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3874
    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "nonActionable":Z
    goto :goto_1

    .line 3875
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "duplicatesState":Z
    goto :goto_2

    .line 3863
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_6
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2905
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2906
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2907
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2908
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2909
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2908
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2904
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3226
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3225
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2089
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    .line 2090
    const/16 v1, 0x12

    .line 2089
    if-ne v0, v1, :cond_0

    .line 2091
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2092
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    .line 2093
    const/16 v1, 0x10

    .line 2092
    if-ne v0, v1, :cond_1

    .line 2094
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2096
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 2057
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2058
    .local v3, "childrenCount":I
    if-eqz v3, :cond_4

    .line 2059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2060
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2062
    .local v8, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    .line 2063
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_1

    .line 2064
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 2065
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2066
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 2067
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    .line 2068
    .local v1, "childIndex":I
    invoke-static {v6, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2069
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2070
    invoke-virtual {p0, v7, v8, v0, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2074
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2075
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2076
    :cond_0
    const/4 v9, 0x1

    return v9

    .line 2063
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "customOrder":Z
    goto :goto_0

    .line 2066
    .end local v4    # "customOrder":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childIndex":I
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2079
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2083
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    .line 3686
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3687
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3688
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3689
    aget-object v0, v1, v5

    .line 3690
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3691
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3688
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3694
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_3

    .line 3695
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 3696
    .local v6, "overlayView":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3698
    .end local v6    # "overlayView":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 3699
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3700
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3701
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 3702
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3703
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3701
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3685
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    :cond_4
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1752
    .local v4, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 1753
    .local v15, "interceptHover":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1755
    move-object/from16 v10, p1

    .line 1756
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v12, 0x0

    .line 1760
    .local v12, "handled":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1761
    .local v11, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1762
    if-nez v15, :cond_2

    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v4, v0, :cond_2

    .line 1763
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 1764
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 1765
    .local v23, "y":F
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1766
    .local v8, "childrenCount":I
    if-eqz v8, :cond_2

    .line 1767
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1768
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v20, :cond_3

    .line 1769
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v9

    .line 1770
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1771
    .local v7, "children":[Landroid/view/View;
    const/16 v16, 0x0

    .line 1772
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v14, v8, -0x1

    .end local v12    # "handled":Z
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_1

    .line 1773
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6

    .line 1775
    .local v6, "childIndex":I
    move-object/from16 v0, v20

    invoke-static {v0, v7, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1777
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1778
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1784
    move-object v13, v11

    .line 1786
    .local v13, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v19, 0x0

    .line 1787
    :goto_2
    if-nez v13, :cond_4

    .line 1788
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v13

    .line 1789
    const/16 v21, 0x0

    .line 1809
    .local v21, "wasHovered":Z
    :goto_3
    if-eqz v16, :cond_7

    .line 1810
    move-object/from16 v0, v16

    iput-object v13, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1814
    :goto_4
    move-object/from16 v16, v13

    .line 1817
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_8

    .line 1818
    if-nez v21, :cond_0

    .line 1820
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1839
    :cond_0
    :goto_5
    if-eqz v12, :cond_a

    .line 1843
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_1
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1848
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_2
    :goto_6
    if-eqz v11, :cond_d

    .line 1849
    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1852
    .restart local v5    # "child":Landroid/view/View;
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_b

    .line 1854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1870
    :goto_7
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v18, v0

    .line 1871
    .local v18, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1872
    move-object/from16 v11, v18

    goto :goto_6

    .line 1768
    .end local v5    # "child":Landroid/view/View;
    .end local v18    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v8    # "childrenCount":I
    .restart local v12    # "handled":Z
    .restart local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_3
    const/4 v9, 0x0

    .local v9, "customOrder":Z
    goto :goto_0

    .line 1793
    .end local v9    # "customOrder":Z
    .end local v12    # "handled":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childIndex":I
    .restart local v7    # "children":[Landroid/view/View;
    .restart local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v14    # "i":I
    :cond_4
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_6

    .line 1794
    if-eqz v19, :cond_5

    .line 1795
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1799
    :goto_8
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1800
    const/16 v21, 0x1

    .line 1801
    .restart local v21    # "wasHovered":Z
    goto :goto_3

    .line 1797
    .end local v21    # "wasHovered":Z
    :cond_5
    iget-object v11, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_8

    .line 1804
    :cond_6
    move-object/from16 v19, v13

    .line 1805
    .local v19, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v13, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_2

    .line 1812
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v21    # "wasHovered":Z
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_4

    .line 1823
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_8
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_0

    .line 1824
    if-nez v21, :cond_9

    .line 1826
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1827
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1828
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1830
    .local v12, "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1832
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    goto :goto_5

    .line 1836
    .end local v12    # "handled":Z
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .restart local v12    # "handled":Z
    goto/16 :goto_5

    .line 1772
    .end local v12    # "handled":Z
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 1859
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v14    # "i":I
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_b
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_c

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1863
    :cond_c
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1864
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1865
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1867
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_7

    .line 1876
    .end local v5    # "child":Landroid/view/View;
    :cond_d
    if-eqz v12, :cond_10

    const/16 v17, 0x0

    .line 1877
    .local v17, "newHoveredSelf":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1878
    if-eqz v17, :cond_e

    .line 1880
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1922
    :cond_e
    :goto_a
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_f

    .line 1923
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1927
    :cond_f
    return v12

    .line 1876
    .end local v17    # "newHoveredSelf":Z
    :cond_10
    const/16 v17, 0x1

    .restart local v17    # "newHoveredSelf":Z
    goto :goto_9

    .line 1883
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1885
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_13

    .line 1887
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1899
    :goto_b
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1902
    :cond_12
    if-eqz v17, :cond_e

    .line 1904
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_15

    .line 1906
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1907
    .restart local v12    # "handled":Z
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_a

    .line 1891
    .end local v12    # "handled":Z
    :cond_13
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_14

    .line 1892
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1894
    :cond_14
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1895
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1896
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1897
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_b

    .line 1908
    :cond_15
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_e

    .line 1910
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1911
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1912
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1913
    .restart local v12    # "handled":Z
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1915
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1916
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1619
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1623
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    .line 1624
    const/16 v1, 0x12

    .line 1623
    if-ne v0, v1, :cond_1

    .line 1625
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1626
    return v2

    .line 1628
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    .line 1629
    const/16 v1, 0x10

    .line 1628
    if-ne v0, v1, :cond_2

    .line 1630
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    return v2

    .line 1635
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 1636
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1638
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1607
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    .line 1608
    const/16 v1, 0x12

    .line 1607
    if-ne v0, v1, :cond_0

    .line 1609
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1610
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    .line 1611
    const/16 v1, 0x10

    .line 1610
    if-ne v0, v1, :cond_1

    .line 1612
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1614
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1643
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    .line 1644
    const/16 v1, 0x12

    .line 1643
    if-ne v0, v1, :cond_0

    .line 1645
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1646
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    .line 1647
    const/16 v1, 0x10

    .line 1646
    if-ne v0, v1, :cond_1

    .line 1648
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1650
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 2948
    const/4 v3, 0x0

    .line 2949
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2950
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 2951
    .local v3, "handled":Z
    if-eqz v3, :cond_0

    .line 2952
    return v3

    .line 2956
    .end local v3    # "handled":Z
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 2958
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2959
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 2960
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2961
    .local v0, "child":Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 2962
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2963
    .restart local v3    # "handled":Z
    if-eqz v3, :cond_1

    .line 2969
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2964
    return v3

    .line 2959
    .end local v3    # "handled":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2969
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2971
    return v6

    .line 2968
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    .line 2969
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2968
    throw v5
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 17
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 2981
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 2982
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v14

    if-nez v14, :cond_7

    .line 2983
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v14

    if-nez v14, :cond_7

    .line 2984
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2985
    .local v4, "childrenCount":I
    if-lez v4, :cond_7

    .line 2986
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 2987
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v12

    .line 2988
    .local v12, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v12, :cond_1

    .line 2989
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    .line 2990
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2991
    .local v3, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 2994
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3040
    .local v2, "childIndex":I
    :cond_0
    invoke-static {v12, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3042
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v5

    .line 3043
    .local v5, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 2991
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2988
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v5    # "cstructure":Landroid/view/ViewStructure;
    .end local v8    # "i":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "customOrder":Z
    goto :goto_0

    .line 2995
    .end local v6    # "customOrder":Z
    .restart local v3    # "children":[Landroid/view/View;
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    .line 2996
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v8

    .line 2997
    .restart local v2    # "childIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2998
    const/16 v15, 0x17

    .line 2997
    if-ge v14, v15, :cond_5

    .line 2999
    const-string/jumbo v14, "ViewGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3000
    const-string/jumbo v16, " of "

    .line 2999
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3004
    const/4 v6, 0x0

    .line 3005
    .restart local v6    # "customOrder":Z
    if-lez v8, :cond_0

    .line 3012
    new-array v11, v4, [I

    .line 3013
    .local v11, "permutation":[I
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3015
    .local v13, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_2

    .line 3016
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v9

    .line 3017
    aget v14, v11, v9

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3015
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3021
    :cond_2
    const/4 v10, 0x0

    .line 3022
    .local v10, "nextIndex":I
    move v9, v8

    :goto_3
    if-ge v9, v4, :cond_4

    .line 3023
    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3024
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 3026
    :cond_3
    aput v10, v11, v9

    .line 3027
    add-int/lit8 v10, v10, 0x1

    .line 3022
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3030
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3031
    .restart local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_0

    .line 3032
    aget v14, v11, v9

    aget-object v14, v3, v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3036
    .end local v6    # "customOrder":Z
    .end local v9    # "j":I
    .end local v10    # "nextIndex":I
    .end local v11    # "permutation":[I
    .end local v13    # "usedIndices":Landroid/util/SparseBooleanArray;
    :cond_5
    throw v7

    .line 3045
    .end local v2    # "childIndex":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2980
    .end local v3    # "children":[Landroid/view/View;
    .end local v4    # "childrenCount":I
    .end local v8    # "i":I
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3231
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3232
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3233
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3234
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3235
    aget-object v0, v1, v3

    .line 3236
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3237
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3234
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3230
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3206
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3207
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3208
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3209
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3210
    aget-object v0, v1, v3

    .line 3211
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3212
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3209
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3205
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    .prologue
    .line 2936
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2938
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2939
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2940
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2941
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2940
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2935
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    .line 3826
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3827
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3828
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3829
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3828
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3825
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .prologue
    .line 3835
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3836
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3837
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3838
    aget-object v0, v1, v3

    .line 3842
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3837
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3843
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3834
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 3817
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3818
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3819
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3820
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3819
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3816
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2890
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2891
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2892
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2893
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2894
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2889
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .prologue
    .line 1582
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1584
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1585
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1586
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1587
    aget-object v0, v1, v3

    .line 1588
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1586
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1581
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3251
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3250
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2151
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2152
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2155
    :cond_1
    const/16 v17, 0x0

    .line 2156
    .local v17, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 2157
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2158
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    .line 2161
    .local v6, "actionMasked":I
    if-nez v6, :cond_2

    .line 2165
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2166
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2171
    :cond_2
    if-eqz v6, :cond_3

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    .line 2173
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x80000

    and-int v31, v31, v32

    if-eqz v31, :cond_b

    const/16 v16, 0x1

    .line 2174
    .local v16, "disallowIntercept":Z
    :goto_0
    if-nez v16, :cond_c

    .line 2175
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 2176
    .local v21, "intercepted":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2188
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :goto_1
    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    .line 2189
    :cond_4
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2193
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_e

    .line 2194
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v6, v0, :cond_f

    const/4 v9, 0x1

    .line 2197
    .local v9, "canceled":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x200000

    and-int v31, v31, v32

    if-eqz v31, :cond_10

    const/16 v27, 0x1

    .line 2198
    .local v27, "split":Z
    :goto_3
    const/16 v23, 0x0

    .line 2199
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 2200
    .local v7, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v9, :cond_6

    if-eqz v21, :cond_11

    .line 2305
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-nez v31, :cond_22

    .line 2307
    const/16 v31, 0x0

    .line 2308
    const/16 v32, -0x1

    .line 2307
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    .line 2342
    .end local v17    # "handled":Z
    :cond_7
    if-nez v9, :cond_8

    .line 2343
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_28

    .line 2345
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2353
    .end local v4    # "action":I
    .end local v6    # "actionMasked":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v27    # "split":Z
    :cond_9
    :goto_5
    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2356
    :cond_a
    return v17

    .line 2173
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v17    # "handled":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2178
    .restart local v16    # "disallowIntercept":Z
    :cond_c
    const/16 v21, 0x0

    .local v21, "intercepted":Z
    goto :goto_1

    .line 2183
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :cond_d
    const/16 v21, 0x1

    .restart local v21    # "intercepted":Z
    goto :goto_1

    .line 2193
    .end local v21    # "intercepted":Z
    :cond_e
    const/4 v9, 0x1

    .restart local v9    # "canceled":Z
    goto :goto_2

    .line 2194
    .end local v9    # "canceled":Z
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "canceled":Z
    goto :goto_2

    .line 2197
    :cond_10
    const/16 v27, 0x0

    .restart local v27    # "split":Z
    goto :goto_3

    .line 2207
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_13

    .line 2208
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v12

    .line 2210
    :goto_6
    if-eqz v6, :cond_12

    .line 2211
    if-eqz v27, :cond_14

    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v6, v0, :cond_14

    .line 2213
    :cond_12
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2214
    .local v5, "actionIndex":I
    if-eqz v27, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    const/16 v32, 0x1

    shl-int v19, v32, v31

    .line 2219
    .local v19, "idBitsToAssign":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2221
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2222
    .local v14, "childrenCount":I
    if-eqz v14, :cond_1a

    .line 2223
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2224
    .local v29, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v30

    .line 2227
    .local v30, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2228
    .local v26, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v26, :cond_16

    .line 2229
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v15

    .line 2230
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2231
    .local v13, "children":[Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v18, "i":I
    :goto_a
    if-ltz v18, :cond_19

    .line 2232
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1, v15}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v11

    .line 2234
    .local v11, "childIndex":I
    move-object/from16 v0, v26

    invoke-static {v0, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2241
    .local v10, "child":Landroid/view/View;
    if-eqz v12, :cond_18

    .line 2242
    if-eq v12, v10, :cond_17

    .line 2231
    :goto_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_a

    .line 2208
    .end local v5    # "actionIndex":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v18    # "i":I
    .end local v19    # "idBitsToAssign":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_13
    const/4 v12, 0x0

    .local v12, "childWithAccessibilityFocus":Landroid/view/View;
    goto :goto_6

    .line 2212
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_14
    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v6, v0, :cond_6

    goto :goto_7

    .line 2215
    .restart local v5    # "actionIndex":I
    :cond_15
    const/16 v19, -0x1

    goto :goto_8

    .line 2228
    .restart local v14    # "childrenCount":I
    .restart local v19    # "idBitsToAssign":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_16
    const/4 v15, 0x0

    .local v15, "customOrder":Z
    goto :goto_9

    .line 2245
    .end local v15    # "customOrder":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    :cond_17
    const/4 v12, 0x0

    .line 2246
    .restart local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    .line 2249
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_18
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 2250
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 2255
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2256
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v23, :cond_1c

    .line 2259
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2289
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_19
    :goto_c
    if-eqz v26, :cond_1a

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2292
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_1a
    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 2296
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_d
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_21

    .line 2297
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    goto :goto_d

    .line 2251
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v18    # "i":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_1b
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto :goto_b

    .line 2263
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1c
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2264
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_20

    .line 2266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2267
    if-eqz v26, :cond_1f

    .line 2269
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_e
    move/from16 v0, v22

    if-ge v0, v14, :cond_1d

    .line 2270
    aget-object v31, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object/from16 v32, v0

    aget-object v32, v32, v22

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 2271
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2278
    .end local v22    # "j":I
    :cond_1d
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2280
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2281
    const/4 v7, 0x1

    .line 2282
    goto/16 :goto_c

    .line 2269
    .restart local v22    # "j":I
    :cond_1e
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 2276
    .end local v22    # "j":I
    :cond_1f
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_f

    .line 2287
    :cond_20
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto/16 :goto_b

    .line 2299
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto/16 :goto_4

    .line 2312
    .end local v5    # "actionIndex":I
    .end local v14    # "childrenCount":I
    .end local v19    # "idBitsToAssign":I
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_22
    const/16 v25, 0x0

    .line 2313
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    .line 2314
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .local v28, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_10
    if-eqz v28, :cond_7

    .line 2315
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v24, v0

    .line 2316
    .local v24, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_24

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_24

    .line 2317
    const/16 v17, 0x1

    .line 2336
    :cond_23
    move-object/from16 v25, v28

    .line 2337
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v28, v24

    goto :goto_10

    .line 2319
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    :cond_24
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_26

    .line 2320
    move/from16 v8, v21

    .line 2322
    :goto_11
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v32, v0

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_25

    .line 2323
    const/16 v17, 0x1

    .line 2325
    :cond_25
    if-eqz v8, :cond_23

    .line 2326
    if-nez v25, :cond_27

    .line 2327
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2331
    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2332
    move-object/from16 v28, v24

    .line 2333
    goto :goto_10

    .line 2319
    :cond_26
    const/4 v8, 0x1

    .local v8, "cancelChild":Z
    goto :goto_11

    .line 2329
    .end local v8    # "cancelChild":Z
    :cond_27
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_12

    .line 2344
    .end local v17    # "handled":Z
    .end local v24    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_28
    const/16 v31, 0x7

    move/from16 v0, v31

    if-eq v6, v0, :cond_8

    .line 2346
    if-eqz v27, :cond_9

    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v6, v0, :cond_9

    .line 2347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2348
    .restart local v5    # "actionIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    const/16 v32, 0x1

    shl-int v20, v32, v31

    .line 2349
    .local v20, "idBitsToRemove":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_5
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1655
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1659
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    .line 1660
    const/16 v1, 0x12

    .line 1659
    if-ne v0, v1, :cond_1

    .line 1661
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    return v2

    .line 1664
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    .line 1665
    const/16 v1, 0x10

    .line 1664
    if-ne v0, v1, :cond_2

    .line 1666
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1667
    return v2

    .line 1671
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 1672
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1674
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 960
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4310
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4311
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4312
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 4309
    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4326
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4327
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4328
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 4325
    :cond_0
    return-void
.end method

.method dispatchVisibilityAggregated(Z)Z
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 1296
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1297
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1298
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1299
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1303
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1304
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    return p1
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1276
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1277
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1278
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1279
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1280
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1193
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1194
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1195
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1196
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1197
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1572
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1573
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1574
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1575
    aget-object v0, v1, v3

    .line 1576
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1574
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1569
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 1286
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1287
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1288
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1289
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1290
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3727
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 6435
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 6437
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 6438
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 6439
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6443
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6444
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6446
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 6447
    aget-object v0, v1, v3

    .line 6448
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 6449
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 6446
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6434
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7936
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7938
    const-string/jumbo v2, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7939
    const-string/jumbo v2, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7940
    const-string/jumbo v2, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7941
    const-string/jumbo v2, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7942
    const-string/jumbo v2, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7944
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7945
    .local v1, "n":I
    const-string/jumbo v2, "meta:__childCount__"

    int-to-short v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 7946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7948
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7935
    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 6287
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 6288
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6289
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6290
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6292
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 6293
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 6292
    if-eqz v1, :cond_2

    .line 6294
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6303
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6286
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 6296
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 6297
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6299
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 6300
    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    return-object p0

    .line 1050
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1053
    :cond_1
    return-object v1
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 1522
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1523
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1524
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1525
    aget-object v0, v1, v3

    .line 1526
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1524
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1530
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1531
    return-object v0

    .line 1534
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6875
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v3, :cond_0

    .line 6876
    return-void

    .line 6878
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 6879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6880
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6881
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6882
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 6880
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6874
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 7
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1169
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1170
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1171
    return-object v3

    .line 1174
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1175
    return-object v6

    .line 1178
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1179
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1180
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 1181
    aget-object v0, v1, v4

    .line 1182
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1183
    if-eqz v3, :cond_2

    .line 1184
    return-object v3

    .line 1180
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1188
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-object v6
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 3997
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3998
    return-object p0

    .line 4001
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4002
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4004
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4005
    aget-object v2, v3, v0

    .line 4007
    .local v2, "v":Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 4008
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4010
    if-eqz v2, :cond_1

    .line 4011
    return-object v2

    .line 4004
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4016
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 3943
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    .line 3944
    return-object p0

    .line 3947
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3948
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3950
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3951
    aget-object v2, v3, v0

    .line 3953
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3954
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3956
    if-eqz v2, :cond_1

    .line 3957
    return-object v2

    .line 3950
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3962
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 3970
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3971
    return-object p0

    .line 3974
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3975
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3977
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3978
    aget-object v2, v3, v0

    .line 3980
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3981
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3983
    if-eqz v2, :cond_1

    .line 3984
    return-object v2

    .line 3977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3989
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1154
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1155
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1156
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1157
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1158
    aget-object v0, v1, v3

    .line 1159
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1160
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 1161
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1153
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v2, 0x10000

    .line 6218
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6219
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 6220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6221
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6223
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 6224
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6227
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6228
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6232
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6236
    :cond_2
    :goto_0
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 6237
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 6240
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6242
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6217
    :cond_3
    return-void

    .line 6233
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 874
    :cond_1
    return-object v1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 747
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_0

    .line 760
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 6366
    iget v10, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_0

    move v6, v9

    .line 6367
    .local v6, "meOpaque":Z
    :cond_0
    if-eqz v6, :cond_1

    if-nez p1, :cond_1

    .line 6369
    return v9

    .line 6371
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 6377
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6378
    .local v3, "childrenCount":I
    const/4 v7, 0x1

    .line 6379
    .local v7, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_6

    .line 6380
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 6381
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_4

    .line 6382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 6383
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6384
    .local v2, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 6385
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    .line 6386
    .local v1, "childIndex":I
    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 6387
    .local v0, "child":Landroid/view/View;
    iget v10, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 6388
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 6389
    const/4 v7, 0x0

    .line 6384
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6381
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    :cond_4
    const/4 v4, 0x0

    .local v4, "customOrder":Z
    goto :goto_0

    .line 6393
    .end local v4    # "customOrder":Z
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 6395
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    if-nez v6, :cond_7

    .end local v7    # "noneOfTheChildrenAreTransparent":Z
    :goto_2
    return v7

    .restart local v7    # "noneOfTheChildrenAreTransparent":Z
    :cond_7
    move v7, v9

    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 5943
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5914
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5932
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3088
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6010
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 6011
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 6013
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 5999
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 3612
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 3928
    const/4 v0, 0x0

    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 3932
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 3933
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 3935
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 5493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    .prologue
    .line 5507
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5508
    .local v8, "rect":Landroid/graphics/RectF;
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5510
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v11

    if-nez v11, :cond_0

    .line 5511
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5514
    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mLeft:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v4, v11, v12

    .line 5515
    .local v4, "dx":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mTop:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v5, v11, v12

    .line 5517
    .local v5, "dy":I
    int-to-float v11, v4

    int-to-float v12, v5

    invoke-virtual {v8, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5519
    if-eqz p3, :cond_2

    .line 5520
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v11

    if-nez v11, :cond_1

    .line 5521
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v11, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 5523
    .local v7, "position":[F
    :goto_1
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const/4 v12, 0x0

    aput v11, v7, v12

    .line 5524
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 5525
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5526
    const/4 v11, 0x0

    aget v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->x:I

    .line 5527
    const/4 v11, 0x1

    aget v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->y:I

    .line 5529
    .end local v7    # "position":[F
    :cond_1
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v4

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->x:I

    .line 5530
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v5

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->y:I

    .line 5533
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int v10, v11, v12

    .line 5534
    .local v10, "width":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mBottom:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int v6, v11, v12

    .line 5536
    .local v6, "height":I
    const/4 v9, 0x1

    .line 5537
    .local v9, "rectIsVisible":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v11, :cond_3

    .line 5538
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v11, v11, Landroid/view/ViewGroup;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v11

    .line 5537
    if-eqz v11, :cond_4

    .line 5540
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v10

    int-to-float v14, v6

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    .line 5543
    .end local v9    # "rectIsVisible":Z
    :cond_4
    if-nez p4, :cond_5

    if-eqz v9, :cond_6

    .line 5544
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v11, v11, 0x22

    const/16 v12, 0x22

    if-ne v11, v12, :cond_6

    .line 5546
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v12, v12

    .line 5547
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v13, v10, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v14, v6, v14

    int-to-float v14, v14

    .line 5546
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    .line 5550
    :cond_6
    if-nez p4, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v11, :cond_8

    .line 5552
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    .line 5553
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    .line 5552
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    .line 5555
    :cond_8
    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 5556
    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 5555
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 5558
    if-nez p4, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v11, :cond_a

    .line 5559
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v11, v11, Landroid/view/ViewGroup;

    if-eqz v11, :cond_d

    .line 5560
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v9

    .line 5566
    :cond_a
    :goto_2
    return v9

    .line 5507
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "height":I
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v10    # "width":I
    :cond_b
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    goto/16 :goto_0

    .line 5522
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v8    # "rect":Landroid/graphics/RectF;
    :cond_c
    const/4 v11, 0x2

    new-array v7, v11, [F

    .restart local v7    # "position":[F
    goto/16 :goto_1

    .line 5563
    .end local v7    # "position":[F
    .restart local v6    # "height":I
    .restart local v10    # "width":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v11, v0, v1, v2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    .local v9, "rectIsVisible":Z
    goto :goto_2
.end method

.method public getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3755
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3812
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    move-object v0, p0

    .line 1015
    :goto_0
    if-eqz v0, :cond_2

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    return-object v0

    .line 1019
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 1021
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 686
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 5637
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 6430
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 3

    .prologue
    .line 5879
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5880
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 5881
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    .line 5882
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5884
    .end local v0    # "inheritedLayoutMode":I
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v1

    .line 5881
    :cond_1
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    goto :goto_0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 4788
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 6848
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method getNumChildrenForAccessibility()I
    .locals 4

    .prologue
    .line 3124
    const/4 v2, 0x0

    .line 3125
    .local v2, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3126
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3127
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3128
    add-int/lit8 v2, v2, 0x1

    .line 3125
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3129
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 3130
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 3134
    :cond_2
    return v2
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .prologue
    .line 3591
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 3592
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 3594
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .prologue
    .line 3590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5816
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 3732
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 3736
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x22

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 3737
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3738
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3739
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 3740
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3741
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3731
    :cond_0
    return-void

    .line 3736
    .end local v0    # "clipToPadding":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1144
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 4152
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4153
    :cond_0
    return-object v1

    .line 4155
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getTransientViewCount()I
    .locals 1

    .prologue
    .line 4119
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTransientViewIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4134
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4135
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 4134
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4137
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 715
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 717
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 712
    return-void
.end method

.method public hasFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1031
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1058
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_0

    .line 1059
    return v6

    .line 1062
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1063
    return v7

    .line 1066
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 1067
    .local v3, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v3, v5, :cond_3

    .line 1068
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1069
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1071
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 1072
    aget-object v0, v1, v4

    .line 1073
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1074
    return v7

    .line 1071
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1079
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_3
    return v6
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5982
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5983
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5984
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5985
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 5986
    return v2

    .line 5984
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5989
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 3197
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3198
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3194
    :goto_0
    return-void

    .line 3200
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 5124
    move-object/from16 v14, p0

    .line 5126
    .local v14, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5127
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_a

    .line 5131
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    .line 5132
    const/16 v20, 0x40

    .line 5131
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 5137
    .local v9, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 5138
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_0

    if-eqz v9, :cond_c

    :cond_0
    const/4 v10, 0x0

    .line 5142
    .local v10, "isOpaque":Z
    :goto_1
    if-eqz v10, :cond_d

    const/high16 v13, 0x400000

    .line 5144
    .local v13, "opaqueFlag":I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 5145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5146
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v19, v0

    const v20, -0x8001

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5149
    :cond_1
    iget-object v11, v6, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5150
    .local v11, "location":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    const/16 v20, 0x0

    aput v19, v11, v20

    .line 5151
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v11, v20

    .line 5152
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 5153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 5154
    :cond_2
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5155
    .local v7, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5157
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 5158
    iget-object v15, v6, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 5159
    .local v15, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v17

    .line 5160
    .local v17, "transformed":Z
    if-eqz v17, :cond_e

    .line 5161
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    .line 5162
    .local v16, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v15}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5163
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-nez v19, :cond_3

    .line 5164
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 5172
    .end local v15    # "t":Landroid/view/animation/Transformation;
    .end local v17    # "transformed":Z
    :cond_3
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5173
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    .line 5174
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 5175
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 5176
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 5173
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5180
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_4
    const/16 v18, 0x0

    .line 5181
    .local v18, "view":Landroid/view/View;
    instance-of v0, v14, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v18, v14

    .line 5182
    check-cast v18, Landroid/view/View;

    .line 5185
    .end local v18    # "view":Landroid/view/View;
    :cond_5
    if-eqz v9, :cond_6

    .line 5186
    if-eqz v18, :cond_10

    .line 5187
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5195
    :cond_6
    :goto_4
    if-eqz v18, :cond_8

    .line 5196
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x3000

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 5197
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getSolidColor()I

    move-result v19

    if-nez v19, :cond_7

    .line 5198
    const/high16 v13, 0x200000

    .line 5200
    :cond_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    const/high16 v20, 0x600000

    and-int v19, v19, v20

    const/high16 v20, 0x200000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 5201
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    const v20, -0x600001

    and-int v19, v19, v20

    or-int v19, v19, v13

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5205
    :cond_8
    move-object/from16 v0, p2

    invoke-interface {v14, v11, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v14

    .line 5206
    if-eqz v18, :cond_9

    .line 5208
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 5209
    .local v12, "m":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-nez v19, :cond_9

    .line 5210
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5211
    .restart local v7    # "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5212
    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5213
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    .line 5214
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 5215
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 5216
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 5213
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5219
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v12    # "m":Landroid/graphics/Matrix;
    :cond_9
    if-nez v14, :cond_4

    .line 5123
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .end local v9    # "drawAnimation":Z
    .end local v10    # "isOpaque":Z
    .end local v11    # "location":[I
    .end local v13    # "opaqueFlag":I
    :cond_a
    return-void

    .line 5131
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "drawAnimation":Z
    goto/16 :goto_0

    .line 5139
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    if-nez v19, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    goto/16 :goto_1

    .line 5142
    .restart local v10    # "isOpaque":Z
    :cond_d
    const/high16 v13, 0x200000

    .restart local v13    # "opaqueFlag":I
    goto/16 :goto_2

    .line 5167
    .restart local v7    # "boundingRect":Landroid/graphics/RectF;
    .restart local v11    # "location":[I
    .restart local v15    # "t":Landroid/view/animation/Transformation;
    .restart local v17    # "transformed":Z
    :cond_e
    move-object/from16 v16, v8

    .restart local v16    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 5170
    .end local v15    # "t":Landroid/view/animation/Transformation;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v17    # "transformed":Z
    :cond_f
    move-object/from16 v16, v8

    .restart local v16    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 5188
    .end local v7    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_10
    instance-of v0, v14, Landroid/view/ViewRootImpl;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v14

    .line 5189
    check-cast v19, Landroid/view/ViewRootImpl;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_4
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5233
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 5234
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 5235
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    .line 5236
    const/16 v3, 0x80

    .line 5235
    if-eq v2, v3, :cond_4

    .line 5237
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    .line 5238
    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    .line 5237
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 5239
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 5240
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 5243
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 5244
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 5246
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_2

    .line 5247
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5248
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5251
    :cond_2
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5253
    aput v0, p1, v5

    .line 5254
    aput v1, p1, v6

    .line 5256
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_3

    .line 5257
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5260
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v2

    .line 5263
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5265
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 5266
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 5267
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_6

    .line 5268
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5274
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_5

    .line 5275
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5278
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v2

    .line 5271
    :cond_6
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 5282
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 4
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    const/4 v3, -0x1

    .line 5853
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v2, v3, :cond_0

    .line 5854
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-ne v2, p1, :cond_1

    .line 5856
    :cond_0
    return-void

    .line 5855
    :cond_1
    const/high16 v2, 0x800000

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v2

    .line 5853
    if-nez v2, :cond_0

    .line 5858
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5861
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5862
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 5861
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5852
    :cond_2
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2

    .prologue
    .line 5690
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2

    .prologue
    .line 5655
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5767
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutModeOptical()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3304
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    .prologue
    .line 6360
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2693
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowingContextMenuWithCoords()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 778
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2562
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v1

    .line 2563
    .local v1, "point":[F
    aput p1, v1, v4

    .line 2564
    aput p2, v1, v5

    .line 2565
    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 2566
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2567
    .local v0, "isInView":Z
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 2568
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2570
    :cond_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2709
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 2710
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 2712
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 2713
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    return v1

    .line 2714
    :cond_3
    if-eqz v0, :cond_4

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v0, v3, :cond_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6252
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 6457
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6458
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6459
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6460
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6461
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6456
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5571
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5578
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 5570
    :goto_0
    return-void

    .line 5572
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    .line 5573
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 5575
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .prologue
    .line 1221
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1222
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1223
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1224
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1225
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1220
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 6047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 6050
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6049
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 6052
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6051
    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 6054
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 6046
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 6074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6077
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 6078
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6076
    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 6080
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    .line 6081
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6079
    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 6083
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 6073
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 6026
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6027
    .local v3, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6028
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 6029
    aget-object v0, v1, v2

    .line 6030
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 6031
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6028
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6025
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1544
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v2, v4, Landroid/view/DragEvent;->mX:F

    .line 1545
    .local v2, "tx":F
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v3, v4, Landroid/view/DragEvent;->mY:F

    .line 1547
    .local v3, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v1

    .line 1548
    .local v1, "point":[F
    aput v2, v1, v6

    .line 1549
    aput v3, v1, v7

    .line 1550
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1552
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v5, v1, v6

    iput v5, v4, Landroid/view/DragEvent;->mX:F

    .line 1553
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v5, v1, v7

    iput v5, v4, Landroid/view/DragEvent;->mY:F

    .line 1554
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v4}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1555
    .local v0, "canAccept":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v2, v4, Landroid/view/DragEvent;->mX:F

    .line 1556
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v3, v4, Landroid/view/DragEvent;->mY:F

    .line 1557
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v6, v4, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1558
    if-eqz v0, :cond_0

    .line 1559
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1561
    iget v4, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1565
    :cond_0
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 3095
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3096
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 3092
    :cond_0
    :goto_0
    return-void

    .line 3097
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 3099
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3100
    :catch_0
    move-exception v0

    .line 3101
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3102
    const-string/jumbo v3, " does not fully implement ViewParent"

    .line 3101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 5471
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5472
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5473
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 5475
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5476
    aget-object v4, v0, v2

    .line 5477
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 5478
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 5479
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_0

    .line 5480
    const/4 v3, 0x1

    .line 5481
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 5475
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5485
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_2

    .line 5486
    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 5488
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5470
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 5388
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5387
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5409
    if-ne p1, p0, :cond_0

    .line 5410
    return-void

    .line 5413
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5416
    .local v2, "theParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_4

    .line 5417
    instance-of v3, v2, Landroid/view/View;

    .line 5416
    if-eqz v3, :cond_4

    .line 5418
    if-eq v2, p0, :cond_4

    .line 5420
    if-eqz p3, :cond_2

    .line 5421
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    .line 5422
    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    .line 5421
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5423
    if-eqz p4, :cond_1

    move-object v1, v2

    .line 5424
    check-cast v1, Landroid/view/View;

    .line 5425
    .local v1, "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    .line 5426
    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    .line 5425
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5427
    .local v0, "intersected":Z
    if-nez v0, :cond_1

    .line 5428
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_1
    :goto_1
    move-object p1, v2

    .line 5444
    check-cast p1, Landroid/view/View;

    .line 5445
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 5432
    :cond_2
    if-eqz p4, :cond_3

    move-object v1, v2

    .line 5433
    check-cast v1, Landroid/view/View;

    .line 5434
    .restart local v1    # "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    .line 5435
    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    .line 5434
    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5436
    .restart local v0    # "intersected":Z
    if-nez v0, :cond_3

    .line 5437
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5440
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    .line 5441
    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    .line 5440
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 5450
    :cond_4
    if-ne v2, p0, :cond_6

    .line 5451
    if-eqz p3, :cond_5

    .line 5452
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    .line 5453
    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    .line 5452
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5406
    :goto_2
    return-void

    .line 5455
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    .line 5456
    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    .line 5455
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 5459
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 5398
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5397
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 4349
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4350
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4348
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 1250
    if-nez p3, :cond_2

    .line 1251
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1267
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1248
    :cond_1
    return-void

    .line 1253
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1254
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1260
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 6467
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_0

    .line 6468
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    return-object v5

    .line 6471
    :cond_0
    const/4 v3, 0x0

    .line 6472
    .local v3, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6473
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 6474
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6476
    .local v0, "childState":[I
    if-eqz v0, :cond_1

    .line 6477
    array-length v5, v0

    add-int/2addr v3, v5

    .line 6473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6481
    .end local v0    # "childState":[I
    :cond_2
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 6483
    .local v4, "state":[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 6484
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6486
    .restart local v0    # "childState":[I
    if-eqz v0, :cond_3

    .line 6487
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 6483
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6491
    .end local v0    # "childState":[I
    :cond_4
    return-object v4
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0xff

    const/16 v13, 0x8

    .line 3393
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 3397
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3398
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3400
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 3401
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3402
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_0

    .line 3403
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v12

    .line 3406
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v12, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    .line 3407
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v12, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    .line 3408
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v12, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    .line 3409
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p1

    .line 3405
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3400
    .end local v12    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3416
    .end local v10    # "c":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v7, v6, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3417
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3419
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3424
    const/16 v0, 0x7f

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3425
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3427
    invoke-direct {p0, v13}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v8

    .line 3428
    .local v8, "lineLength":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v9

    .line 3429
    .local v9, "lineWidth":I
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 3430
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3431
    .restart local v10    # "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_2

    .line 3432
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, p1

    move-object v7, v1

    invoke-static/range {v2 .. v9}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 3429
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3392
    .end local v10    # "c":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3384
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3385
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3382
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4355
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4356
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4354
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3069
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3070
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3071
    return-void

    .line 3073
    :cond_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_2

    .line 3074
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3075
    .local v1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3076
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3077
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3078
    .local v2, "childrenForAccessibilityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3079
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3080
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 3078
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3082
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3068
    .end local v1    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "childrenForAccessibilityCount":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2035
    const/16 v3, 0x2002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2037
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2038
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2039
    .local v2, "y":F
    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    .line 2040
    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v3

    .line 2039
    if-eqz v3, :cond_1

    .line 2041
    const/4 v3, 0x1

    return v3

    .line 2044
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2795
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2797
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    .line 2795
    if-eqz v0, :cond_0

    .line 2798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v0

    .line 2795
    if-eqz v0, :cond_0

    .line 2799
    return v3

    .line 2801
    :cond_0
    return v2
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6824
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 6833
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3150
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 6815
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 6813
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 6806
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 6804
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6783
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 6782
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 2861
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2862
    .local v2, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2863
    const/4 v6, 0x0

    .line 2864
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2865
    .local v5, "increment":I
    move v3, v2

    .line 2871
    .local v3, "end":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2872
    .local v1, "children":[Landroid/view/View;
    move v4, v6

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2873
    aget-object v0, v1, v4

    .line 2874
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2875
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2876
    const/4 v7, 0x1

    return v7

    .line 2867
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2868
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2869
    .restart local v5    # "increment":I
    const/4 v3, -0x1

    .restart local v3    # "end":I
    goto :goto_0

    .line 2872
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v4    # "i":I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2880
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v8
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 912
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 915
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 1679
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1680
    .local v9, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1681
    .local v10, "y":F
    invoke-virtual {p0, v9, v10}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1682
    :cond_0
    iget-object v11, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/16 v12, 0x3e8

    invoke-static {v11, v12}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v11

    return-object v11

    .line 1685
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1686
    .local v3, "childrenCount":I
    if-eqz v3, :cond_6

    .line 1687
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1688
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_3

    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 1690
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1691
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 1692
    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    .line 1693
    .local v1, "childIndex":I
    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1694
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v6

    .line 1695
    .local v6, "point":Landroid/graphics/PointF;
    invoke-virtual {p0, v9, v10, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1697
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v7

    .line 1698
    .local v7, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v7, :cond_5

    .line 1699
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1700
    :cond_2
    return-object v7

    .line 1688
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "point":Landroid/graphics/PointF;
    .end local v7    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_3
    const/4 v4, 0x0

    .local v4, "customOrder":Z
    goto :goto_0

    .line 1691
    .end local v4    # "customOrder":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childIndex":I
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v6    # "point":Landroid/graphics/PointF;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1705
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v6    # "point":Landroid/graphics/PointF;
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1710
    .end local v2    # "children":[Landroid/view/View;
    .end local v5    # "i":I
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v11

    return-object v11
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6852
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6775
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 6796
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 6793
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4322
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4338
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1322
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1324
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 4856
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4857
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4858
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4855
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 4875
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4876
    .local v2, "count":I
    if-gtz v2, :cond_0

    .line 4877
    return-void

    .line 4880
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4881
    .local v0, "children":[Landroid/view/View;
    iput v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4883
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4884
    .local v4, "focused":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_6

    const/4 v3, 0x1

    .line 4885
    .local v3, "detach":Z
    :goto_0
    const/4 v1, 0x0

    .line 4887
    .local v1, "clearChildFocus":Z
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4889
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 4890
    aget-object v6, v0, v5

    .line 4892
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_1

    .line 4893
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4896
    :cond_1
    if-ne v6, v4, :cond_2

    .line 4897
    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4898
    const/4 v1, 0x1

    .line 4901
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4903
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4904
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4906
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_3

    .line 4907
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 4906
    if-eqz v7, :cond_7

    .line 4908
    :cond_3
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4913
    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4914
    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4917
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4919
    iput-object v8, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4920
    aput-object v8, v0, v5

    .line 4889
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4884
    .end local v1    # "clearChildFocus":Z
    .end local v3    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "detach":Z
    goto :goto_0

    .line 4909
    .restart local v1    # "clearChildFocus":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_4

    .line 4910
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 4923
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_9

    .line 4924
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_9

    .line 4926
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4874
    :cond_9
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 4952
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 4953
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4956
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4957
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4960
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4962
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4963
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4965
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4967
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4972
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4976
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4951
    return-void

    .line 4966
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4965
    if-nez v0, :cond_2

    .line 4968
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_3

    .line 4969
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 4092
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_0

    .line 4093
    return-void

    .line 4095
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4096
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4097
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 4098
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4099
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4100
    iput-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4101
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4102
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4103
    return-void

    .line 4096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4091
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4620
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4621
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4619
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4665
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 4666
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4664
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4637
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 4636
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4681
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 4682
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4683
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4680
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4652
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 4651
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 726
    return-void

    .line 730
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 733
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 734
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 738
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 740
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 721
    :cond_3
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    const/high16 v2, 0x80000

    const/4 v0, 0x0

    .line 2740
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2742
    return-void

    .line 2745
    :cond_1
    if-eqz p1, :cond_3

    .line 2746
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2752
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 2753
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2738
    :cond_2
    return-void

    .line 2748
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2824
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2826
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    .line 2838
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2828
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 2830
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2831
    .local v1, "took":Z
    if-eqz v1, :cond_0

    .end local v1    # "took":Z
    :goto_0
    return v1

    .restart local v1    # "took":Z
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2834
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2835
    .restart local v1    # "took":Z
    if-eqz v1, :cond_1

    .end local v1    # "took":Z
    :goto_1
    return v1

    .restart local v1    # "took":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_1

    .line 2826
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 885
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 886
    return v2

    .line 888
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 889
    .local v1, "propagate":Z
    if-nez v1, :cond_1

    .line 890
    return v2

    .line 892
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 6555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 6556
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 6557
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 6554
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6400
    if-eqz p1, :cond_0

    .line 6401
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6402
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6403
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6399
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    .prologue
    .line 6746
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6748
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6749
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6750
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6751
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6752
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6749
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6745
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .prologue
    .line 6682
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6684
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6685
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6686
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6687
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6688
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6681
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .prologue
    .line 6730
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6732
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6733
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6734
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6735
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6736
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6733
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6729
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .prologue
    .line 6714
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6716
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6717
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6718
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6719
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6720
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6717
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6713
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 6698
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6700
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6701
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6702
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6703
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6704
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6697
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 3109
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3110
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3111
    .local v1, "children":[Landroid/view/View;
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3112
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3113
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3108
    :cond_0
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    .prologue
    .line 6654
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 6655
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6656
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6657
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6658
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6656
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6659
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    goto :goto_1

    .line 6653
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    .line 6585
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    .line 6586
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6587
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6589
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6590
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6591
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 6588
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6595
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    .prologue
    .line 6669
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6671
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6672
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6673
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6668
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .prologue
    .line 6639
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 6640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6641
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6642
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6643
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6641
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6644
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    goto :goto_1

    .line 6638
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .prologue
    .line 6566
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v3

    .line 6568
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6569
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6570
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6571
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6572
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6573
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6570
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6577
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .prologue
    .line 6621
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    .line 6622
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6623
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6624
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6625
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6626
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6627
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 6624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6631
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    .prologue
    .line 6603
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    .line 6604
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6606
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6607
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6608
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6609
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    .line 6606
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6613
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 5614
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5613
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    .prologue
    .line 6501
    if-eqz p1, :cond_0

    .line 6502
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6507
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 6500
    return-void

    .line 6504
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z

    .prologue
    .line 5714
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5713
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5673
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5672
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3260
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 3261
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3262
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3263
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3264
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3259
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5784
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5783
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5752
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5751
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3767
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 3768
    .local v2, "previousValue":Z
    :goto_0
    if-eq p1, v2, :cond_3

    .line 3769
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v4, :cond_2

    .line 3771
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3772
    .local v0, "child":Landroid/view/View;
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v4, :cond_0

    .line 3773
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v4, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 3770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3767
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "previousValue":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3776
    .restart local v1    # "i":I
    .restart local v2    # "previousValue":Z
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3766
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2
    .param p1, "clipToPadding"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3792
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3793
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3791
    :cond_0
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    .prologue
    .line 698
    sparse-switch p1, :sswitch_data_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 708
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 697
    return-void

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .prologue
    .line 5624
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 5625
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 5626
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5623
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 6542
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6541
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    .prologue
    .line 5898
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 5899
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 5900
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5897
    :cond_0
    return-void

    .line 5900
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 4767
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 4768
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 4769
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 4770
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 4772
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 4773
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_1

    .line 4774
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 4766
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 2681
    if-eqz p1, :cond_0

    .line 2682
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2677
    :goto_0
    return-void

    .line 2684
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 4306
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4305
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I

    .prologue
    .line 5831
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 5830
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3912
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3911
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .prologue
    .line 1124
    if-eqz p1, :cond_1

    .line 1125
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1128
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1129
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1130
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1123
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setTransitionGroup(Z)V
    .locals 2
    .param p1, "isTransitionGroup"    # Z

    .prologue
    .line 2729
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2730
    if-eqz p1, :cond_0

    .line 2731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2728
    :goto_0
    return-void

    .line 2733
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method shouldBlockFocusForTouchscreen()Z
    .locals 2

    .prologue
    .line 1148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 6767
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    return v0

    .line 771
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const v2, -0x20000001

    .line 784
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 785
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 789
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 786
    return v0

    .line 789
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 791
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    .line 788
    :catchall_0
    move-exception v0

    .line 789
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 788
    throw v0

    .line 791
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const v2, -0x10000001

    .line 796
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 799
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 802
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 800
    return-object v0

    .line 801
    :catchall_0
    move-exception v0

    .line 802
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 801
    throw v0

    .line 806
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    const v4, -0x8000001

    .line 813
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 814
    if-nez p3, :cond_0

    .line 817
    :try_start_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 818
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 820
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 822
    sget-object v2, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v2, :cond_0

    .line 823
    return-object v1

    .line 819
    .end local v1    # "mode":Landroid/view/ActionMode;
    :catchall_0
    move-exception v2

    .line 820
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 819
    throw v2

    .line 826
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 828
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    .line 829
    :catch_0
    move-exception v0

    .line 831
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    return-object v2

    .line 834
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    return-object v5
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 5601
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 5602
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5600
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6268
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 6269
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 6272
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6267
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .prologue
    .line 6342
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 6343
    if-nez p1, :cond_0

    .line 6344
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    .line 6345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6341
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2577
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2578
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2580
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2581
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2576
    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 995
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 996
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 991
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 999
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 1594
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1596
    .local v0, "changed":Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1597
    .local v3, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1598
    .local v2, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1599
    aget-object v1, v2, v4

    .line 1600
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1598
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1602
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4263
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4266
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 4267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4269
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4262
    return-void
.end method

.method public dispatchStatusBarTap()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "handled":Z
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->smoothScrollToPosition(I)V

    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchStatusBarTap()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    invoke-super {p0}, Landroid/view/View;->dispatchStatusBarTap()Z

    move-result v2

    .end local v2    # "handled":Z
    :cond_3
    return v2

    .restart local v2    # "handled":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
