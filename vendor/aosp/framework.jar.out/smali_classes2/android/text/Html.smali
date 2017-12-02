.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 294
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 295
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 296
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 297
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v1, " "

    .line 298
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 300
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    .line 301
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    .line 303
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 304
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 305
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_1

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_2

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 310
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 314
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    .line 315
    const-string/jumbo v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_4
    invoke-static {p0, p1, v2, v6, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 320
    if-eqz v5, :cond_5

    .line 321
    const-string/jumbo v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_5
    move v2, v6

    goto/16 :goto_0

    .line 290
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 232
    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 234
    .local v4, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-get0()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 245
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    .end local v7    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v6

    .line 237
    .local v6, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 346
    sub-int v1, p2, p1

    .line 347
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v2

    .line 348
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 349
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 351
    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v3

    .line 353
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_0

    .line 358
    const-string/jumbo v4, " dir=\"ltr\""

    return-object v4

    .line 355
    :pswitch_0
    const-string/jumbo v4, " dir=\"rtl\""

    return-object v4

    .line 353
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceNoVerticalMargin"    # Z
    .param p4, "includeTextAlign"    # Z

    .prologue
    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, "margin":Ljava/lang/String;
    const/4 v6, 0x0

    .line 367
    .local v6, "textAlign":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 368
    const-string/jumbo v3, "margin-top:0; margin-bottom:0;"

    .line 370
    .end local v3    # "margin":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    .line 371
    const-class v7, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AlignmentSpan;

    .line 374
    .local v1, "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 375
    aget-object v4, v1, v2

    .line 376
    .local v4, "s":Landroid/text/style/AlignmentSpan;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    and-int/lit8 v7, v7, 0x33

    const/16 v8, 0x33

    if-ne v7, v8, :cond_4

    .line 377
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 378
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_2

    .line 379
    const-string/jumbo v6, "text-align:start;"

    .line 390
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v2    # "i":I
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v6    # "textAlign":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 391
    const-string/jumbo v7, ""

    return-object v7

    .line 380
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    .restart local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .restart local v2    # "i":I
    .restart local v4    # "s":Landroid/text/style/AlignmentSpan;
    .restart local v6    # "textAlign":Ljava/lang/String;
    :cond_2
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_3

    .line 381
    const-string/jumbo v6, "text-align:center;"

    .local v6, "textAlign":Ljava/lang/String;
    goto :goto_1

    .line 382
    .local v6, "textAlign":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_1

    .line 383
    const-string/jumbo v6, "text-align:end;"

    .local v6, "textAlign":Ljava/lang/String;
    goto :goto_1

    .line 374
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .local v6, "textAlign":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 394
    .end local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v2    # "i":I
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v6    # "textAlign":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " style=\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .local v5, "style":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 396
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_6
    :goto_2
    const-string/jumbo v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 397
    :cond_7
    if-eqz v3, :cond_8

    .line 398
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 399
    :cond_8
    if-eqz v6, :cond_6

    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .prologue
    .line 408
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    .line 409
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 407
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_0
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v6, 0xa

    .line 482
    const-string/jumbo v4, "<p"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 486
    invoke-static {p1, v6, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 487
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 488
    move v2, p3

    .line 491
    :cond_0
    const/4 v3, 0x0

    .line 493
    .local v3, "nl":I
    :goto_1
    if-ge v2, p3, :cond_1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 494
    add-int/lit8 v3, v3, 0x1

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 498
    :cond_1
    sub-int v4, v2, v3

    invoke-static {p0, p1, v0, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 500
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 501
    const-string/jumbo v4, "<br>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_2
    :goto_2
    move v0, v2

    goto :goto_0

    .line 503
    :cond_3
    const/4 v1, 0x2

    .local v1, "j":I
    :goto_3
    if-ge v1, v3, :cond_4

    .line 504
    const-string/jumbo v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 506
    :cond_4
    if-eq v2, p3, :cond_2

    .line 508
    const-string/jumbo v4, "</p>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v4, "<p"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    .end local v1    # "j":I
    .end local v2    # "next":I
    .end local v3    # "nl":I
    :cond_5
    const-string/jumbo v4, "</p>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "isInList":Z
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_c

    .line 420
    const/16 v8, 0xa

    invoke-static {p1, v8, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    .line 421
    .local v3, "next":I
    if-gez v3, :cond_0

    .line 422
    move v3, p3

    .line 425
    :cond_0
    if-ne v3, v0, :cond_3

    .line 426
    if-eqz v1, :cond_1

    .line 428
    const/4 v1, 0x0

    .line 429
    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    const-string/jumbo v8, "<br>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 419
    move v0, v3

    goto :goto_0

    .line 433
    :cond_3
    const/4 v2, 0x0

    .line 434
    .local v2, "isListItem":Z
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    .line 435
    .local v5, "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    const/4 v8, 0x0

    array-length v9, v5

    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v4, v5, v8

    .line 436
    .local v4, "paragraphStyle":Landroid/text/style/ParagraphStyle;
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 437
    .local v6, "spanFlags":I
    and-int/lit8 v10, v6, 0x33

    const/16 v11, 0x33

    if-ne v10, v11, :cond_7

    .line 438
    instance-of v10, v4, Landroid/text/style/BulletSpan;

    .line 437
    if-eqz v10, :cond_7

    .line 439
    const/4 v2, 0x1

    .line 444
    .end local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v6    # "spanFlags":I
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_8

    .line 452
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_9

    .line 458
    :cond_6
    :goto_4
    if-eqz v2, :cond_a

    const-string/jumbo v7, "li"

    .line 459
    .local v7, "tagType":Ljava/lang/String;
    :goto_5
    const-string/jumbo v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 460
    invoke-static {p1, v0, v3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v9

    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 461
    if-eqz v2, :cond_b

    const/4 v8, 0x0

    :goto_6
    const/4 v10, 0x1

    invoke-static {p1, v0, v3, v8, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v8

    .line 459
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 462
    const-string/jumbo v9, ">"

    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {p0, p1, v0, v3}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 466
    const-string/jumbo v8, "</"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v8, ">\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    if-ne v3, p3, :cond_2

    if-eqz v1, :cond_2

    .line 471
    const/4 v1, 0x0

    .line 472
    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    .end local v7    # "tagType":Ljava/lang/String;
    .restart local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .restart local v6    # "spanFlags":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 446
    .end local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v6    # "spanFlags":I
    :cond_8
    const/4 v1, 0x1

    .line 447
    const-string/jumbo v8, "<ul"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 448
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p1, v0, v3, v9, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v9

    .line 447
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 449
    const-string/jumbo v9, ">\n"

    .line 447
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 454
    :cond_9
    const/4 v1, 0x0

    .line 455
    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 458
    :cond_a
    const-string/jumbo v7, "p"

    .restart local v7    # "tagType":Ljava/lang/String;
    goto :goto_5

    .line 461
    :cond_b
    const/4 v8, 0x1

    goto :goto_6

    .line 416
    .end local v2    # "isListItem":Z
    .end local v3    # "next":I
    .end local v5    # "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "tagType":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .prologue
    const/4 v5, 0x0

    .line 329
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 330
    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 331
    .local v1, "next":I
    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/QuoteSpan;

    .line 333
    .local v3, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 334
    .local v2, "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 337
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 339
    array-length v6, v3

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 340
    .restart local v2    # "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 329
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 327
    .end local v1    # "next":I
    .end local v3    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .prologue
    const/4 v1, 0x0

    .line 282
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 283
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 284
    return-void

    .line 287
    :cond_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-static {p0, p1, v1, v0, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 281
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 17
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 519
    move/from16 v4, p2

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1c

    .line 520
    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v4, v1, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 521
    .local v6, "next":I
    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/CharacterStyle;

    .line 523
    .local v12, "style":[Landroid/text/style/CharacterStyle;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v13, v12

    if-ge v5, v13, :cond_e

    .line 524
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StyleSpan;

    if-eqz v13, :cond_1

    .line 525
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    .line 527
    .local v7, "s":I
    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_0

    .line 528
    const-string/jumbo v13, "<b>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_0
    and-int/lit8 v13, v7, 0x2

    if-eqz v13, :cond_1

    .line 531
    const-string/jumbo v13, "<i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .end local v7    # "s":I
    :cond_1
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    if-eqz v13, :cond_2

    .line 535
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, "s":Ljava/lang/String;
    const-string/jumbo v13, "monospace"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 538
    const-string/jumbo v13, "<tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    if-eqz v13, :cond_3

    .line 542
    const-string/jumbo v13, "<sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_3
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    if-eqz v13, :cond_4

    .line 545
    const-string/jumbo v13, "<sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_4
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v13, :cond_5

    .line 548
    const-string/jumbo v13, "<u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_5
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    if-eqz v13, :cond_6

    .line 551
    const-string/jumbo v13, "<span style=\"text-decoration:line-through;\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_6
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/URLSpan;

    if-eqz v13, :cond_7

    .line 554
    const-string/jumbo v13, "<a href=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/URLSpan;

    invoke-virtual {v13}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v13, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_7
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ImageSpan;

    if-eqz v13, :cond_8

    .line 559
    const-string/jumbo v13, "<img src=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/ImageSpan;

    invoke-virtual {v13}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v13, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    move v4, v6

    .line 566
    :cond_8
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v13, :cond_a

    .line 567
    aget-object v8, v12, v5

    check-cast v8, Landroid/text/style/AbsoluteSizeSpan;

    .line 568
    .local v8, "s":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v13

    int-to-float v10, v13

    .line 569
    .local v10, "sizeDip":F
    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v13

    if-nez v13, :cond_9

    .line 570
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 571
    .local v2, "application":Landroid/app/Application;
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v13

    .line 575
    .end local v2    # "application":Landroid/app/Application;
    :cond_9
    const-string/jumbo v13, "<span style=\"font-size:%.0fpx\";>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .end local v8    # "s":Landroid/text/style/AbsoluteSizeSpan;
    .end local v10    # "sizeDip":F
    :cond_a
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    if-eqz v13, :cond_b

    .line 578
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v13}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v11

    .line 579
    .local v11, "sizeEm":F
    const-string/jumbo v13, "<span style=\"font-size:%.2fem;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .end local v11    # "sizeEm":F
    :cond_b
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    if-eqz v13, :cond_c

    .line 582
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v13}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    .line 583
    .local v3, "color":I
    const-string/jumbo v13, "<span style=\"color:#%06X;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const v15, 0xffffff

    and-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .end local v3    # "color":I
    :cond_c
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    if-eqz v13, :cond_d

    .line 586
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v13}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    .line 587
    .restart local v3    # "color":I
    const-string/jumbo v13, "<span style=\"background-color:#%06X;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 588
    const v15, 0xffffff

    and-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 587
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .end local v3    # "color":I
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 592
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 594
    array-length v13, v12

    add-int/lit8 v5, v13, -0x1

    :goto_2
    if-ltz v5, :cond_1b

    .line 595
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    if-eqz v13, :cond_f

    .line 596
    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_f
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    if-eqz v13, :cond_10

    .line 599
    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_10
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    if-eqz v13, :cond_11

    .line 602
    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_11
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v13, :cond_12

    .line 605
    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_12
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/URLSpan;

    if-eqz v13, :cond_13

    .line 608
    const-string/jumbo v13, "</a>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_13
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    if-eqz v13, :cond_14

    .line 611
    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_14
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v13, :cond_15

    .line 614
    const-string/jumbo v13, "</u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_15
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    if-eqz v13, :cond_16

    .line 617
    const-string/jumbo v13, "</sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_16
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    if-eqz v13, :cond_17

    .line 620
    const-string/jumbo v13, "</sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_17
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    if-eqz v13, :cond_18

    .line 623
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 625
    .restart local v9    # "s":Ljava/lang/String;
    const-string/jumbo v13, "monospace"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 626
    const-string/jumbo v13, "</tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .end local v9    # "s":Ljava/lang/String;
    :cond_18
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StyleSpan;

    if-eqz v13, :cond_1a

    .line 630
    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    .line 632
    .restart local v7    # "s":I
    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_19

    .line 633
    const-string/jumbo v13, "</b>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_19
    and-int/lit8 v13, v7, 0x2

    if-eqz v13, :cond_1a

    .line 636
    const-string/jumbo v13, "</i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .end local v7    # "s":I
    :cond_1a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 519
    :cond_1b
    move v4, v6

    goto/16 :goto_0

    .line 517
    .end local v5    # "j":I
    .end local v6    # "next":I
    .end local v12    # "style":[Landroid/text/style/CharacterStyle;
    :cond_1c
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    .line 645
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    .line 646
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 648
    .local v0, "c":C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1

    .line 649
    const-string/jumbo v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2

    .line 651
    const-string/jumbo v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 652
    :cond_2
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 653
    const-string/jumbo v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 654
    :cond_3
    if-lt v0, v8, :cond_4

    if-gt v0, v9, :cond_4

    .line 655
    if-ge v0, v7, :cond_0

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_0

    .line 656
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 657
    .local v2, "d":C
    if-lt v2, v7, :cond_0

    if-gt v2, v9, :cond_0

    .line 658
    add-int/lit8 v3, v3, 0x1

    .line 659
    sub-int v4, v0, v8

    shl-int/lit8 v4, v4, 0xa

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    .line 660
    .local v1, "codepoint":I
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 663
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_4
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5

    if-ge v0, v6, :cond_6

    .line 664
    :cond_5
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 665
    :cond_6
    if-ne v0, v6, :cond_8

    .line 666
    :goto_2
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_7

    .line 667
    const-string/jumbo v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 671
    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 673
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 644
    .end local v0    # "c":C
    :cond_9
    return-void
.end method
