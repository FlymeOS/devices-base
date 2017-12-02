.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    .prologue
    .line 123
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 125
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 130
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 129
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 144
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 148
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 152
    const/4 v10, 0x1

    .line 164
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 138
    return-void

    .line 154
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    .line 155
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    .line 154
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 160
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 161
    const/4 v10, 0x0

    .restart local v10    # "trust":Z
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 220
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .prologue
    .line 239
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .prologue
    .line 250
    const/16 v11, 0x1f4

    .line 251
    .local v11, "MAX_BUF_LEN":I
    const/16 v3, 0x1f4

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v13

    .line 252
    .local v13, "buffer":[C
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 253
    .local v6, "textLength":I
    const/4 v12, 0x1

    .line 256
    .local v12, "boring":Z
    const/16 v20, 0x0

    .local v20, "start":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v6, :cond_1

    .line 257
    move/from16 v0, v20

    add-int/lit16 v3, v0, 0x1f4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 261
    .local v15, "end":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1, v15, v13, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 263
    sub-int v18, v15, v20

    .line 264
    .local v18, "len":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 265
    aget-char v14, v13, v17

    .line 267
    .local v14, "c":C
    const/16 v3, 0xa

    if-eq v14, v3, :cond_0

    const/16 v3, 0x9

    if-ne v14, v3, :cond_3

    .line 276
    :cond_0
    const/4 v12, 0x0

    .line 289
    .end local v14    # "c":C
    .end local v15    # "end":I
    .end local v17    # "i":I
    .end local v18    # "len":I
    :cond_1
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->recycle([C)V

    .line 291
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    move-object/from16 v19, p0

    .line 292
    check-cast v19, Landroid/text/Spanned;

    .line 293
    .local v19, "sp":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/ParagraphStyle;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 294
    .local v21, "styles":[Ljava/lang/Object;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_2

    .line 295
    const/4 v12, 0x0

    .line 299
    .end local v19    # "sp":Landroid/text/Spanned;
    .end local v21    # "styles":[Ljava/lang/Object;
    :cond_2
    if-eqz v12, :cond_d

    .line 300
    move-object/from16 v16, p3

    .line 301
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez p3, :cond_c

    .line 302
    new-instance v16, Landroid/text/BoringLayout$Metrics;

    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    invoke-direct/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 307
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :goto_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 309
    .local v2, "line":Landroid/text/TextLine;
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 308
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 309
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    .line 308
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 310
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 311
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 313
    return-object v16

    .line 268
    .end local v2    # "line":Landroid/text/TextLine;
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .restart local v14    # "c":C
    .restart local v15    # "end":I
    .restart local v17    # "i":I
    .restart local v18    # "len":I
    :cond_3
    const/16 v3, 0x590

    if-lt v14, v3, :cond_4

    const/16 v3, 0x8ff

    if-le v14, v3, :cond_0

    .line 269
    :cond_4
    const/16 v3, 0x200f

    if-eq v14, v3, :cond_0

    .line 270
    const/16 v3, 0x202a

    if-lt v14, v3, :cond_5

    const/16 v3, 0x202e

    if-le v14, v3, :cond_0

    .line 271
    :cond_5
    const/16 v3, 0x2066

    if-lt v14, v3, :cond_6

    const/16 v3, 0x2069

    if-le v14, v3, :cond_0

    .line 272
    :cond_6
    const v3, 0xd800

    if-lt v14, v3, :cond_7

    const v3, 0xdfff

    if-le v14, v3, :cond_0

    .line 273
    :cond_7
    const v3, 0xfb1d

    if-lt v14, v3, :cond_8

    const v3, 0xfdff

    if-le v14, v3, :cond_0

    .line 274
    :cond_8
    const v3, 0xfe70

    if-lt v14, v3, :cond_9

    const v3, 0xfefe

    if-le v14, v3, :cond_0

    .line 264
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 283
    .end local v14    # "c":C
    :cond_a
    if-eqz p2, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v13, v3, v1}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 284
    const/4 v12, 0x0

    .line 285
    goto/16 :goto_2

    .line 256
    :cond_b
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v20, v0

    goto/16 :goto_0

    .line 304
    .end local v15    # "end":I
    .end local v17    # "i":I
    .end local v18    # "len":I
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_c
    invoke-static/range {p3 .. p3}, Landroid/text/BoringLayout$Metrics;->-wrap0(Landroid/text/BoringLayout$Metrics;)V

    goto :goto_3

    .line 315
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_d
    const/4 v3, 0x0

    return-object v3
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z

    .prologue
    .line 43
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    .prologue
    .line 54
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    .prologue
    .line 404
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 405
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 403
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 415
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 416
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 414
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 387
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 392
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 339
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 372
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 362
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 344
    if-nez p1, :cond_0

    .line 345
    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 331
    if-nez p1, :cond_0

    .line 332
    return v0

    .line 334
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineWidth(I)F
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 367
    if-nez p1, :cond_0

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "trustWidth"    # Z

    .prologue
    .line 176
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 182
    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 184
    if-eqz p8, :cond_2

    .line 185
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v11, v3, v4

    .line 186
    .local v11, "spacing":I
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 192
    :goto_1
    iput v11, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 194
    if-eqz p9, :cond_3

    .line 195
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    .line 209
    :goto_2
    if-eqz p8, :cond_0

    .line 210
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 211
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 173
    :cond_0
    return-void

    .line 179
    .end local v11    # "spacing":I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v11, v3, v4

    .line 189
    .restart local v11    # "spacing":I
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_1

    .line 202
    :cond_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 203
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 204
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 203
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 204
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 203
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    .line 206
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_2
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    .prologue
    .line 69
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 72
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 77
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 76
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 78
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 95
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 99
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 102
    const/4 v10, 0x1

    .line 113
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 115
    return-object p0

    .line 104
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    .line 105
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    .line 104
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 109
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 110
    const/4 v10, 0x0

    .restart local v10    # "trust":Z
    goto :goto_0
.end method
