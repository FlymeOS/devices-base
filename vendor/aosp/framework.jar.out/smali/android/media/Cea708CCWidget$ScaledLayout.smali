.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$1;,
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1076
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    .line 1073
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1089
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1140
    instance-of v0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 1285
    .local v5, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 1286
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1287
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1288
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 1290
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v8, v8

    if-lt v4, v8, :cond_1

    .line 1283
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 1293
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int v1, v5, v8

    .line 1294
    .local v1, "childLeft":I
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v6, v8

    .line 1295
    .local v2, "childTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1296
    .local v7, "saveCount":I
    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1297
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1298
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1287
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v7    # "saveCount":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1135
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 1263
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1264
    .local v8, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1265
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 1266
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1267
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 1268
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v2, v7, v9

    .line 1269
    .local v2, "childLeft":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v4, v8, v9

    .line 1270
    .local v4, "childTop":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v9

    .line 1271
    .local v1, "childBottom":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 1277
    .local v3, "childRight":I
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1265
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1261
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1145
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 1146
    .local v22, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1147
    .local v9, "heightSpecSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    sub-int v23, v22, v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    sub-int v21, v23, v24

    .line 1148
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sub-int v23, v9, v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    sub-int v8, v23, v24

    .line 1152
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 1153
    .local v7, "count":I
    new-array v0, v7, [Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 1154
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_b

    .line 1155
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1156
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1158
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1159
    new-instance v23, Ljava/lang/RuntimeException;

    .line 1160
    const-string/jumbo v24, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    .line 1159
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_0
    move-object/from16 v23, v13

    .line 1162
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    move/from16 v17, v0

    .local v17, "scaleStartRow":F
    move-object/from16 v23, v13

    .line 1163
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v15, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .local v15, "scaleEndRow":F
    move-object/from16 v23, v13

    .line 1164
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    move/from16 v16, v0

    .line 1165
    .local v16, "scaleStartCol":F
    check-cast v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 1166
    .local v14, "scaleEndCol":F
    const/16 v23, 0x0

    cmpg-float v23, v17, v23

    if-ltz v23, :cond_1

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_2

    .line 1167
    :cond_1
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1170
    :cond_2
    cmpg-float v23, v15, v17

    if-ltz v23, :cond_3

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_4

    .line 1171
    :cond_3
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1174
    :cond_4
    const/16 v23, 0x0

    cmpg-float v23, v14, v23

    if-ltz v23, :cond_5

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v14, v23

    if-lez v23, :cond_6

    .line 1175
    :cond_5
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1178
    :cond_6
    cmpg-float v23, v14, v16

    if-ltz v23, :cond_7

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v14, v23

    if-lez v23, :cond_8

    .line 1179
    :cond_7
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1187
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/Rect;

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v16

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1188
    int-to-float v0, v8

    move/from16 v26, v0

    .line 1187
    mul-float v26, v26, v17

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1188
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v14

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1187
    invoke-direct/range {v24 .. v28}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v24, v23, v10

    .line 1190
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v14, v16

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    .line 1189
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1191
    .local v6, "childWidthSpec":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1192
    .local v5, "childHeightSpec":I
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 1197
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    .line 1198
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v12, v23, v24

    .line 1199
    .local v12, "overflowedHeight":I
    add-int/lit8 v23, v12, 0x1

    div-int/lit8 v12, v23, 0x2

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v24, v24, v12

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-gez v23, :cond_9

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1206
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v8, :cond_a

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v25, v25, v8

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1212
    .end local v12    # "overflowedHeight":I
    :cond_a
    int-to-float v0, v8

    move/from16 v23, v0

    sub-float v24, v15, v17

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    .line 1211
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1213
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 1154
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1218
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childWidthSpec":I
    .end local v14    # "scaleEndCol":F
    .end local v15    # "scaleEndRow":F
    .end local v16    # "scaleStartCol":F
    .end local v17    # "scaleStartRow":F
    :cond_b
    const/16 v19, 0x0

    .line 1219
    .local v19, "visibleRectCount":I
    new-array v0, v7, [I

    move-object/from16 v20, v0

    .line 1220
    .local v20, "visibleRectGroup":[I
    new-array v0, v7, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1221
    .local v18, "visibleRectArray":[Landroid/graphics/Rect;
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_d

    .line 1222
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_c

    .line 1223
    aput v19, v20, v19

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    aput-object v23, v18, v19

    .line 1225
    add-int/lit8 v19, v19, 0x1

    .line 1221
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1228
    :cond_d
    sget-object v23, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1231
    const/4 v10, 0x0

    :goto_2
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    if-ge v10, v0, :cond_10

    .line 1232
    add-int/lit8 v11, v10, 0x1

    .local v11, "j":I
    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    .line 1233
    aget-object v23, v18, v10

    aget-object v24, v18, v11

    invoke-static/range {v23 .. v24}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1234
    aget v23, v20, v10

    aput v23, v20, v11

    .line 1235
    aget-object v23, v18, v11

    aget-object v24, v18, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    .line 1236
    aget-object v25, v18, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    .line 1237
    aget-object v26, v18, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    .line 1238
    aget-object v27, v18, v10

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    aget-object v28, v18, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    add-int v27, v27, v28

    .line 1235
    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    .line 1232
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1231
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1244
    .end local v11    # "j":I
    :cond_10
    add-int/lit8 v10, v19, -0x1

    :goto_4
    if-ltz v10, :cond_13

    .line 1245
    aget-object v23, v18, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v8, :cond_12

    .line 1246
    aget-object v23, v18, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v12, v23, v8

    .line 1247
    .restart local v12    # "overflowedHeight":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_5
    if-gt v11, v10, :cond_12

    .line 1248
    aget v23, v20, v10

    aget v24, v20, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1249
    aget-object v23, v18, v11

    aget-object v24, v18, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    .line 1250
    aget-object v25, v18, v11

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    .line 1251
    aget-object v26, v18, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    .line 1252
    aget-object v27, v18, v11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v27, v27, v12

    .line 1249
    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    .line 1247
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1244
    .end local v11    # "j":I
    .end local v12    # "overflowedHeight":I
    :cond_12
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1257
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1144
    return-void
.end method
