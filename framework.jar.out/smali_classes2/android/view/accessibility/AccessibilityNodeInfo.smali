.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$1;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_NODE_ID:J

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDrawingOrderInParent:I

.field private mError:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mTraversalAfter:J

.field private mTraversalBefore:J

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v0, 0x7fffffff

    .line 81
    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 607
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 606
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 4255
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    .line 4254
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 613
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 614
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 615
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 616
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 617
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 618
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 621
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 622
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 635
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 638
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 639
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 640
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 641
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 645
    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 654
    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1038
    if-nez p1, :cond_0

    .line 1039
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 1046
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 919
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v3, :cond_0

    .line 920
    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 923
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    .line 924
    .local v2, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    .line 926
    .local v0, "childNodeId":J
    if-eqz p3, :cond_2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_2

    .line 927
    return-void

    .line 923
    .end local v0    # "childNodeId":J
    .end local v2    # "rootAccessibilityViewId":I
    :cond_1
    const v2, 0x7fffffff

    goto :goto_0

    .line 929
    .restart local v0    # "childNodeId":J
    .restart local v2    # "rootAccessibilityViewId":I
    :cond_2
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    .line 917
    return-void
.end method

.method private addLegacyStandardActions(I)V
    .locals 5
    .param p1, "actionMask"    # I

    .prologue
    .line 3083
    move v2, p1

    .line 3084
    .local v2, "remainingIds":I
    :goto_0
    if-lez v2, :cond_0

    .line 3085
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v1, v4, v3

    .line 3086
    .local v1, "id":I
    not-int v3, v1

    and-int/2addr v2, v3

    .line 3087
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    .line 3088
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 3082
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method private canPerformRequestOverConnection(J)Z
    .locals 3
    .param p1, "accessibilityNodeId"    # J

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x0

    .line 3189
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v1, v2, :cond_0

    .line 3190
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 3191
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3189
    :cond_0
    return v0
.end method

.method private clear()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3019
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 3020
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 3021
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 3022
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 3023
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 3024
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 3025
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 3026
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 3027
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 3028
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 3029
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 3030
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 3033
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3034
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3035
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 3036
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 3037
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 3038
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 3039
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3040
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 3041
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 3042
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 3043
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3044
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3046
    :cond_1
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 3047
    iput v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 3048
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 3049
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 3050
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 3051
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v0, :cond_2

    .line 3052
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    .line 3053
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 3055
    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v0, :cond_3

    .line 3056
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    .line 3057
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3059
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v0, :cond_4

    .line 3060
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    .line 3061
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3018
    :cond_4
    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 2616
    sparse-switch p1, :sswitch_data_0

    .line 2625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2623
    :sswitch_0
    return-void

    .line 2616
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private enforceValidFocusType(I)V
    .locals 3
    .param p1, "focusType"    # I

    .prologue
    .line 2630
    packed-switch p1, :pswitch_data_0

    .line 2635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2633
    :pswitch_0
    return-void

    .line 2630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAccessibilityViewId(J)I
    .locals 2
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 565
    long-to-int v0, p0

    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4
    .param p0, "actionId"    # I

    .prologue
    .line 3071
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->-get0()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 3072
    .local v0, "actions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3073
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->-get0()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3074
    .local v1, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 3075
    return-object v1

    .line 3072
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3079
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 3099
    sparse-switch p0, :sswitch_data_0

    .line 3161
    const-string/jumbo v0, "ACTION_UNKNOWN"

    return-object v0

    .line 3101
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    return-object v0

    .line 3103
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    .line 3105
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    return-object v0

    .line 3107
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    .line 3109
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    return-object v0

    .line 3111
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    return-object v0

    .line 3113
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 3115
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 3117
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 3119
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 3121
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    .line 3123
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    .line 3125
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    .line 3127
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    .line 3129
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    return-object v0

    .line 3131
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    return-object v0

    .line 3133
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    return-object v0

    .line 3135
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    return-object v0

    .line 3137
    :sswitch_12
    const-string/jumbo v0, "ACTION_EXPAND"

    return-object v0

    .line 3139
    :sswitch_13
    const-string/jumbo v0, "ACTION_COLLAPSE"

    return-object v0

    .line 3141
    :sswitch_14
    const-string/jumbo v0, "ACTION_DISMISS"

    return-object v0

    .line 3143
    :sswitch_15
    const-string/jumbo v0, "ACTION_SET_TEXT"

    return-object v0

    .line 3145
    :sswitch_16
    const-string/jumbo v0, "ACTION_SHOW_ON_SCREEN"

    return-object v0

    .line 3147
    :sswitch_17
    const-string/jumbo v0, "ACTION_SCROLL_TO_POSITION"

    return-object v0

    .line 3149
    :sswitch_18
    const-string/jumbo v0, "ACTION_SCROLL_UP"

    return-object v0

    .line 3151
    :sswitch_19
    const-string/jumbo v0, "ACTION_SCROLL_LEFT"

    return-object v0

    .line 3153
    :sswitch_1a
    const-string/jumbo v0, "ACTION_SCROLL_DOWN"

    return-object v0

    .line 3155
    :sswitch_1b
    const-string/jumbo v0, "ACTION_SCROLL_RIGHT"

    return-object v0

    .line 3157
    :sswitch_1c
    const-string/jumbo v0, "ACTION_SET_PROGRESS"

    return-object v0

    .line 3159
    :sswitch_1d
    const-string/jumbo v0, "ACTION_CONTEXT_CLICK"

    return-object v0

    .line 3099
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
        0x1020036 -> :sswitch_16
        0x1020037 -> :sswitch_17
        0x1020038 -> :sswitch_18
        0x1020039 -> :sswitch_19
        0x102003a -> :sswitch_1a
        0x102003b -> :sswitch_1b
        0x102003c -> :sswitch_1d
        0x102003d -> :sswitch_1c
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    .prologue
    const/4 v0, 0x0

    .line 2527
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "granularity"    # I

    .prologue
    .line 3172
    sparse-switch p0, :sswitch_data_0

    .line 3184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3174
    :sswitch_0
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_CHARACTER"

    return-object v0

    .line 3176
    :sswitch_1
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_WORD"

    return-object v0

    .line 3178
    :sswitch_2
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_LINE"

    return-object v0

    .line 3180
    :sswitch_3
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object v0

    .line 3182
    :sswitch_4
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PAGE"

    return-object v0

    .line 3172
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "accessibilityId"    # J

    .prologue
    .line 3291
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3292
    const/4 v0, 0x0

    return-object v0

    .line 3294
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 3295
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 3296
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-wide v4, p1

    .line 3295
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualDescendantId(J)I
    .locals 4
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 578
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    .line 579
    const/16 v2, 0x20

    .line 578
    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x0

    .line 2852
    iget-boolean v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 2853
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 2854
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 2855
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 2856
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 2857
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 2858
    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 2859
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 2860
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 2861
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2862
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2863
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 2864
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 2865
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 2866
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 2867
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 2868
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 2870
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 2871
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2872
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 2873
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 2880
    :cond_0
    :goto_0
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 2881
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 2882
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 2884
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 2885
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2886
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_4

    .line 2887
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 2894
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 2895
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 2896
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 2897
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 2898
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 2899
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 2900
    new-instance v2, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 2904
    :goto_2
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_6

    .line 2905
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    .line 2904
    :goto_3
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2906
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_7

    .line 2907
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 2906
    :goto_4
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2908
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_2

    .line 2909
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    .line 2908
    :cond_2
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2851
    return-void

    .line 2875
    .end local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2876
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2889
    .restart local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    .line 2890
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_1

    .line 2902
    :cond_5
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 2905
    goto :goto_3

    :cond_7
    move-object v2, v3

    .line 2907
    goto :goto_4
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2918
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v16, 0x1

    .line 2919
    .local v16, "sealed":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 2920
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 2921
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 2922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 2923
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 2924
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 2925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 2927
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 2929
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2930
    .local v12, "childrenSize":I
    if-gtz v12, :cond_2

    .line 2931
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 2940
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2943
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2950
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2951
    .local v9, "actionCount":I
    if-lez v9, :cond_3

    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2953
    .local v14, "legacyStandardActions":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    .line 2954
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    sub-int v15, v9, v2

    .line 2955
    .local v15, "nonLegacyActionCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v15, :cond_3

    .line 2956
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2957
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2956
    invoke-direct {v8, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2958
    .local v8, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2955
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2918
    .end local v8    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v9    # "actionCount":I
    .end local v12    # "childrenSize":I
    .end local v13    # "i":I
    .end local v14    # "legacyStandardActions":I
    .end local v15    # "nonLegacyActionCount":I
    .end local v16    # "sealed":Z
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "sealed":Z
    goto/16 :goto_0

    .line 2933
    .restart local v12    # "childrenSize":I
    :cond_2
    new-instance v2, Landroid/util/LongArray;

    invoke-direct {v2, v12}, Landroid/util/LongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 2934
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v12, :cond_0

    .line 2935
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 2936
    .local v10, "childId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v10, v11}, Landroid/util/LongArray;->add(J)V

    .line 2934
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2962
    .end local v10    # "childId":J
    .end local v13    # "i":I
    .restart local v9    # "actionCount":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 2963
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 2964
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 2966
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 2967
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 2968
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 2969
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 2970
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 2971
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 2973
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 2974
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 2976
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 2977
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 2978
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 2980
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2981
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 2986
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2988
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2989
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 2990
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 2991
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 2987
    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2994
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2996
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2997
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2998
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    .line 2999
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2995
    invoke-static {v3, v4, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3002
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 3004
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3005
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3006
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3007
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3008
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    .line 3009
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    const/4 v7, 0x1

    .line 3003
    :goto_6
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3012
    :cond_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 2917
    return-void

    .line 2983
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    goto :goto_3

    .line 2998
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 3008
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 3009
    :cond_a
    const/4 v7, 0x0

    goto :goto_6
.end method

.method private static isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 2
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 3066
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/high16 v1, 0x200000

    if-gt v0, v1, :cond_0

    .line 3067
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeNodeId(II)J
    .locals 4
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 598
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 599
    const p1, 0x7fffffff

    .line 601
    :cond_0
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 2690
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2691
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    goto :goto_0
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "source"    # Landroid/view/View;

    .prologue
    .line 2663
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2664
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2665
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 2679
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2680
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2681
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2703
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2704
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2705
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2539
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2540
    if-eqz p2, :cond_0

    .line 2541
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 2538
    :goto_0
    return-void

    .line 2543
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(I)V
    .locals 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1069
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addLegacyStandardActions(I)V

    .line 1066
    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1034
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1031
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 868
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 867
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 913
    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 878
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 877
    return-void
.end method

.method public canOpenPopup()Z
    .locals 1

    .prologue
    .line 2090
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2565
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .locals 2

    .prologue
    .line 2647
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2648
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2646
    :cond_0
    return-void
.end method

.method protected enforceSealed()V
    .locals 2

    .prologue
    .line 2609
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2608
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3196
    if-ne p0, p1, :cond_0

    .line 3197
    return v7

    .line 3199
    :cond_0
    if-nez p1, :cond_1

    .line 3200
    return v6

    .line 3202
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3203
    return v6

    :cond_2
    move-object v0, p1

    .line 3205
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3206
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 3207
    return v6

    .line 3209
    :cond_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v1, v2, :cond_4

    .line 3210
    return v6

    .line 3212
    :cond_4
    return v7
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1359
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1363
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1390
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1393
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1394
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 712
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    .line 713
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    return-object v0

    .line 716
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 717
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .line 716
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 736
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    .line 737
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    return-object v0

    .line 740
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 741
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .line 740
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 967
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActions()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 994
    const/4 v3, 0x0

    .line 996
    .local v3, "returnValue":I
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 997
    return v3

    .line 1000
    :cond_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1001
    .local v1, "actionSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1002
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    .line 1003
    .local v0, "actionId":I
    const/high16 v4, 0x200000

    if-gt v0, v4, :cond_1

    .line 1004
    or-int/2addr v3, v0

    .line 1001
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    .end local v0    # "actionId":I
    :cond_2
    return v3
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1487
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1486
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1485
    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1514
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1513
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1512
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 842
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 843
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 844
    return-object v6

    .line 846
    :cond_0
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    return-object v6

    .line 849
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    .line 850
    .local v4, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 851
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 852
    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 851
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getChildId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 812
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 815
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDrawingOrder()I
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2515
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 2517
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2479
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 2336
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2337
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 2389
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRegion()I
    .locals 1

    .prologue
    .line 2041
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 1425
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1426
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeId()J
    .locals 2

    .prologue
    .line 1435
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    .prologue
    .line 2576
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    .line 2436
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 1193
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1194
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 1132
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1133
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2421
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1407
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1408
    const/4 v1, 0x0

    return-object v1

    .line 1410
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1411
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public getWindowId()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 3217
    const/16 v0, 0x1f

    .line 3219
    .local v0, "prime":I
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 3220
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    add-int v1, v2, v3

    .line 3221
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int v1, v2, v3

    .line 3222
    return v1
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    .prologue
    .line 1674
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 1549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 1574
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 1724
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .locals 1

    .prologue
    .line 1980
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    .prologue
    .line 2004
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 2114
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 1849
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1774
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 1599
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1624
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .prologue
    .line 2140
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 1749
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .locals 1

    .prologue
    .line 2067
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    .line 1799
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 1824
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    .prologue
    .line 2598
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1699
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .prologue
    .line 1649
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .locals 8
    .param p1, "action"    # I

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1312
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    return v0

    .line 1315
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1316
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1317
    const/4 v7, 0x0

    move v6, p1

    .line 1316
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1334
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1335
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    return v0

    .line 1338
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1339
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 2716
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    .line 2717
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2715
    return-void
.end method

.method public refresh()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Z)Z
    .locals 8
    .param p1, "bypassCache"    # Z

    .prologue
    const/4 v7, 0x0

    .line 767
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 768
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    return v7

    .line 771
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 773
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    .line 772
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 774
    .local v0, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 775
    return v7

    .line 777
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 778
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 779
    const/4 v2, 0x1

    return v2
.end method

.method public removeAction(I)V
    .locals 1
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1095
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1092
    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1113
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1115
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1116
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1119
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 896
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v5, 0x0

    .line 943
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 944
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 945
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_0

    .line 946
    return v5

    .line 949
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    .line 950
    .local v4, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v4, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    .line 951
    .local v2, "childNodeId":J
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v1

    .line 952
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 953
    return v5

    .line 949
    .end local v1    # "index":I
    .end local v2    # "childNodeId":J
    .end local v4    # "rootAccessibilityViewId":I
    :cond_1
    const v4, 0x7fffffff

    goto :goto_0

    .line 955
    .restart local v1    # "index":I
    .restart local v2    # "childNodeId":J
    .restart local v4    # "rootAccessibilityViewId":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    .line 956
    const/4 v5, 0x1

    return v5
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 1690
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1689
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1503
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1504
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1502
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1539
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1540
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1538
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 1
    .param p1, "opensPopup"    # Z

    .prologue
    .line 2104
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2105
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2103
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 1565
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1564
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1590
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1589
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2207
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 2205
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1740
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1739
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .prologue
    .line 1921
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1922
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 1920
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1946
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 1944
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .prologue
    .line 2556
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2557
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 2555
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2284
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2285
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 2283
    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 1
    .param p1, "contentInvalid"    # Z

    .prologue
    .line 1995
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1994
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 1
    .param p1, "contextClickable"    # Z

    .prologue
    .line 2019
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2018
    return-void
.end method

.method public setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    .prologue
    .line 2128
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2127
    return-void
.end method

.method public setDrawingOrder(I)V
    .locals 0
    .param p1, "drawingOrderInParent"    # I

    .prologue
    .line 1895
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1896
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 1894
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 1865
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1864
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1790
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1789
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 2249
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2250
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 2248
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 1615
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1614
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 1640
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1639
    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "important"    # Z

    .prologue
    .line 2155
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2154
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .prologue
    .line 2496
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2497
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 2495
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 1
    .param p1, "labeled"    # Landroid/view/View;

    .prologue
    .line 2295
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    .line 2294
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2318
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2319
    if-eqz p1, :cond_0

    .line 2320
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2321
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 2317
    return-void

    .line 2320
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 1
    .param p1, "label"    # Landroid/view/View;

    .prologue
    .line 2347
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    .line 2346
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2370
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2371
    if-eqz p1, :cond_0

    .line 2372
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2373
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 2369
    return-void

    .line 2372
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public setLiveRegion(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2057
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2058
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 2056
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 1765
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1764
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 1258
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1259
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1257
    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 0
    .param p1, "granularities"    # I

    .prologue
    .line 1285
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1286
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 1284
    return-void
.end method

.method public setMultiLine(Z)V
    .locals 1
    .param p1, "multiLine"    # Z

    .prologue
    .line 2081
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2080
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2180
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2181
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 2179
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1451
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 1450
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1474
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1476
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1477
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 1473
    return-void

    .line 1476
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "password"    # Z

    .prologue
    .line 1815
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1814
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 1969
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1970
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 1968
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .prologue
    .line 1840
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1839
    return-void
.end method

.method public setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    .prologue
    .line 2587
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 2586
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 1715
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1714
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 669
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 668
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const v2, 0x7fffffff

    .line 692
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 693
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 695
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 696
    .local v0, "rootAccessibilityViewId":I
    :goto_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 691
    return-void

    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    move v1, v2

    .line 693
    goto :goto_0

    :cond_1
    move v0, v2

    .line 695
    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2233
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 2231
    return-void
.end method

.method public setTextSelection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2468
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2469
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 2470
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 2467
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1212
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 1211
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1236
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1237
    if-eqz p1, :cond_0

    .line 1238
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1239
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1235
    return-void

    .line 1238
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1151
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1150
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1177
    if-eqz p1, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1179
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1175
    return-void

    .line 1178
    .end local v0    # "rootAccessibilityViewId":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewIdResName"    # Ljava/lang/String;

    .prologue
    .line 2404
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2405
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 2403
    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 1
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 1665
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 1664
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3228
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3263
    const-string/jumbo v1, "; boundsInParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3264
    const-string/jumbo v1, "; boundsInScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3266
    const-string/jumbo v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3267
    const-string/jumbo v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3268
    const-string/jumbo v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3269
    const-string/jumbo v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3270
    const-string/jumbo v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3271
    const-string/jumbo v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3272
    const-string/jumbo v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    const-string/jumbo v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3275
    const-string/jumbo v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3276
    const-string/jumbo v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3277
    const-string/jumbo v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3278
    const-string/jumbo v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3279
    const-string/jumbo v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3280
    const-string/jumbo v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3281
    const-string/jumbo v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3282
    const-string/jumbo v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3283
    const-string/jumbo v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3284
    const-string/jumbo v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3285
    const-string/jumbo v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2729
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2731
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2733
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2734
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2735
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2736
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2738
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2740
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 2741
    .local v2, "childIds":Landroid/util/LongArray;
    if-nez v2, :cond_4

    .line 2742
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    :cond_0
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2782
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    :cond_2
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2790
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2791
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2792
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2793
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2794
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2796
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2799
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2800
    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_9

    .line 2803
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2804
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2809
    :goto_1
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v6, :cond_a

    .line 2810
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2811
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2812
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2813
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2814
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2819
    :goto_2
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v6, :cond_c

    .line 2820
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2821
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v7

    :goto_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2824
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2829
    :goto_4
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v6, :cond_f

    .line 2830
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2831
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2835
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v7

    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_6
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2728
    return-void

    .end local v2    # "childIds":Landroid/util/LongArray;
    :cond_3
    move v6, v8

    .line 2729
    goto/16 :goto_0

    .line 2744
    .restart local v2    # "childIds":Landroid/util/LongArray;
    :cond_4
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v3

    .line 2745
    .local v3, "childIdsSize":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v3, :cond_0

    .line 2747
    invoke-virtual {v2, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2746
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 2762
    .end local v3    # "childIdsSize":I
    .end local v5    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2763
    .local v1, "actionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    const/4 v4, 0x0

    .line 2766
    .local v4, "defaultLegacyStandardActions":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v1, :cond_7

    .line 2767
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2768
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2769
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    or-int/2addr v4, v6

    .line 2766
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2772
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2774
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_2

    .line 2775
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2776
    .restart local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2777
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2778
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2774
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 2806
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 2816
    :cond_a
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_b
    move v6, v8

    .line 2823
    goto/16 :goto_3

    .line 2826
    :cond_c
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    :cond_d
    move v6, v8

    .line 2835
    goto/16 :goto_5

    :cond_e
    move v7, v8

    .line 2836
    goto :goto_6

    .line 2838
    :cond_f
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7
.end method
