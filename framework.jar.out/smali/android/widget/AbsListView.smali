.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 706
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 787
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 237
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 270
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 295
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 300
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 310
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 321
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 326
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 331
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 336
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 341
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 351
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 399
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 430
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 473
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 493
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 495
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 521
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 524
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 527
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 535
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 536
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 583
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 608
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 610
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 612
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 613
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 615
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 621
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 631
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 679
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 788
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 790
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 792
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 793
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 794
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 795
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 796
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 799
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 800
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 804
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 807
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 270
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 295
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 300
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 310
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 315
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 321
    new-instance v14, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 326
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 331
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 336
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 341
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 346
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 351
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 399
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 430
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 473
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 493
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 495
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 521
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 524
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 527
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 535
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 536
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 583
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 608
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 610
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 612
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 613
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 615
    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 621
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 631
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 679
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 808
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 812
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 815
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 816
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 817
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 820
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 823
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 824
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 826
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 827
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 829
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 830
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 832
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 834
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 836
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 837
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 839
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 840
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 842
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 843
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 845
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 846
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 848
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 849
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 852
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 853
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1202(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2238
    .local v2, "count":I
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v5, v6, :cond_1

    move v0, v3

    .line 2241
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2242
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2243
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v0, v3

    .line 2246
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollDown":Z
    :cond_1
    move v0, v4

    .line 2238
    goto :goto_0

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v4

    .line 2243
    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2220
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    move v0, v2

    .line 2223
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2224
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 2225
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2226
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 2230
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 2220
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 2226
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 4783
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4784
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4785
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 4801
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4803
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1233
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1234
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return v1

    .line 1235
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1237
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4775
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4776
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4777
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4778
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 4780
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 5786
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 5787
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 5788
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5789
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5790
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5791
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5792
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5793
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5794
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5795
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 5796
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5797
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 5799
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 5800
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302dc

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5804
    :goto_0
    return-void

    .line 5802
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302dd

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 5443
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5444
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5446
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2679
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2680
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2681
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2682
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2684
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6027
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6028
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6029
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6031
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 5489
    sparse-switch p2, :sswitch_data_0

    .line 5522
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5491
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5492
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5493
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5494
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5526
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 5527
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 5528
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5497
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5498
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5499
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5500
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5501
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5503
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5504
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5505
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5506
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5507
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5509
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5510
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5511
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5512
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5513
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5516
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5517
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5518
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5519
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5520
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5489
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 5807
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 5808
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5809
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10900e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 5814
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 5816
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 5817
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5819
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 857
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 858
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 859
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 860
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 861
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 863
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 864
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 865
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 866
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 867
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 868
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 870
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 871
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4155
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4156
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4160
    :goto_0
    return-void

    .line 4158
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4163
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4164
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4166
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 4287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4289
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4290
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 4294
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 4295
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4296
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4297
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4298
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4300
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 4294
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3984
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 3997
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3998
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3999
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4000
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4001
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4003
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4004
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4005
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4008
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 4009
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4010
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4012
    :cond_1
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4013
    return-void

    .line 3986
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 3987
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3989
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 3984
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 3691
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3693
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 3695
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3696
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 3697
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3699
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3702
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3703
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3704
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 3747
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3749
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3751
    :cond_1
    return-void

    .line 3706
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 3707
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 3708
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3710
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 3711
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 3713
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3714
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3715
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3716
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 3717
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 3735
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 3737
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3738
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3741
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3742
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3743
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3744
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 3718
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3722
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3725
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 3726
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 3729
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 3730
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 3731
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3754
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 3755
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 3756
    const/4 v2, 0x0

    .line 3757
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3760
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 3763
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3766
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 3768
    .local v4, "y":I
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 3804
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 3774
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3779
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3780
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 3781
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3782
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3783
    if-eqz v0, :cond_3

    .line 3784
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3786
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3788
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3789
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 3786
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 3790
    :cond_5
    if-eqz v0, :cond_2

    .line 3792
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 3793
    .local v1, "point":[F
    aput v3, v1, v7

    .line 3794
    int-to-float v5, v4

    aput v5, v1, v8

    .line 3795
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3796
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 3801
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 3768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3807
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 3956
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3964
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3966
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 3968
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 3978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$Span;->finish()V

    .line 3979
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3981
    :cond_2
    :goto_1
    return-void

    .line 3811
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3812
    .local v14, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3813
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 3814
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 3815
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3818
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 3819
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_9

    const/4 v11, 0x1

    .line 3820
    .local v11, "inList":Z
    :goto_2
    if-eqz v11, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-nez v18, :cond_d

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 3822
    new-instance v18, Landroid/widget/AbsListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 3825
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 3826
    .local v15, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v14, v15, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3827
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3829
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 3832
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3834
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 3836
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 3838
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3839
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3841
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3844
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 3845
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3847
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3849
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3852
    :cond_8
    new-instance v18, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 3819
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3832
    .restart local v11    # "inList":Z
    .restart local v15    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 3867
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3868
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_1

    .line 3871
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 3872
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 3876
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3877
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 3880
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 3881
    .local v5, "childCount":I
    if-lez v5, :cond_17

    .line 3882
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v9

    .line 3883
    .local v9, "firstChildTop":I
    add-int/lit8 v18, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3884
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 3885
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 3886
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    if-lt v9, v7, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    sub-int v18, v18, v6

    move/from16 v0, v18

    if-gt v13, v0, :cond_e

    .line 3889
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3890
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3892
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 3893
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3901
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    const/4 v10, 0x1

    .line 3902
    .local v10, "flingVelocity":Z
    :goto_4
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    if-eq v13, v0, :cond_14

    .line 3907
    :cond_10
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v18

    if-nez v18, :cond_13

    .line 3908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 3909
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3911
    :cond_11
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 3913
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 3901
    .end local v10    # "flingVelocity":Z
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 3915
    .restart local v10    # "flingVelocity":Z
    :cond_13
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3916
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3919
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3920
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 3922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3924
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3927
    :cond_16
    if-eqz v10, :cond_0

    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3928
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 3933
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v10    # "flingVelocity":Z
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_17
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3934
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3939
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_18

    .line 3940
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3942
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 3943
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3944
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3946
    .restart local v12    # "initialVelocity":I
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3947
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_19

    .line 3948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 3950
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 3807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5462
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5463
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5464
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 5467
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5468
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5469
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5474
    :goto_0
    return-void

    .line 5472
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 2537
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 2538
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 2539
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2542
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2543
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2544
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 2545
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2549
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2550
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2551
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2552
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2555
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2556
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 2557
    if-eqz v1, :cond_2

    .line 2560
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2561
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2563
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2564
    if-eqz v1, :cond_4

    .line 2565
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 2566
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2568
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2570
    :cond_4
    if-eqz p3, :cond_5

    .line 2571
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2575
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2576
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_6

    .line 2577
    if-nez v0, :cond_8

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2578
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 2579
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 2582
    :cond_6
    return-void

    .line 2537
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2577
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v1    # "positionChanged":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 4169
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4170
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4173
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3354
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 3355
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 3356
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 3357
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 3358
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 3360
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 3363
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 3364
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 3365
    if-eqz p3, :cond_1

    .line 3366
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3367
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3370
    :cond_1
    move/from16 v20, v33

    .line 3371
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 3373
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 3375
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 3383
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 3385
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3388
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 3392
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 3394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 3395
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 3396
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3401
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 3402
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 3409
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 3410
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3411
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 3412
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 3416
    :cond_4
    const/16 v18, 0x0

    .line 3417
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 3418
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 3422
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3423
    if-eqz v25, :cond_7

    .line 3426
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3427
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    .line 3430
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 3432
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3434
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 3435
    if-eqz p3, :cond_6

    .line 3436
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3437
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3477
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3479
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3552
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_4
    return-void

    .line 3360
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaY":I
    :cond_a
    move/from16 v21, v20

    .line 3371
    goto/16 :goto_1

    .line 3406
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 3440
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_c
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 3443
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 3445
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3448
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3449
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3452
    :cond_e
    if-nez v19, :cond_f

    .line 3453
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3454
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3456
    :cond_f
    if-lez v21, :cond_11

    .line 3457
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3459
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3462
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 3464
    :cond_11
    if-gez v21, :cond_6

    .line 3465
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3468
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3470
    :cond_12
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 3481
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3482
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 3483
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 3484
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 3485
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1c

    const/16 v28, 0x1

    .line 3487
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 3488
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3491
    :cond_14
    move/from16 v0, v21

    neg-int v10, v0

    .line 3492
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_15

    if-gez v30, :cond_16

    :cond_15
    if-lez v29, :cond_1d

    if-gtz v30, :cond_1d

    .line 3493
    :cond_16
    move/from16 v0, v30

    neg-int v10, v0

    .line 3494
    add-int v21, v21, v10

    .line 3499
    :goto_6
    if-eqz v10, :cond_19

    .line 3500
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3502
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3503
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_19

    .line 3506
    :cond_17
    if-lez v33, :cond_1e

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3509
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_18

    .line 3510
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3512
    :cond_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3527
    .end local v31    # "overscrollMode":I
    :cond_19
    :goto_7
    if-eqz v21, :cond_1b

    .line 3529
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1a

    .line 3530
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3531
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3534
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3536
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3540
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 3542
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3543
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3544
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3545
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3546
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3548
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1b
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3549
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    .line 3485
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1c
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 3496
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 3514
    .restart local v31    # "overscrollMode":I
    :cond_1e
    if-gez v33, :cond_19

    .line 3515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3517
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3518
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3520
    :cond_1f
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_7

    .line 3544
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1341
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1281
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1283
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1286
    :cond_1
    return-void

    .line 1276
    :cond_2
    if-eqz p1, :cond_0

    .line 1277
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1278
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2384
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2386
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 2387
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2394
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2395
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2397
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2398
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2399
    return-void

    .line 2388
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2389
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 2391
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 5453
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5454
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5455
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 5457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 5459
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3320
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v5

    .line 3321
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3322
    .local v1, "distance":I
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v5, :cond_3

    move v3, v6

    .line 3323
    .local v3, "overscroll":Z
    :goto_0
    if-nez v3, :cond_0

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 3325
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3326
    if-eqz v3, :cond_4

    .line 3327
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3328
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3333
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3334
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3335
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3336
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3337
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3339
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3342
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3343
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 3344
    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3346
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v5, v6

    .line 3350
    .end local v2    # "motionView":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewParent;
    :goto_2
    return v5

    .end local v3    # "overscroll":Z
    :cond_3
    move v3, v7

    .line 3322
    goto :goto_0

    .line 3330
    .restart local v3    # "overscroll":Z
    :cond_4
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3331
    if-lez v0, :cond_5

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v5, v5

    goto :goto_3

    :cond_6
    move v5, v7

    .line 3350
    goto :goto_2
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1158
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1159
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1160
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1162
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1163
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1164
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1166
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1167
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1162
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1160
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1168
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1169
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1172
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1641
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1643
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 4307
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4308
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4309
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4311
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 4322
    :cond_0
    return-void

    .line 4315
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4316
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4317
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4318
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4320
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4315
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 5905
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 5864
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4826
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 4838
    :cond_0
    :goto_0
    return v6

    .line 4830
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4831
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 4832
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 4833
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4834
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 4835
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 4837
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4838
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5777
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5933
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1010
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1013
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1014
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 5826
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 5827
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5828
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 5829
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5830
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 5833
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2004
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2005
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2006
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2007
    mul-int/lit8 v2, v1, 0x64

    .line 2009
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2010
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2011
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2012
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2013
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2016
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2017
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2018
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2019
    if-lez v3, :cond_1

    .line 2020
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2028
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2025
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2028
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2033
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2034
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2035
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2036
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2037
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2038
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2039
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2040
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2041
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2057
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2046
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2047
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2048
    const/4 v4, 0x0

    .line 2054
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2049
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2050
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2052
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2063
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2064
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2065
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2067
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2072
    :cond_0
    :goto_0
    return v0

    .line 2070
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 5236
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5238
    const/4 v2, 0x0

    .line 5239
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 5240
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 5241
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5243
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 5244
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 5246
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 5247
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5248
    .local v10, "end":I
    const/4 v11, 0x0

    .line 5249
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 5250
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 5251
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 5252
    const/4 v11, 0x1

    .line 5253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5254
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5259
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 5260
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5261
    add-int/lit8 v9, v9, -0x1

    .line 5262
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5263
    const/4 v2, 0x1

    .line 5264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 5265
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5239
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 5249
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 5270
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5274
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 5275
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 5277
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2998
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 4634
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6078
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6079
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2586
    const/4 v2, 0x0

    .line 2587
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2588
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2590
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2591
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2592
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2595
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2598
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2599
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2600
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2603
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2605
    if-eqz v1, :cond_2

    .line 2606
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2609
    :cond_2
    if-eqz v0, :cond_3

    .line 2610
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2611
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2613
    :cond_3
    return-void

    .line 2587
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3214
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3208
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 4110
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4111
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_3

    .line 4112
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4113
    .local v4, "scrollY":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 4115
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    .line 4117
    .local v5, "width":I
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4118
    .local v1, "edgeY":I
    int-to-float v6, v1

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4119
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4120
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v9, v9, v6, v7}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 4124
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4126
    .end local v1    # "edgeY":I
    .end local v3    # "restoreCount":I
    .end local v5    # "width":I
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 4128
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    .line 4129
    .restart local v5    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    .line 4131
    .local v2, "height":I
    neg-int v0, v5

    .line 4132
    .local v0, "edgeX":I
    iget v6, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4133
    .restart local v1    # "edgeY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4134
    const/high16 v6, 0x43340000    # 180.0f

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4135
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4136
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4137
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0, v9, v6, v7, v8}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 4141
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4144
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "scrollY":I
    .end local v5    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2795
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2796
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2797
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 5089
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5090
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 5095
    :cond_0
    :goto_0
    return v1

    .line 5094
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5095
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1562
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_0
    return-object p0

    .line 1559
    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1560
    const/4 p0, 0x0

    goto :goto_0

    .line 1562
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 4056
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4057
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4059
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4060
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4061
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 5917
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5923
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5928
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2194
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2195
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2196
    check-cast p1, Landroid/view/View;

    .line 2197
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2200
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2201
    const/4 p1, 0x0

    .line 2204
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2094
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2095
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2096
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2106
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2099
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2100
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2103
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2104
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2105
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2106
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2637
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5994
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 988
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 989
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1000
    :cond_1
    return-object v3

    .line 992
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 993
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 994
    .local v0, "count":I
    new-array v3, v0, [J

    .line 996
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 997
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 956
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 976
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3136
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1628
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1629
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1632
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1633
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1638
    :goto_0
    return-void

    .line 1636
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5032
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5022
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 6821
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 6822
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6823
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 6824
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 6826
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6827
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 6834
    :goto_0
    return v2

    .line 6830
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 6831
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 6832
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 6833
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2622
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2632
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2252
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2253
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1511
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1512
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1521
    :goto_0
    :pswitch_0
    return v1

    .line 1516
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1519
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 5962
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1954
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1957
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2077
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2078
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2079
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2088
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2082
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2083
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2086
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2087
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2088
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2627
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 5957
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5281
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5282
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5283
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5285
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5286
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5290
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5292
    if-lez v1, :cond_e

    .line 5297
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 5299
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5300
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5302
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 5303
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5419
    :cond_1
    :goto_0
    return-void

    .line 5305
    :cond_2
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 5306
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 5307
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5308
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 5311
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5312
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5313
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5314
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5315
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 5317
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_4
    move v2, v5

    .line 5314
    goto :goto_1

    .line 5322
    .restart local v2    # "lastBottom":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5325
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_6
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5373
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 5375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5378
    .local v6, "newPos":I
    if-lt v6, v1, :cond_8

    .line 5379
    add-int/lit8 v6, v1, -0x1

    .line 5381
    :cond_8
    if-gez v6, :cond_9

    .line 5382
    const/4 v6, 0x0

    .line 5386
    :cond_9
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5388
    .local v7, "selectablePos":I
    if-ltz v7, :cond_c

    .line 5389
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5327
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5332
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5333
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 5339
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5340
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_7

    .line 5342
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5343
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_7

    .line 5345
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5347
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 5350
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5358
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5354
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 5366
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5367
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 5393
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_c
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5394
    if-ltz v7, :cond_e

    .line 5395
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5402
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_d
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 5410
    :cond_e
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5411
    iput v13, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5412
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 5413
    iput v13, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 5414
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 5415
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5416
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5417
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5418
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 5410
    goto :goto_3

    .line 5325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 5839
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5046
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5047
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5048
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5050
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5051
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5053
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5054
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5055
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5057
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5103
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5104
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5106
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1460
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1463
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1466
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1467
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1357
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v2, :cond_2

    .line 1358
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1358
    goto :goto_0

    .line 1360
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1381
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 5533
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 939
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2617
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1576
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1443
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1653
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1623
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2840
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2841
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2842
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2741
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2776
    :cond_0
    :goto_0
    return-void

    .line 2745
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2746
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2747
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2750
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2752
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2753
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2754
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2756
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2758
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2759
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2760
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2761
    if-eqz v1, :cond_6

    .line 2762
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2768
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2769
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2770
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2772
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2773
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2765
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2186
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2320
    const-string/jumbo v5, "obtainView"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2322
    aput-boolean v7, p2, v7

    .line 2326
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2327
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2328
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2331
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v5, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2332
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2335
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 2336
    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2337
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2342
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v8, p2, v7

    .line 2380
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 2346
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2347
    .local v2, "scrapView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2348
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2349
    if-eq v0, v2, :cond_7

    .line 2351
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2359
    :cond_2
    :goto_1
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v5, :cond_3

    .line 2360
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2363
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2364
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2367
    :cond_4
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2369
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2370
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v5, :cond_5

    .line 2371
    new-instance v5, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2373
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2374
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2378
    :cond_6
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    .line 2380
    goto :goto_0

    .line 2353
    :cond_7
    aput-boolean v8, p2, v7

    .line 2355
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2846
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 2848
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2849
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2850
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2851
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2854
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2855
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2856
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2859
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2860
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2861
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2863
    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3003
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3004
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3005
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3007
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3008
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3010
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3011
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3013
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3014
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3016
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 2802
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2804
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2830
    :cond_0
    :goto_0
    return-object v3

    .line 2810
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2815
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2816
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2817
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2818
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2819
    move v0, v2

    .line 2825
    :cond_2
    if-ltz v0, :cond_0

    .line 2826
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 2817
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 5614
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5615
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 5616
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 5617
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 5619
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5620
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5621
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 5623
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2867
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2869
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 2872
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2875
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 2877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2878
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2879
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2880
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2881
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2884
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 2885
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2886
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2889
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2890
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2891
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2894
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2895
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2896
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2899
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2900
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2903
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 2904
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2907
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2908
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2911
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2912
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2915
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2916
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2917
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2920
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 2921
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 5423
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 5424
    sparse-switch p1, :sswitch_data_0

    .line 5436
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 5437
    return-void

    .line 5426
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5427
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 5431
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5432
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 5436
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 5909
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 5910
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 5913
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1962
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1963
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1967
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1968
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 1969
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 1971
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1973
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4043
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 4031
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4032
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4033
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 4034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 4035
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4036
    const/4 v2, 0x1

    goto :goto_0

    .line 4029
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 5844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5846
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 5847
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 5856
    :cond_0
    :goto_0
    return-void

    .line 5851
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5852
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1490
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1491
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1492
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1496
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1497
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1498
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1501
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1503
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1505
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1508
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2482
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2483
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2488
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2489
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2493
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2494
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2495
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2500
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2501
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2502
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2505
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2506
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2507
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2497
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4185
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4186
    const/4 v0, 0x1

    .line 4189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4197
    .local v0, "actionMasked":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 4198
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4201
    :cond_0
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 4283
    :cond_2
    :goto_0
    return v7

    .line 4209
    :cond_3
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4213
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v7, v8

    .line 4283
    goto :goto_0

    .line 4215
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4216
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_6

    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 4217
    :cond_6
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 4221
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 4222
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 4223
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4225
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4226
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_8

    if-ltz v1, :cond_8

    .line 4229
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4230
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4231
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4232
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4233
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4234
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4235
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4237
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4238
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4239
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4240
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4241
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4242
    if-ne v3, v11, :cond_5

    goto :goto_0

    .line 4249
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 4251
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4252
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_9

    .line 4253
    const/4 v2, 0x0

    .line 4254
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4256
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 4257
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4258
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4259
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_0

    .line 4269
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4270
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4271
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4272
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4273
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 4278
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4249
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3179
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3184
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3185
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3201
    :goto_0
    return v1

    .line 3188
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3192
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3193
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3194
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3195
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 3197
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    goto :goto_0

    .line 3201
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2139
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2141
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2143
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2144
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2146
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2148
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2151
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2152
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2154
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2157
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 2158
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2160
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2113
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2114
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2116
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2117
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2118
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2119
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2120
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2123
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2125
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2126
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2127
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2128
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2131
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2127
    goto :goto_0

    .line 2128
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 4093
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4094
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4096
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4097
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4098
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4100
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4101
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4103
    :cond_1
    const/4 v1, 0x1

    .line 4105
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 4077
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 4078
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4079
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4080
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4081
    :cond_0
    move v4, p5

    .line 4082
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 4083
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 4084
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 4085
    sub-int/2addr v4, v2

    .line 4087
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4089
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldTop":I
    :cond_3
    move v8, v1

    .line 4079
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 4070
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4071
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4072
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4017
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4018
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4019
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4020
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4022
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4024
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6086
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 6087
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6088
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 6089
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6090
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6097
    :cond_0
    :goto_0
    return v0

    .line 6093
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 6094
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6095
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6110
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1869
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1871
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1872
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1874
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1876
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 1877
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1878
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1879
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1880
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1881
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1882
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1896
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1898
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1899
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1902
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1903
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1906
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1908
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1910
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1913
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1914
    return-void

    .line 1883
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1884
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1886
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1887
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1888
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1889
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1890
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1891
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1892
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1893
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2980
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 2981
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2982
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 2984
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1777
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1779
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1781
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1783
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_1

    .line 1785
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1786
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1787
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1788
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1789
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1790
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1791
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1792
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1793
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1794
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1864
    :cond_0
    :goto_0
    return-object v8

    .line 1798
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 1799
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1800
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1801
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1803
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 1805
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1806
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1807
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1834
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1835
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 1836
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1837
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 1838
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1839
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 1840
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1845
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1847
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 1848
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1850
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 1851
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1852
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1853
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 1854
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1853
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1798
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1809
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 1819
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1820
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1821
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1822
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 1823
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1825
    :cond_6
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1826
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 1828
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1829
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1830
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 1845
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 1856
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1858
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1860
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 1861
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2642
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2644
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2647
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2648
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2650
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 4065
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 5873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5874
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5875
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5876
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 5877
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 5879
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 5880
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 5886
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 5887
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 5889
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 5890
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 5897
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 5881
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 5883
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 5884
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 5892
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3590
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3593
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 3687
    :cond_1
    :goto_0
    return v9

    .line 3596
    :cond_2
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_3

    .line 3597
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3600
    :cond_3
    iget-boolean v11, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3608
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3610
    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v11, :cond_4

    .line 3611
    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3612
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    .line 3613
    goto :goto_0

    .line 3617
    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3618
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 3620
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3621
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    .line 3622
    iput v9, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3624
    :cond_5
    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3625
    packed-switch v0, :pswitch_data_0

    .line 3683
    :goto_1
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6

    .line 3684
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3686
    :cond_6
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 3687
    goto :goto_0

    .line 3627
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3632
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3637
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3642
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_1

    .line 3647
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3648
    iget v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3649
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3650
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 3651
    .local v5, "motionPosition":I
    if-ltz v5, :cond_7

    .line 3653
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3654
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3655
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3657
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_1

    .line 3663
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 3664
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3665
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 3666
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 3667
    .restart local v8    # "y":I
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3668
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3669
    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3670
    iput v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3671
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 3672
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_8

    .line 3674
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3675
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3676
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3678
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_1

    .line 3625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3556
    if-eqz p1, :cond_2

    .line 3558
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3562
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3565
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3567
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3586
    :cond_1
    :goto_0
    return-void

    .line 3569
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3570
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3571
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3572
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3574
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3575
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3578
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3579
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3580
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3581
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3582
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2925
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 2927
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2929
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_4

    .line 2930
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2931
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2932
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2935
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 2936
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 2937
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2939
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2940
    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2941
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 2942
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2943
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2947
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2949
    if-ne v0, v2, :cond_2

    .line 2951
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2975
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 2976
    return-void

    .end local v0    # "touchMode":I
    :cond_3
    move v0, v2

    .line 2927
    goto :goto_0

    .line 2954
    .restart local v0    # "touchMode":I
    :cond_4
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2956
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 2960
    :cond_5
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2962
    if-ne v0, v2, :cond_6

    .line 2964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2968
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2969
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2970
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1527
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1546
    :goto_0
    return v1

    .line 1530
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1546
    goto :goto_0

    .line 1532
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1533
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1534
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_1
    move v1, v2

    .line 1537
    goto :goto_0

    .line 1539
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1540
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1541
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_2
    move v1, v2

    .line 1544
    goto :goto_0

    .line 1530
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1095
    const/4 v8, 0x0

    .line 1096
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1098
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1099
    const/4 v8, 0x1

    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, "checkedStateChanged":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1104
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1105
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1106
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    if-eqz v6, :cond_7

    .line 1108
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1113
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1114
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1118
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1119
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1121
    const/4 v7, 0x0

    .line 1123
    :cond_2
    const/4 v0, 0x1

    .line 1140
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1141
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1145
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1149
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1104
    goto :goto_0

    .line 1110
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1116
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1124
    .end local v6    # "checked":Z
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1125
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1126
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1127
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1128
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1129
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1130
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1131
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1133
    :cond_a
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1137
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1125
    goto :goto_4

    .line 1134
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1135
    :cond_e
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3110
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3111
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3113
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3114
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3131
    :cond_0
    :goto_0
    return v6

    .line 3119
    :cond_1
    const/4 v6, 0x0

    .line 3120
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3121
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3124
    :cond_2
    if-nez v6, :cond_3

    .line 3125
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3126
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3128
    :cond_3
    if-eqz v6, :cond_0

    .line 3129
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3225
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3226
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3227
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3228
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3231
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3232
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3233
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3234
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3235
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3236
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3237
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3241
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3232
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3241
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3254
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3255
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3256
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3258
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2533
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2534
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 2522
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2523
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2524
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 2525
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 2526
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2530
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2528
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2515
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2516
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
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
    .line 6005
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6006
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$4000(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6009
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6010
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6011
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6013
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6014
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6015
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6016
    if-eqz v3, :cond_0

    .line 6018
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6009
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6022
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6023
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6024
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 5065
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5066
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 5067
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5069
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5070
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5071
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 4332
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 4333
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4334
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4335
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4338
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4177
    if-eqz p1, :cond_0

    .line 4178
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4180
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4181
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1978
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1980
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1671
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1672
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1673
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1674
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1676
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1986
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1987
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1988
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1989
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1990
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1991
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1992
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 1993
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 1994
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1995
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1996
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1997
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1998
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1999
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2000
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5135
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 5136
    const/16 v17, 0x0

    .line 5231
    :goto_0
    return v17

    .line 5139
    :cond_0
    const/4 v13, 0x0

    .line 5141
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5142
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5143
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5144
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5145
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 5147
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5148
    move v12, v14

    .line 5150
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5151
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5152
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5155
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 5156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5212
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5217
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5218
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5219
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5220
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5221
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5222
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5223
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5224
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5229
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5231
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5157
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5158
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 5162
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5164
    move v12, v7

    .line 5165
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5166
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5167
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5169
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 5171
    move v13, v15

    .line 5173
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5176
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5179
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5181
    add-int v12, v7, v8

    .line 5182
    move v13, v15

    .line 5183
    goto/16 :goto_1

    .line 5165
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5187
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5188
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 5189
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5191
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 5192
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5193
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5194
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5196
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5197
    move v13, v15

    .line 5198
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5199
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5203
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5204
    add-int v12, v7, v8

    .line 5205
    move v13, v15

    .line 5206
    goto/16 :goto_1

    .line 5191
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5227
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 5231
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 5113
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5114
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5115
    const/4 v0, 0x1

    .line 5117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 4812
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4813
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1474
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1475
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1476
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1477
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1486
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1481
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1482
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1485
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5545
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 5606
    :cond_0
    :goto_0
    return v2

    .line 5549
    :cond_1
    const/4 v2, 0x0

    .line 5550
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 5551
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 5583
    :goto_1
    if-eqz v3, :cond_0

    .line 5584
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5586
    move-object v1, p3

    .line 5587
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 5588
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5591
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5592
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5594
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5595
    goto :goto_0

    .line 5558
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 5559
    goto :goto_1

    .line 5561
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5562
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 5564
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 5565
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 5566
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5568
    :cond_3
    const/4 v2, 0x1

    .line 5575
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 5576
    goto :goto_1

    .line 5569
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 5571
    const/4 v2, 0x1

    .line 5572
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5579
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 5598
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5599
    goto :goto_0

    .line 5602
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5551
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 5592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 97
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 893
    if-eqz p1, :cond_0

    .line 894
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 895
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 901
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 905
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 908
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5976
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 5977
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 5978
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5979
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5980
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5982
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 5984
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1193
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1194
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1198
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1200
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1202
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1203
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1206
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1207
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1211
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2696
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2697
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1317
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1318
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1322
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1324
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1325
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1335
    :cond_1
    :goto_0
    return-void

    .line 1327
    :cond_2
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1257
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1258
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1260
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1296
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 1929
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1930
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1933
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1935
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1937
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1938
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1939
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1943
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1944
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1947
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2169
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2173
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2174
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2175
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2179
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2173
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 4614
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4615
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4617
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$1600(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4618
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1025
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1031
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1033
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1037
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1040
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_b

    .line 1041
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1042
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1043
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1044
    if-eqz p2, :cond_9

    .line 1045
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1050
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1051
    if-eqz p2, :cond_a

    .line 1052
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1057
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1058
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1059
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1086
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1087
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1088
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1089
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1047
    .restart local v0    # "oldValue":Z
    :cond_9
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1054
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1063
    .end local v0    # "oldValue":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_f

    move v7, v8

    .line 1066
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1067
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1068
    if-eqz v7, :cond_d

    .line 1069
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1074
    :cond_d
    if-eqz p2, :cond_10

    .line 1075
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1076
    if-eqz v7, :cond_e

    .line 1077
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1079
    :cond_e
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_f
    move v7, v1

    .line 1063
    goto :goto_4

    .line 1080
    .restart local v7    # "updateIds":Z
    :cond_10
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1081
    :cond_11
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1226
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1227
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1452
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1453
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1454
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 4150
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 4151
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 4152
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 875
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 876
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 878
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 879
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 885
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 886
    return-void

    .line 882
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 883
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 6134
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$4002(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 6135
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6041
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 6042
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6043
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6045
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6055
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 6049
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6051
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6052
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6053
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 6067
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6068
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 6070
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1397
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1398
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1401
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 2779
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2780
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2781
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1593
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1594
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1596
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1597
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 6848
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 6875
    :cond_0
    :goto_0
    return-void

    .line 6852
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6853
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 6854
    if-ltz p1, :cond_2

    .line 6855
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6861
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 6862
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6863
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 6865
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 6866
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6867
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 6870
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 6871
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6873
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 6858
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2707
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2708
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2711
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2712
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2713
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2715
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2716
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2717
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2718
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2719
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2720
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2721
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2722
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2723
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2724
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1431
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1432
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1664
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1665
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1666
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1668
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1610
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1611
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 5947
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 5948
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 4627
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 4628
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1389
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1390
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1393
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6117
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6118
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6120
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2675
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3142
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 3143
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3144
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3145
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3146
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3147
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3148
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3151
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3156
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3157
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3158
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3159
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3161
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3162
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3165
    :cond_0
    if-nez v6, :cond_1

    .line 3166
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3169
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3174
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 4709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 4710
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 4713
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 4714
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4718
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4719
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4720
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 4721
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 4722
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4724
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 4728
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4729
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 4730
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4736
    :cond_3
    :goto_0
    return-void

    .line 4733
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4734
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 4742
    const/4 v2, -0x1

    .line 4743
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 4744
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4749
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 4750
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4751
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4752
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4753
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4755
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 4756
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 4757
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 4758
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 4759
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 4762
    add-int/lit8 v2, v2, 0x1

    .line 4769
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 4772
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 4745
    :cond_3
    if-lez p1, :cond_0

    .line 4746
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 4763
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 4766
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4643
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4644
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4646
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 4647
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 4697
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4698
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4700
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 4701
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 4680
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4681
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4683
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 4684
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4662
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4665
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 4666
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2658
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2663
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2661
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 4851
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 4852
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 4853
    const/16 v29, 0x1

    .line 5012
    :goto_0
    return v29

    .line 4856
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4857
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 4859
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 4864
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 4865
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 4866
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 4867
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 4868
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 4872
    :cond_1
    sub-int v25, v13, v16

    .line 4873
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 4874
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 4876
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 4877
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 4878
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4883
    :goto_1
    if-gez p2, :cond_4

    .line 4884
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4889
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4892
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 4893
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 4897
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 4898
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 4903
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 4905
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 4908
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 4909
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4880
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 4886
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 4895
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 4900
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 4903
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 4905
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 4909
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4912
    :cond_a
    if-gez p2, :cond_14

    const/4 v11, 0x1

    .line 4914
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 4915
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 4916
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4919
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 4920
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 4922
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 4923
    .local v27, "start":I
    const/4 v10, 0x0

    .line 4925
    .local v10, "count":I
    if-eqz v11, :cond_17

    .line 4926
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 4927
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 4928
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 4930
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 4931
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4932
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_15

    .line 4968
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 4970
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 4972
    if-lez v10, :cond_e

    .line 4973
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 4974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 4979
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_f

    .line 4980
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4983
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4985
    if-eqz v11, :cond_10

    .line 4986
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4989
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4990
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_11

    move/from16 v0, v26

    if-ge v0, v3, :cond_12

    .line 4991
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 4994
    :cond_12
    if-nez v21, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a

    .line 4995
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 4996
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 4997
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5008
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5010
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5012
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4912
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4935
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 4936
    add-int v24, v15, v20

    .line 4937
    .local v24, "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 4940
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4930
    :cond_16
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 4946
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 4947
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    .line 4948
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 4950
    :cond_18
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 4951
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4952
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 4955
    move/from16 v27, v20

    .line 4956
    add-int/lit8 v10, v10, 0x1

    .line 4957
    add-int v24, v15, v20

    .line 4958
    .restart local v24    # "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    .line 4961
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4950
    :cond_19
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 4999
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    .line 5000
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5001
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 5002
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 5005
    .end local v9    # "childIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2208
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2215
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2209
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2213
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2784
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2785
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2786
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2835
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
