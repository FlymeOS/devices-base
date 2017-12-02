.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final sCachedIntBuffer:[[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCachedIntBuffer"
    .end annotation
.end field


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1759
    new-array v0, v2, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 1762
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 59
    sub-int v9, p3, p2

    .line 61
    .local v9, "srclen":I
    if-gez v9, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 63
    :cond_0
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 64
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 65
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 67
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 69
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 70
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 72
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 78
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_7

    move-object v7, p1

    .line 79
    check-cast v7, Landroid/text/Spanned;

    .line 80
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 82
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_6

    .line 83
    aget-object v0, v8, v6

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_1

    .line 82
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    :cond_1
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    .line 88
    .local v3, "st":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    .line 89
    .local v4, "en":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 91
    .local v5, "fl":I
    if-gez v3, :cond_2

    .line 92
    const/4 v3, 0x0

    .line 93
    :cond_2
    sub-int v0, p3, p2

    if-le v3, v0, :cond_3

    .line 94
    sub-int v3, p3, p2

    .line 96
    :cond_3
    if-gez v4, :cond_4

    .line 97
    const/4 v4, 0x0

    .line 98
    :cond_4
    sub-int v0, p3, p2

    if-le v4, v0, :cond_5

    .line 99
    sub-int v4, p3, p2

    .line 101
    :cond_5
    aget-object v2, v8, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    goto :goto_1

    .line 103
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :cond_6
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 58
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method private calcMax(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1691
    const/4 v0, 0x0

    .line 1692
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1694
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    .line 1696
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_1

    .line 1697
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1698
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 1699
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1702
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    .line 1703
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 41
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .prologue
    .line 326
    sub-int v36, p2, p1

    .line 327
    .local v36, "replacedLength":I
    sub-int v37, p5, p4

    .line 328
    .local v37, "replacementLength":I
    sub-int v12, v37, v36

    .line 330
    .local v12, "nbNewChars":I
    const/16 v27, 0x0

    .line 331
    .local v27, "changed":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v33, v4, -0x1

    .local v33, "i":I
    :goto_0
    if-ltz v33, :cond_c

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v4, v33

    .line 333
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v4, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v4

    .line 336
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v4, v33

    .line 337
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v4, :cond_1

    .line 338
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v4

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v33

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_5

    .line 341
    move/from16 v35, v7

    .line 342
    .local v35, "ost":I
    move/from16 v34, v8

    .line 343
    .local v34, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v28

    .line 345
    .local v28, "clen":I
    move/from16 v0, p1

    if-le v7, v0, :cond_2

    move/from16 v0, p2

    if-gt v7, v0, :cond_2

    .line 346
    move/from16 v7, p2

    :goto_1
    move/from16 v0, v28

    if-ge v7, v0, :cond_2

    .line 347
    move/from16 v0, p2

    if-le v7, v0, :cond_8

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    .line 351
    :cond_2
    move/from16 v0, p1

    if-le v8, v0, :cond_3

    move/from16 v0, p2

    if-gt v8, v0, :cond_3

    .line 352
    move/from16 v8, p2

    :goto_2
    move/from16 v0, v28

    if-ge v8, v0, :cond_3

    .line 353
    move/from16 v0, p2

    if-le v8, v0, :cond_9

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 357
    :cond_3
    move/from16 v0, v35

    if-ne v7, v0, :cond_4

    move/from16 v0, v34

    if-eq v8, v0, :cond_5

    .line 358
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v4, v33

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 359
    const/16 v27, 0x1

    .line 363
    .end local v28    # "clen":I
    .end local v34    # "oen":I
    .end local v35    # "ost":I
    :cond_5
    const/16 v30, 0x0

    .line 364
    .local v30, "flags":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_a

    const/16 v30, 0x1000

    .line 366
    :cond_6
    :goto_3
    move/from16 v0, p1

    if-ne v8, v0, :cond_b

    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x4000

    move/from16 v30, v0

    .line 368
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v33

    or-int v5, v5, v30

    aput v5, v4, v33

    .line 331
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_0

    .line 346
    .end local v30    # "flags":I
    .restart local v28    # "clen":I
    .restart local v34    # "oen":I
    .restart local v35    # "ost":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 352
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 365
    .end local v28    # "clen":I
    .end local v34    # "oen":I
    .end local v35    # "ost":I
    .restart local v30    # "flags":I
    :cond_a
    add-int v4, p2, v12

    if-ne v7, v4, :cond_6

    const/16 v30, 0x2000

    goto :goto_3

    .line 367
    :cond_b
    add-int v4, p2, v12

    if-ne v8, v4, :cond_7

    const v4, 0x8000

    or-int v30, v30, v4

    goto :goto_4

    .line 370
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v30    # "flags":I
    :cond_c
    if-eqz v27, :cond_d

    .line 371
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 374
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 376
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v12, v4, :cond_e

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 380
    :cond_e
    if-nez v37, :cond_12

    const/4 v15, 0x1

    .line 383
    .local v15, "textIsRemoved":Z
    :goto_5
    if-lez v36, :cond_10

    .line 384
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v4, :cond_10

    .line 385
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v4

    .line 384
    if-nez v4, :cond_f

    .line 391
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 392
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 394
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_11

    .line 395
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 399
    if-lez v36, :cond_15

    .line 401
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_13

    const/4 v14, 0x1

    .line 403
    .local v14, "atEnd":Z
    :goto_6
    const/16 v33, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v33

    if-ge v0, v4, :cond_14

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v33

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 405
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v10, v5, v33

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v33

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v33

    and-int/lit8 v20, v4, 0xf

    .line 409
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v5, v33

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v33

    .line 403
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    .line 380
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v15    # "textIsRemoved":Z
    .end local v20    # "endFlag":I
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "textIsRemoved":Z
    goto/16 :goto_5

    .line 401
    :cond_13
    const/4 v14, 0x0

    .restart local v14    # "atEnd":Z
    goto :goto_6

    .line 413
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 416
    .end local v14    # "atEnd":Z
    :cond_15
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1b

    move-object/from16 v38, p3

    .line 417
    check-cast v38, Landroid/text/Spanned;

    .line 418
    .local v38, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v38

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .line 420
    .local v39, "spans":[Ljava/lang/Object;
    const/16 v33, 0x0

    :goto_8
    move-object/from16 v0, v39

    array-length v4, v0

    move/from16 v0, v33

    if-ge v0, v4, :cond_1a

    .line 421
    aget-object v4, v39, v33

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 422
    .local v40, "st":I
    aget-object v4, v39, v33

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v29

    .line 424
    .local v29, "en":I
    move/from16 v0, v40

    move/from16 v1, p4

    if-ge v0, v1, :cond_16

    move/from16 v40, p4

    .line 425
    :cond_16
    move/from16 v0, v29

    move/from16 v1, p5

    if-le v0, v1, :cond_17

    move/from16 v29, p5

    .line 428
    :cond_17
    aget-object v4, v39, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_18

    .line 429
    sub-int v4, v40, p4

    add-int v24, v4, p1

    .line 430
    .local v24, "copySpanStart":I
    sub-int v4, v29, p4

    add-int v25, v4, p1

    .line 431
    .local v25, "copySpanEnd":I
    aget-object v4, v39, v33

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    or-int/lit16 v0, v4, 0x800

    move/from16 v26, v0

    .line 433
    .local v26, "copySpanFlags":I
    move/from16 v0, v26

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v32, v4, 0x4

    .line 434
    .local v32, "flagsStart":I
    and-int/lit8 v31, v26, 0xf

    .line 436
    .local v31, "flagsEnd":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphStart(II)Z

    move-result v4

    if-nez v4, :cond_18

    .line 437
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphEnd(II)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 420
    .end local v24    # "copySpanStart":I
    .end local v25    # "copySpanEnd":I
    .end local v26    # "copySpanFlags":I
    .end local v31    # "flagsEnd":I
    .end local v32    # "flagsStart":I
    :cond_18
    :goto_9
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .line 438
    .restart local v24    # "copySpanStart":I
    .restart local v25    # "copySpanEnd":I
    .restart local v26    # "copySpanFlags":I
    .restart local v31    # "flagsEnd":I
    .restart local v32    # "flagsStart":I
    :cond_19
    aget-object v23, v39, v33

    const/16 v22, 0x0

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    goto :goto_9

    .line 442
    .end local v24    # "copySpanStart":I
    .end local v25    # "copySpanEnd":I
    .end local v26    # "copySpanFlags":I
    .end local v29    # "en":I
    .end local v31    # "flagsEnd":I
    .end local v32    # "flagsStart":I
    .end local v40    # "st":I
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 324
    .end local v38    # "sp":Landroid/text/Spanned;
    .end local v39    # "spans":[Ljava/lang/Object;
    :cond_1b
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1312
    if-ge p3, p2, :cond_0

    .line 1313
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1314
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1314
    const-string/jumbo v3, " has end before start"

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1317
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1319
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 1320
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1321
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1321
    const-string/jumbo v3, " ends beyond length "

    .line 1320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1324
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 1325
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1326
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1326
    const-string/jumbo v3, " starts before 0"

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1311
    :cond_4
    return-void
.end method

.method private static checkSortBuffer([II)[I
    .locals 1
    .param p0, "buffer"    # [I
    .param p1, "size"    # I

    .prologue
    .line 1052
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 1053
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    return-object v0

    .line 1055
    :cond_1
    return-object p0
.end method

.method private final compareSpans(II[I[I)I
    .locals 4
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "priority"    # [I
    .param p4, "insertionOrder"    # [I

    .prologue
    .line 1143
    aget v0, p3, p1

    .line 1144
    .local v0, "priority1":I
    aget v1, p3, p2

    .line 1145
    .local v1, "priority2":I
    if-ne v0, v1, :cond_0

    .line 1146
    aget v2, p4, p1

    aget v3, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 1150
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 6
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "count":I
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1

    .line 891
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 892
    .local v1, "left":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v5, v1

    .line 893
    .local v3, "spanMax":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_0

    .line 894
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    .line 896
    :cond_0
    if-lt v3, p1, :cond_1

    .line 897
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    .line 900
    .end local v1    # "left":I
    .end local v3    # "spanMax":I
    :cond_1
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v5, :cond_7

    .line 901
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v5, p4

    .line 902
    .local v4, "spanStart":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v5, :cond_2

    .line 903
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    .line 905
    :cond_2
    if-gt v4, p2, :cond_7

    .line 906
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v5, p4

    .line 907
    .local v2, "spanEnd":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v5, :cond_3

    .line 908
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    .line 910
    :cond_3
    if-lt v2, p1, :cond_6

    .line 911
    if-eq v4, v2, :cond_4

    if-ne p1, p2, :cond_8

    .line 913
    :cond_4
    :goto_0
    const-class v5, Ljava/lang/Object;

    if-eq v5, p3, :cond_5

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v5, p4

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 910
    if-eqz v5, :cond_6

    .line 914
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 916
    :cond_6
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_7

    .line 917
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v5

    invoke-direct {p0, p1, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v5

    add-int/2addr v0, v5

    .line 921
    .end local v2    # "spanEnd":I
    .end local v4    # "spanStart":I
    :cond_7
    return v0

    .line 912
    .restart local v2    # "spanEnd":I
    .restart local v4    # "spanStart":I
    :cond_8
    if-eq v4, p2, :cond_6

    if-eq v2, p1, :cond_6

    goto :goto_0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 25
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "priority"    # [I
    .param p7, "insertionOrder"    # [I
    .param p8, "count"    # I
    .param p9, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    .prologue
    .line 943
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    .line 945
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v7

    .line 946
    .local v7, "left":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v21, v3, v7

    .line 947
    .local v21, "spanMax":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v21

    if-le v0, v3, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v21, v21, v3

    .line 950
    :cond_0
    move/from16 v0, v21

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 951
    invoke-direct/range {v3 .. v12}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result p8

    .line 955
    .end local v7    # "left":I
    .end local v21    # "spanMax":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_2

    return p8

    .line 956
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v23, v3, p4

    .line 957
    .local v23, "spanStart":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v23

    if-le v0, v3, :cond_3

    .line 958
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v23, v23, v3

    .line 960
    :cond_3
    move/from16 v0, v23

    move/from16 v1, p2

    if-gt v0, v1, :cond_9

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v20, v3, p4

    .line 962
    .local v20, "spanEnd":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v20

    if-le v0, v3, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v20, v20, v3

    .line 965
    :cond_4
    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    .line 966
    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 968
    :cond_5
    :goto_0
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    .line 965
    if-eqz v3, :cond_8

    .line 969
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, p4

    const/high16 v4, 0xff0000

    and-int v22, v3, v4

    .line 970
    .local v22, "spanPriority":I
    move/from16 v24, p8

    .line 971
    .local v24, "target":I
    if-eqz p9, :cond_b

    .line 972
    aput v22, p6, v24

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v3, v3, p4

    aput v3, p7, v24

    .line 984
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    aput-object v3, p5, v24

    .line 985
    add-int/lit8 p8, p8, 0x1

    .line 987
    .end local v22    # "spanPriority":I
    .end local v24    # "target":I
    :cond_8
    move-object/from16 v0, p5

    array-length v3, v0

    move/from16 v0, p8

    if-ge v0, v3, :cond_9

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    .line 988
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v12

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-direct/range {v8 .. v17}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result p8

    .line 992
    .end local v20    # "spanEnd":I
    :cond_9
    return p8

    .line 967
    .restart local v20    # "spanEnd":I
    :cond_a
    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 974
    .restart local v22    # "spanPriority":I
    .restart local v24    # "target":I
    :cond_b
    if-eqz v22, :cond_7

    .line 976
    const/16 v18, 0x0

    .line 977
    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p8

    if-ge v0, v1, :cond_c

    .line 978
    aget-object v3, p5, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/high16 v4, 0xff0000

    and-int v19, v3, v4

    .line 979
    .local v19, "p":I
    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 981
    .end local v19    # "p":I
    :cond_c
    add-int/lit8 v3, v18, 0x1

    sub-int v4, p8, v18

    move-object/from16 v0, p5

    move/from16 v1, v18

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    move/from16 v24, v18

    goto :goto_1

    .line 977
    .restart local v19    # "p":I
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_2
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 587
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_1

    move-object v4, p0

    .line 588
    check-cast v4, Landroid/text/Spanned;

    .line 589
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 590
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 591
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 592
    aget-object v3, v5, v1

    .line 593
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 594
    .local v0, "flags":I
    const/16 v6, 0x21

    if-eq v0, v6, :cond_0

    const/4 v6, 0x1

    return v6

    .line 591
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method private invalidateIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1756
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1755
    return-void
.end method

.method private final isInvalidParagraphEnd(II)Z
    .locals 3
    .param p1, "end"    # I
    .param p2, "flagsEnd"    # I

    .prologue
    const/4 v2, 0x0

    .line 782
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 783
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 784
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 786
    .local v0, "c":C
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 789
    .end local v0    # "c":C
    :cond_0
    return v2
.end method

.method private final isInvalidParagraphStart(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "flagsStart"    # I

    .prologue
    const/4 v2, 0x0

    .line 771
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 772
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 773
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 775
    .local v0, "c":C
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 778
    .end local v0    # "c":C
    :cond_0
    return v2
.end method

.method private static leftChild(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1675
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private moveGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 167
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v0, 0x1

    .line 172
    .local v0, "atEnd":Z
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    .line 173
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 174
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 181
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_c

    .line 182
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    .line 183
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 184
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 186
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    .line 187
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 188
    :cond_1
    if-le v5, p1, :cond_7

    .line 189
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 197
    :cond_2
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    .line 198
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 199
    :cond_3
    if-le v1, p1, :cond_9

    .line 200
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 208
    :cond_4
    :goto_4
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 209
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "atEnd":Z
    goto :goto_0

    .line 176
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 177
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    .line 190
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    .line 191
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 193
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    .line 194
    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 201
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    .line 202
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 204
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    .line 205
    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_4

    .line 211
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 214
    .end local v3    # "i":I
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 166
    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 1167
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    .line 1169
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 1170
    .local v1, "left":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1171
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1174
    .end local v1    # "left":I
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v3, :cond_3

    .line 1175
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    .line 1176
    .local v2, "st":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    .line 1177
    .local v0, "en":I
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    move p2, v2

    .line 1179
    :cond_1
    if-le v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1180
    move p2, v0

    .line 1181
    :cond_2
    if-ge v2, p2, :cond_3

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    .line 1182
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1186
    .end local v0    # "en":I
    .end local v2    # "st":I
    :cond_3
    return p2
.end method

.method private static obtain(I)[I
    .locals 6
    .param p0, "elementCount"    # I

    .prologue
    const/4 v5, -0x1

    .line 1002
    const/4 v2, 0x0

    .line 1003
    .local v2, "result":[I
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v4

    .line 1006
    const/4 v0, -0x1

    .line 1007
    .local v0, "candidateIndex":I
    :try_start_0
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1008
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 1009
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-lt v3, p0, :cond_2

    .line 1010
    move v0, v1

    .line 1018
    :cond_0
    if-eq v0, v5, :cond_1

    .line 1019
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v3, v0

    .line 1020
    .local v2, "result":[I
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    const/4 v5, 0x0

    aput-object v5, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "result":[I
    :cond_1
    monitor-exit v4

    .line 1023
    invoke-static {v2, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object v2

    .line 1024
    .restart local v2    # "result":[I
    return-object v2

    .line 1012
    .local v2, "result":[I
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1013
    move v0, v1

    .line 1007
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1003
    .end local v1    # "i":I
    .end local v2    # "result":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static recycle([I)V
    .locals 4
    .param p0, "buffer"    # [I

    .prologue
    .line 1033
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v2

    .line 1034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1035
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    array-length v1, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-le v1, v3, :cond_2

    .line 1036
    :cond_0
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1032
    return-void

    .line 1034
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 480
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 482
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    .line 483
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    .line 485
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 486
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 488
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 489
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 491
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 492
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 493
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 495
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 497
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 498
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 501
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 503
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 479
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 300
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 303
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v1

    .line 302
    if-eqz v1, :cond_0

    .line 304
    return v4

    .line 307
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_5

    .line 308
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, p4

    and-int/lit8 v1, v1, 0x21

    .line 309
    const/16 v2, 0x21

    .line 308
    if-ne v1, v2, :cond_3

    .line 310
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_3

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 311
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_3

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 313
    if-nez p3, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-le v1, p1, :cond_2

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 316
    return v4

    .line 313
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v1, v2, :cond_1

    .line 318
    :cond_3
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-gt v1, p2, :cond_4

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_4

    .line 319
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    .line 318
    :cond_4
    return v0

    .line 321
    :cond_5
    return v0
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 140
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v6

    .line 141
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    .line 146
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 147
    array-length v3, v4

    .line 148
    .local v3, "newLength":I
    sub-int v1, v3, v5

    .line 149
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 150
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 151
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 153
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 154
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 155
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_5

    .line 158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v6, :cond_4

    .line 159
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 160
    :cond_2
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 158
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 139
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 807
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    .end local p1    # "i":I
    :cond_0
    return p1
.end method

.method private restoreInvariants()V
    .locals 11

    .prologue
    .line 1708
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v8, :cond_0

    return-void

    .line 1713
    :cond_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v8, :cond_4

    .line 1714
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v8, v3

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v10, v3, -0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_3

    .line 1715
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v8, v3

    .line 1716
    .local v6, "span":Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v8, v3

    .line 1717
    .local v7, "start":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v8, v3

    .line 1718
    .local v0, "end":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v8, v3

    .line 1719
    .local v2, "flags":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v4, v8, v3

    .line 1720
    .local v4, "insertionOrder":I
    move v5, v3

    .line 1722
    .local v5, "j":I
    :cond_1
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v10, v5, -0x1

    aget-object v9, v9, v10

    aput-object v9, v8, v5

    .line 1723
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    .line 1724
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    .line 1725
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    .line 1726
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    aput v9, v8, v5

    .line 1727
    add-int/lit8 v5, v5, -0x1

    .line 1728
    if-lez v5, :cond_2

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    if-lt v7, v8, :cond_1

    .line 1729
    :cond_2
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v6, v8, v5

    .line 1730
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v7, v8, v5

    .line 1731
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v0, v8, v5

    .line 1732
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v2, v8, v5

    .line 1733
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v4, v8, v5

    .line 1734
    invoke-direct {p0, v5}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 1713
    .end local v0    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "insertionOrder":I
    .end local v5    # "j":I
    .end local v6    # "span":Ljava/lang/Object;
    .end local v7    # "start":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1739
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1742
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v8, :cond_5

    .line 1743
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1745
    :cond_5
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_1
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v8, :cond_8

    .line 1746
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1747
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v3, :cond_7

    .line 1748
    :cond_6
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v9, v9, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1751
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_8
    const v8, 0x7fffffff

    iput v8, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1707
    return-void
.end method

.method private static rightChild(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1679
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .prologue
    .line 1269
    array-length v1, p1

    .line 1271
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1273
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1275
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1268
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1249
    array-length v1, p1

    .line 1251
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1253
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1248
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1279
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1280
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1282
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1283
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 1299
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1300
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1299
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 1301
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 1302
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 1303
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1302
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1296
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1288
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1289
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1291
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1292
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1259
    array-length v1, p1

    .line 1261
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1263
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1258
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 12
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .prologue
    const v11, 0x8000

    .line 601
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_c

    .line 602
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 605
    .local v9, "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_0

    .line 601
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 607
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 608
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 609
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 611
    :cond_2
    add-int v7, p2, p3

    .line 612
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    .line 614
    .local v8, "spanChanged":Z
    move v2, v4

    .line 615
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_6

    .line 616
    if-eqz p3, :cond_3

    .line 617
    sub-int/2addr v2, p3

    .line 618
    const/4 v8, 0x1

    .line 633
    :cond_3
    :goto_2
    move v3, v5

    .line 634
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_9

    .line 635
    if-eqz p3, :cond_4

    .line 636
    sub-int/2addr v3, p3

    .line 637
    const/4 v8, 0x1

    .line 650
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 651
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 653
    :cond_5
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    goto :goto_1

    .line 620
    .end local v3    # "previousSpanEnd":I
    :cond_6
    if-lt v4, p1, :cond_3

    .line 622
    if-ne v4, p1, :cond_7

    .line 623
    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_3

    .line 624
    :cond_7
    if-ne v4, v7, :cond_8

    .line 625
    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_3

    .line 629
    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    .line 639
    .restart local v3    # "previousSpanEnd":I
    :cond_9
    if-lt v5, p1, :cond_4

    .line 641
    if-ne v5, p1, :cond_a

    .line 642
    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_4

    .line 643
    :cond_a
    if-ne v5, v7, :cond_b

    .line 644
    and-int v0, v9, v11

    if-eq v0, v11, :cond_4

    .line 646
    :cond_b
    const/4 v8, 0x1

    goto :goto_3

    .line 657
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_c
    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_10

    .line 658
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 659
    .restart local v9    # "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_f

    .line 660
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    and-int/lit16 v1, v1, -0x801

    aput v1, v0, v6

    .line 661
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 662
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 663
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 664
    :cond_d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_e

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 665
    :cond_e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 657
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 600
    .end local v9    # "spanFlags":I
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 14
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 683
    const-string/jumbo v2, "setSpan"

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 685
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v9, v2, 0x4

    .line 686
    .local v9, "flagsStart":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v9}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphStart(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :cond_0
    and-int/lit8 v8, p5, 0xf

    .line 691
    .local v8, "flagsEnd":I
    move/from16 v0, p4

    invoke-direct {p0, v0, v8}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphEnd(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    :cond_1
    const/4 v2, 0x2

    if-ne v9, v2, :cond_3

    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 697
    if-eqz p1, :cond_2

    .line 698
    const-string/jumbo v2, "SpannableStringBuilder"

    const-string/jumbo v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_2
    return-void

    .line 706
    :cond_3
    move/from16 v6, p3

    .line 707
    .local v6, "nstart":I
    move/from16 v7, p4

    .line 709
    .local v7, "nend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v2, :cond_9

    .line 710
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    .line 716
    :cond_4
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v2, :cond_b

    .line 717
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    .line 723
    :cond_5
    :goto_1
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v2, :cond_d

    .line 724
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 725
    .local v11, "index":Ljava/lang/Integer;
    if-eqz v11, :cond_d

    .line 726
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 727
    .local v10, "i":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v2, v10

    .line 728
    .local v4, "ostart":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v2, v10

    .line 730
    .local v5, "oend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v2, :cond_6

    .line 731
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v2

    .line 732
    :cond_6
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v2, :cond_7

    .line 733
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v2

    .line 735
    :cond_7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v2, v10

    .line 736
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v2, v10

    .line 737
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v2, v10

    .line 739
    if-eqz p1, :cond_8

    .line 740
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object v2, p0

    move-object/from16 v3, p2

    .line 741
    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 744
    :cond_8
    return-void

    .line 711
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v10    # "i":I
    .end local v11    # "index":Ljava/lang/Integer;
    :cond_9
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 712
    const/4 v2, 0x2

    if-eq v9, v2, :cond_a

    const/4 v2, 0x3

    if-ne v9, v2, :cond_4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 713
    :cond_a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    goto :goto_0

    .line 718
    :cond_b
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 719
    const/4 v2, 0x2

    if-eq v8, v2, :cond_c

    const/4 v2, 0x3

    if-ne v8, v2, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 720
    :cond_c
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    goto :goto_1

    .line 748
    :cond_d
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 749
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 750
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 751
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 752
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v13, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v2, v3, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 753
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 754
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 755
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 759
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v12, v2, 0x1

    .line 760
    .local v12, "sizeOfMax":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v2, v2

    if-ge v2, v12, :cond_e

    .line 761
    new-array v2, v12, [I

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 764
    :cond_e
    if-eqz p1, :cond_f

    .line 765
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 766
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 682
    :cond_f
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 5
    .param p1, "index"    # I
    .param p3, "size"    # I
    .param p4, "priority"    # [I
    .param p5, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    .prologue
    .line 1105
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 1106
    .local v0, "left":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1107
    add-int/lit8 v4, p3, -0x1

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v0, v4, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v4

    if-gez v4, :cond_0

    .line 1108
    add-int/lit8 v0, v0, 0x1

    .line 1110
    :cond_0
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 1104
    :cond_1
    return-void

    .line 1114
    :cond_2
    aget-object v3, p2, p1

    .line 1115
    .local v3, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object v4, p2, v0

    aput-object v4, p2, p1

    .line 1116
    aput-object v3, p2, v0

    .line 1118
    aget v2, p4, p1

    .line 1119
    .local v2, "tmpPriority":I
    aget v4, p4, v0

    aput v4, p4, p1

    .line 1120
    aput v2, p4, v0

    .line 1122
    aget v1, p5, p1

    .line 1123
    .local v1, "tmpOrder":I
    aget v4, p5, v0

    aput v4, p5, p1

    .line 1124
    aput v1, p5, v0

    .line 1126
    move p1, v0

    .line 1127
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    goto :goto_0
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .locals 13
    .param p2, "priority"    # [I
    .param p3, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v3, p1

    .line 1072
    .local v3, "size":I
    div-int/lit8 v0, v3, 0x2

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    .line 1073
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1072
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1076
    :cond_0
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-lez v1, :cond_1

    .line 1077
    const/4 v0, 0x0

    aget-object v12, p1, v0

    .line 1078
    .local v12, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object v0, p1, v1

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 1079
    aput-object v12, p1, v1

    .line 1081
    const/4 v0, 0x0

    aget v11, p2, v0

    .line 1082
    .local v11, "tmpPriority":I
    aget v0, p2, v1

    const/4 v2, 0x0

    aput v0, p2, v2

    .line 1083
    aput v11, p2, v1

    .line 1085
    const/4 v0, 0x0

    aget v10, p3, v0

    .line 1086
    .local v10, "tmpOrder":I
    aget v0, p3, v1

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 1087
    aput v10, p3, v1

    .line 1089
    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move v7, v1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1076
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1070
    .end local v10    # "tmpOrder":I
    .end local v11    # "tmpPriority":I
    .end local v12    # "tmpSpan":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method

.method private treeRoot()I
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .prologue
    .line 448
    if-lt p1, p2, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 449
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 454
    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    .line 455
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 458
    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 459
    if-eqz p5, :cond_5

    .line 460
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 466
    :cond_2
    if-nez p6, :cond_3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_4

    .line 467
    :cond_3
    return p2

    .line 470
    :cond_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    .line 475
    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 109
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    return-object p0

    .line 111
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 288
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 269
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 282
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 283
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 284
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 120
    .local v0, "len":I
    if-gez p1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    if-lt p1, v0, :cond_1

    .line 123
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    .line 127
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    .line 129
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string/jumbo v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 240
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 238
    return-void
.end method

.method public clearSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 245
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 246
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 247
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 248
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 250
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 251
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 252
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    .line 253
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 255
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 256
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v6, v4, v0

    .line 258
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 260
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    .line 263
    :cond_3
    iput v5, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 244
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 229
    const-string/jumbo v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 231
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 234
    :cond_0
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1416
    const-string/jumbo v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1418
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    .line 1419
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1415
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    .line 1421
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1423
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1425
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1426
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1427
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1438
    const-string/jumbo v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1440
    sub-int v5, p5, p4

    .line 1441
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1442
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_0

    .line 1443
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1437
    :goto_0
    return-void

    .line 1444
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_1

    .line 1445
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1448
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1449
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1450
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1451
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1598
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 1599
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1598
    if-eqz v5, :cond_7

    move-object v1, p1

    .line 1600
    check-cast v1, Landroid/text/Spanned;

    .line 1602
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1603
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v6, v3

    if-ne v5, v6, :cond_7

    .line 1604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v5, :cond_6

    .line 1605
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v5, v0

    .line 1606
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 1607
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    .line 1608
    if-ne v1, v2, :cond_0

    .line 1609
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1612
    :cond_0
    return v7

    .line 1610
    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1611
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1604
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1615
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 1618
    :cond_4
    :goto_1
    return v7

    .line 1616
    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1617
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 1621
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 1624
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    :cond_7
    return v7
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 1202
    const-string/jumbo v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1204
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1205
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1201
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1207
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1210
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    .line 1211
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    .line 1212
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    .line 1210
    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 825
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 826
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 827
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 835
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 836
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 837
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 815
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 816
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 817
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 847
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 11
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "sortByInsertionOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;Z)[TT;"
        }
    .end annotation

    .prologue
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 866
    if-nez p3, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 867
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 868
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v10

    .line 869
    .local v10, "count":I
    if-nez v10, :cond_2

    .line 870
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 874
    :cond_2
    invoke-static {p3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 875
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    if-eqz p4, :cond_4

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v6

    .line 876
    .local v6, "prioSortBuffer":[I
    :goto_0
    if-eqz p4, :cond_5

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v7

    .line 877
    .local v7, "orderSortBuffer":[I
    :goto_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 879
    if-eqz p4, :cond_3

    .line 880
    invoke-direct {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 881
    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 882
    invoke-static {v7}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 884
    :cond_3
    return-object v5

    .line 875
    .end local v6    # "prioSortBuffer":[I
    .end local v7    # "orderSortBuffer":[I
    :cond_4
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    .restart local v6    # "prioSortBuffer":[I
    goto :goto_0

    .line 876
    :cond_5
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .restart local v7    # "orderSortBuffer":[I
    goto :goto_1
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1512
    sub-int v5, p4, p3

    .line 1513
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1515
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1516
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1529
    .local v9, "ret":F
    :goto_0
    return v9

    .line 1518
    .end local v9    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1519
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    .line 1520
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1519
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_0

    .line 1522
    .end local v9    # "ret":F
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1523
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1524
    sub-int v2, p1, p3

    .line 1525
    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1524
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1526
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1563
    sub-int v3, p2, p1

    .line 1564
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1565
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1578
    .local v7, "ret":I
    :goto_0
    return v7

    .line 1567
    .end local v7    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1568
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    .line 1569
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    .line 1568
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    .line 1569
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 1568
    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_0

    .line 1571
    .end local v7    # "ret":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1572
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1574
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    .line 1573
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1575
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWatcherDepth()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1484
    const-string/jumbo v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1488
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1489
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1500
    .local v1, "ret":I
    :goto_0
    return v1

    .line 1490
    .end local v1    # "ret":I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1491
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0

    .line 1493
    .end local v1    # "ret":I
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1495
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1496
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1497
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1630
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1631
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int v0, v3, v4

    .line 1632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1633
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 1634
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 1635
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 1637
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1638
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1639
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 219
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1460
    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1464
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1465
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1476
    .local v1, "ret":F
    :goto_0
    return v1

    .line 1466
    .end local v1    # "ret":F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1467
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_0

    .line 1469
    .end local v1    # "ret":F
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1471
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1472
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1473
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 1159
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return p2

    .line 1160
    :cond_0
    if-nez p3, :cond_1

    .line 1161
    const-class p3, Ljava/lang/Object;

    .line 1163
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 796
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 798
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 795
    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 512
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 27
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 514
    const-string/jumbo v6, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 516
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v6

    move/from16 v20, v0

    .line 517
    .local v20, "filtercount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v21

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v25

    .line 520
    .local v25, "repl":Ljava/lang/CharSequence;
    if-eqz v25, :cond_0

    .line 521
    move-object/from16 p3, v25

    .line 522
    const/16 p4, 0x0

    .line 523
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 517
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 527
    .end local v25    # "repl":Ljava/lang/CharSequence;
    :cond_1
    sub-int v24, p2, p1

    .line 528
    .local v24, "origLen":I
    sub-int v22, p5, p4

    .line 530
    .local v22, "newLen":I
    if-nez v24, :cond_2

    if-nez v22, :cond_2

    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 536
    :cond_2
    add-int v6, p1, v24

    const-class v7, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/TextWatcher;

    .line 537
    .local v26, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 542
    if-eqz v24, :cond_8

    if-eqz v22, :cond_8

    const/16 v16, 0x1

    .line 543
    .local v16, "adjustSelection":Z
    :goto_1
    const/4 v9, 0x0

    .line 544
    .local v9, "selectionStart":I
    const/4 v13, 0x0

    .line 545
    .local v13, "selectionEnd":I
    if-eqz v16, :cond_3

    .line 546
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 547
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 550
    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 552
    if-eqz v16, :cond_6

    .line 553
    const/16 v17, 0x0

    .line 554
    .local v17, "changed":Z
    move/from16 v0, p1

    if-le v9, v0, :cond_4

    move/from16 v0, p2

    if-ge v9, v0, :cond_4

    .line 555
    sub-int v6, v9, p1

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 556
    .local v18, "diff":J
    move/from16 v0, v22

    int-to-long v6, v0

    mul-long v6, v6, v18

    move/from16 v0, v24

    int-to-long v10, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v23

    .line 557
    .local v23, "offset":I
    add-int v9, p1, v23

    .line 559
    const/16 v17, 0x1

    .line 560
    sget-object v8, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/4 v7, 0x0

    .line 561
    const/16 v11, 0x22

    move-object/from16 v6, p0

    move v10, v9

    .line 560
    invoke-direct/range {v6 .. v11}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 563
    .end local v18    # "diff":J
    .end local v23    # "offset":I
    :cond_4
    move/from16 v0, p1

    if-le v13, v0, :cond_5

    move/from16 v0, p2

    if-ge v13, v0, :cond_5

    .line 564
    sub-int v6, v13, p1

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 565
    .restart local v18    # "diff":J
    move/from16 v0, v22

    int-to-long v6, v0

    mul-long v6, v6, v18

    move/from16 v0, v24

    int-to-long v10, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v23

    .line 566
    .restart local v23    # "offset":I
    add-int v13, p1, v23

    .line 568
    const/16 v17, 0x1

    .line 569
    sget-object v12, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/4 v11, 0x0

    .line 570
    const/16 v15, 0x22

    move-object/from16 v10, p0

    move v14, v13

    .line 569
    invoke-direct/range {v10 .. v15}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 572
    .end local v18    # "diff":J
    .end local v23    # "offset":I
    :cond_5
    if-eqz v17, :cond_6

    .line 573
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 577
    .end local v17    # "changed":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 581
    sub-int v6, v22, v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 583
    return-object p0

    .line 533
    .end local v9    # "selectionStart":I
    .end local v13    # "selectionEnd":I
    .end local v16    # "adjustSelection":Z
    .end local v26    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_7
    return-object p0

    .line 542
    .restart local v26    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_1
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1583
    if-nez p1, :cond_0

    .line 1584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1587
    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1582
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 676
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 675
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1194
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1234
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 1235
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1236
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1221
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1222
    .local v1, "len":I
    new-array v0, v1, [C

    .line 1224
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1225
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
