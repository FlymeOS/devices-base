.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1275
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1269
    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1270
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1271
    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1272
    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1276
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1277
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1278
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1280
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1286
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500a1

    .line 1285
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1288
    const v1, 0x105009f

    .line 1287
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1290
    const v1, 0x10500a0

    .line 1289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1274
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 1348
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1349
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    .line 1350
    .local v0, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 1352
    .local v2, "previousWidth":F
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1353
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1354
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1355
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1358
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1361
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1362
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1363
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1364
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1367
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1371
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1345
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 1375
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 1377
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 1378
    .local v3, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1380
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    .line 1381
    .local v4, "raised":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v1, -0x1

    .line 1382
    .local v1, "colorUp":I
    :goto_1
    if-eqz v4, :cond_2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1383
    .local v0, "colorDown":I
    :goto_2
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 1386
    .local v2, "offset":F
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    neg-float v8, v2

    neg-float v9, v2

    invoke-virtual {p0, v7, v8, v9, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1387
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1390
    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1393
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1394
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1397
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1400
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1374
    return-void

    .end local v0    # "colorDown":I
    .end local v1    # "colorUp":I
    .end local v2    # "offset":F
    .end local v4    # "raised":Z
    :cond_0
    move v4, v6

    .line 1380
    goto :goto_0

    .line 1381
    .restart local v4    # "raised":Z
    :cond_1
    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .restart local v1    # "colorUp":I
    goto :goto_1

    .line 1382
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "colorDown":I
    goto :goto_2
.end method

.method private setBackgroundSpans(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1404
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1405
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1406
    check-cast v2, Landroid/text/Spannable;

    .line 1408
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    const/4 v6, 0x0

    .line 1407
    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 1409
    .local v0, "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 1410
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1403
    .end local v0    # "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1329
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1330
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    if-nez v0, :cond_1

    .line 1333
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1334
    return-void

    .line 1331
    :cond_1
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1337
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1338
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    .line 1328
    :goto_0
    return-void

    .line 1341
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1310
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v3, v4

    .line 1311
    .local v1, "fontSize":F
    invoke-virtual {p0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1313
    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1314
    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1315
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1318
    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1319
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string/jumbo v4, "1234567890123456789012345678901234"

    const-string/jumbo v5, "1234567890123456789012345678901234"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1320
    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v0, v3

    .line 1321
    .local v0, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 1322
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1324
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1309
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/4 v2, 0x0

    .line 1294
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1295
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1296
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1297
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1299
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1300
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1301
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1305
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1293
    return-void

    .line 1303
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
