.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 190
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 72
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 75
    const/16 v1, 0x3ea

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 77
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 79
    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 81
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 82
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 83
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 86
    iput v3, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 97
    new-instance v1, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 98
    new-instance v1, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 99
    new-instance v1, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 100
    new-instance v1, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 217
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 218
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 220
    sget-object v1, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 224
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 226
    iget v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 227
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 232
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 216
    return-void
.end method

.method private buildDropDown()I
    .locals 25

    .prologue
    .line 1072
    const/16 v19, 0x0

    .line 1074
    .local v19, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-nez v2, :cond_8

    .line 1075
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1083
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1093
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    new-instance v4, Landroid/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_1

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1123
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1125
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1126
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    .line 1129
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1130
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1132
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1133
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1132
    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1136
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v2, :pswitch_data_0

    .line 1148
    const-string/jumbo v2, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v2, :cond_7

    .line 1157
    const/high16 v22, -0x80000000

    .line 1158
    .local v22, "widthMode":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v23, v0

    .line 1163
    .local v23, "widthSize":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1164
    .local v24, "widthSpec":I
    const/4 v11, 0x0

    .line 1165
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1167
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1168
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1169
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1168
    add-int v19, v2, v4

    .line 1171
    move-object v10, v12

    .line 1174
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    .end local v24    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1188
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1189
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v20, v2, v4

    .line 1195
    .local v20, "padding":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_4

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1205
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    const/4 v15, 0x1

    .line 1206
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1206
    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v18

    .line 1208
    .local v18, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 1209
    :cond_5
    add-int v2, v18, v20

    return v2

    .line 1093
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v18    # "maxHeight":I
    .end local v20    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1138
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1143
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1144
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1160
    :cond_7
    const/16 v22, 0x0

    .line 1161
    .restart local v22    # "widthMode":I
    const/16 v23, 0x0

    .restart local v23    # "widthSize":I
    goto/16 :goto_2

    .line 1176
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1177
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_3

    .line 1179
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1180
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1181
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1180
    add-int v19, v2, v4

    goto/16 :goto_3

    .line 1199
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1200
    const/16 v20, 0x0

    .restart local v20    # "padding":I
    goto :goto_4

    .line 1205
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "ignoreBottomDecorations":Z
    goto :goto_5

    .line 1213
    .restart local v18    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v2, :pswitch_data_1

    .line 1227
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1233
    .local v3, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1234
    sub-int v6, v18, v19

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    .line 1233
    invoke-virtual/range {v2 .. v7}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v16

    .line 1235
    .local v16, "listContent":I
    if-lez v16, :cond_c

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getPaddingTop()I

    move-result v2

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    move-result v4

    .line 1236
    add-int v17, v2, v4

    .line 1238
    .local v17, "listPadding":I
    add-int v2, v20, v17

    add-int v19, v19, v2

    .line 1241
    .end local v17    # "listPadding":I
    :cond_c
    add-int v2, v16, v19

    return v2

    .line 1216
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1216
    sub-int/2addr v2, v4

    .line 1218
    const/high16 v4, -0x80000000

    .line 1215
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    .line 1222
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1222
    sub-int/2addr v2, v4

    .line 1224
    const/high16 v4, 0x40000000    # 2.0f

    .line 1221
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1213
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 706
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 708
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 709
    check-cast v0, Landroid/view/ViewGroup;

    .line 710
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 705
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 763
    .local v0, "list":Landroid/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 765
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 766
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    .line 767
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    .line 761
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1056
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 866
    new-instance v0, Landroid/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 690
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 691
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 692
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 693
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    return-object v0

    .line 814
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 840
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    const/4 v0, -0x1

    return v0

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    return v0

    .line 448
    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 892
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 898
    const/16 v7, 0x3e

    if-eq p1, v7, :cond_0

    .line 899
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v7

    if-gez v7, :cond_1

    .line 900
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v10

    .line 901
    :cond_1
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 904
    .local v4, "curIndex":I
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    .line 906
    .local v2, "below":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 909
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 910
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 912
    .local v6, "lastItem":I
    if-eqz v0, :cond_2

    .line 913
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 914
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    const/4 v5, 0x0

    .line 916
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 920
    .end local v1    # "allEnabled":Z
    :cond_2
    :goto_3
    if-eqz v2, :cond_7

    if-ne p1, v11, :cond_7

    if-gt v4, v5, :cond_7

    .line 924
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 925
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 926
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 927
    return v9

    .line 904
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "below":Z
    goto :goto_1

    .line 915
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, v10, v9}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_2

    .line 917
    :cond_6
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v10}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_3

    .line 921
    .end local v1    # "allEnabled":Z
    :cond_7
    if-nez v2, :cond_8

    if-ne p1, v12, :cond_8

    if-ge v4, v6, :cond_3

    .line 931
    :cond_8
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, v10}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 934
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 937
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 940
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 945
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 946
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 948
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 955
    :sswitch_0
    return v9

    .line 958
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 961
    if-ne v4, v6, :cond_0

    .line 962
    return v9

    .line 964
    :cond_a
    if-nez v2, :cond_0

    if-ne p1, v11, :cond_0

    .line 965
    if-ne v4, v5, :cond_0

    .line 966
    return v9

    .line 948
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1011
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1014
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1015
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1017
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1018
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1020
    :cond_0
    return v4

    .line 1021
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1022
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1023
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1024
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1026
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1032
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    return v3

    .line 1027
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1028
    return v4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 988
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 989
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 994
    :cond_0
    return v0

    .line 996
    .end local v0    # "consumed":Z
    :cond_1
    return v2
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 798
    .local v1, "list":Landroid/widget/DropDownListView;
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 799
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 800
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 802
    .end local v1    # "list":Landroid/widget/DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 804
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 247
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 248
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :cond_2
    return-void

    .line 244
    :cond_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 422
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 421
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 392
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 506
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 507
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 509
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 505
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 325
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 479
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 478
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 469
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 468
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 310
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 528
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 527
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 438
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 437
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 728
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 727
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 876
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 875
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 368
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 367
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    .line 291
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 289
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 701
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 552
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 551
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 563
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 562
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 267
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 266
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 574
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 577
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 578
    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 572
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 748
    .local v0, "list":Landroid/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0, v2}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 751
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    .line 746
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 348
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 457
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 456
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 496
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 495
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 541
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 540
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 596
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 598
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v8

    .line 599
    .local v8, "noInputMethod":Z
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 600
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 602
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 604
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_3

    .line 607
    const/4 v9, -0x1

    .line 615
    .local v9, "widthSpec":I
    :goto_1
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_9

    .line 618
    if-eqz v8, :cond_5

    move v7, v6

    .line 619
    .local v7, "heightSpec":I
    :goto_2
    if-eqz v8, :cond_7

    .line 620
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_6

    move v0, v5

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 622
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 634
    :goto_4
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-eqz v3, :cond_b

    :cond_0
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 636
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 637
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v9, :cond_c

    move v4, v5

    .line 638
    :goto_6
    if-gez v7, :cond_d

    .line 636
    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 595
    :cond_1
    :goto_8
    return-void

    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_2
    move v0, v2

    .line 599
    goto :goto_0

    .line 608
    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_4

    .line 609
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_1

    .line 611
    .end local v9    # "widthSpec":I
    :cond_4
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_1

    .line 618
    :cond_5
    const/4 v7, -0x1

    .restart local v7    # "heightSpec":I
    goto :goto_2

    :cond_6
    move v0, v1

    .line 621
    goto :goto_3

    .line 624
    :cond_7
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_8

    move v0, v5

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 626
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 625
    goto :goto_9

    .line 628
    .end local v7    # "heightSpec":I
    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_a

    .line 629
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_4

    .line 631
    .end local v7    # "heightSpec":I
    :cond_a
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_4

    :cond_b
    move v1, v2

    .line 634
    goto :goto_5

    :cond_c
    move v4, v9

    .line 637
    goto :goto_6

    :cond_d
    move v5, v7

    .line 638
    goto :goto_7

    .line 641
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_e
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_12

    .line 642
    const/4 v9, -0x1

    .line 652
    .restart local v9    # "widthSpec":I
    :goto_a
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_14

    .line 653
    const/4 v7, -0x1

    .line 662
    .restart local v7    # "heightSpec":I
    :goto_b
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 663
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 664
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 668
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_f

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-eqz v3, :cond_16

    :cond_f
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 669
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 670
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 671
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 672
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 671
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 673
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0, v5}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 675
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 676
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 678
    :cond_11
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 644
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_12
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_13

    .line 645
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_a

    .line 647
    .end local v9    # "widthSpec":I
    :cond_13
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_a

    .line 655
    :cond_14
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_15

    .line 656
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_b

    .line 658
    .end local v7    # "heightSpec":I
    :cond_15
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_b

    :cond_16
    move v1, v2

    .line 668
    goto :goto_c
.end method
