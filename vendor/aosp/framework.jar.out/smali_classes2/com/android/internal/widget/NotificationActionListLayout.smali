.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;
    }
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultPaddingEnd:I

.field private mMeasureLinearly:Z

.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalWidth:I


# direct methods
.method static synthetic -com_android_internal_widget_NotificationActionListLayout_lambda$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .param p0, "a"    # Landroid/util/Pair;
    .param p1, "b"    # Landroid/util/Pair;

    .prologue
    .line 278
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;-><init>()V

    .line 277
    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    return-void
.end method

.method private rebuildMeasureOrder(II)V
    .locals 5
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v1

    .line 167
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "c":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 171
    check-cast v0, Landroid/widget/TextView;

    .line 170
    .end local v0    # "c":Landroid/view/View;
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .restart local v0    # "c":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 257
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 200
    return-void

    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v13

    .line 203
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    move/from16 v16, v0

    .line 209
    .local v16, "paddingTop":I
    sub-int v10, p5, p3

    .line 212
    .local v10, "height":I
    sub-int v18, v10, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 214
    .local v12, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v8

    .line 216
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v14

    .line 217
    .local v14, "layoutDirection":I
    const v18, 0x800003

    move/from16 v0, v18

    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 225
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 229
    .local v5, "childLeft":I
    :goto_0
    const/16 v17, 0x0

    .line 230
    .local v17, "start":I
    const/4 v9, 0x1

    .line 232
    .local v9, "dir":I
    if-eqz v13, :cond_1

    .line 233
    add-int/lit8 v17, v8, -0x1

    .line 234
    const/4 v9, -0x1

    .line 237
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 238
    mul-int v18, v9, v11

    add-int v4, v17, v18

    .line 239
    .local v4, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 242
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 244
    .local v3, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v18, v12, v3

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v16

    .line 247
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 246
    add-int v18, v18, v19

    .line 247
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    .line 246
    sub-int v6, v18, v19

    .line 249
    .local v6, "childTop":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v5, v5, v18

    .line 250
    add-int v18, v5, v7

    add-int v19, v6, v3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 251
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v18, v18, v7

    add-int v5, v5, v18

    .line 237
    .end local v3    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 220
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childIndex":I
    .end local v5    # "childLeft":I
    .end local v9    # "dir":I
    .end local v11    # "i":I
    .end local v17    # "start":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v18, v18, p4

    sub-int v18, v18, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 221
    .restart local v5    # "childLeft":I
    goto :goto_0

    .line 197
    .restart local v9    # "dir":I
    .restart local v11    # "i":I
    .restart local v17    # "start":I
    :cond_3
    return-void

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    if-eqz v3, :cond_0

    .line 54
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v13

    .line 58
    .local v13, "N":I
    const/16 v29, 0x0

    .line 59
    .local v29, "textViews":I
    const/16 v26, 0x0

    .line 60
    .local v26, "otherViews":I
    const/16 v23, 0x0

    .line 62
    .local v23, "notGoneChildren":I
    const/16 v18, 0x0

    .line 63
    .local v18, "lastNotGoneChild":Landroid/view/View;
    const/16 v16, 0x0

    .end local v18    # "lastNotGoneChild":Landroid/view/View;
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_3

    .line 64
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "c":Landroid/view/View;
    instance-of v3, v4, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 66
    add-int/lit8 v29, v29, 0x1

    .line 70
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 71
    add-int/lit8 v23, v23, 0x1

    .line 72
    move-object/from16 v18, v4

    .line 63
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 68
    :cond_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 78
    .end local v4    # "c":Landroid/view/View;
    :cond_3
    const/16 v22, 0x0

    .line 79
    .local v22, "needRebuild":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    if-ne v0, v3, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_5

    .line 81
    :cond_4
    const/16 v22, 0x1

    .line 83
    :cond_5
    if-nez v22, :cond_7

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 85
    .local v28, "size":I
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Pair;

    .line 87
    .local v27, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v5, v3, :cond_6

    .line 88
    const/16 v22, 0x1

    .line 85
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 92
    .end local v27    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    .end local v28    # "size":I
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_8

    if-eqz v22, :cond_8

    .line 93
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 97
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    .line 99
    .local v15, "constrained":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int v17, v3, v5

    .line 100
    .local v17, "innerWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 101
    .local v25, "otherSize":I
    const/4 v10, 0x0

    .line 104
    .local v10, "usedWidth":I
    const/16 v21, 0x0

    .line 105
    .local v21, "measuredChildren":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_d

    .line 109
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 114
    .restart local v4    # "c":Landroid/view/View;
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_b

    .line 105
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 97
    .end local v4    # "c":Landroid/view/View;
    .end local v10    # "usedWidth":I
    .end local v15    # "constrained":Z
    .end local v17    # "innerWidth":I
    .end local v21    # "measuredChildren":I
    .end local v25    # "otherSize":I
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "constrained":Z
    goto :goto_3

    .line 112
    .restart local v10    # "usedWidth":I
    .restart local v17    # "innerWidth":I
    .restart local v21    # "measuredChildren":I
    .restart local v25    # "otherSize":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v5, v16, v25

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .restart local v4    # "c":Landroid/view/View;
    goto :goto_5

    .line 117
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    .local v19, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v6, v10

    .line 120
    .local v6, "usedWidthForChild":I
    if-eqz v15, :cond_c

    .line 125
    sub-int v14, v17, v10

    .line 126
    .local v14, "availableWidth":I
    sub-int v3, v23, v21

    div-int v20, v14, v3

    .line 128
    .local v20, "maxWidthForChild":I
    sub-int v6, v17, v20

    .line 132
    .end local v14    # "availableWidth":I
    .end local v20    # "maxWidthForChild":I
    :cond_c
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    .line 135
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 140
    .end local v4    # "c":Landroid/view/View;
    .end local v6    # "usedWidthForChild":I
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    if-eqz v18, :cond_f

    if-eqz v15, :cond_10

    move/from16 v0, v17

    if-ge v10, v0, :cond_10

    .line 142
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .restart local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_e

    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    sub-int/2addr v10, v3

    .line 148
    :cond_e
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v24, v0

    .line 149
    .local v24, "originalWidth":I
    const/4 v3, -0x1

    move-object/from16 v0, v19

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 151
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v18

    move/from16 v9, p1

    move/from16 v11, p2

    .line 150
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 152
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 154
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    .line 157
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v24    # "originalWidth":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v5

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 52
    return-void

    .line 141
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_f

    goto :goto_7
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 187
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 185
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 193
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 191
    return-void
.end method

.method public setEmphasizedMode(Z)V
    .locals 4
    .param p1, "emphasizedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v2

    .line 272
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v3

    .line 271
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 273
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 269
    return-void

    .line 272
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
