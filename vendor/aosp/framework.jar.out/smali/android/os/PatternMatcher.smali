.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 154
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    .line 153
    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 98
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 99
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 96
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_0
.end method

.method private static isParsedModifier(I)Z
    .locals 2
    .param p0, "parsedChar"    # I

    .prologue
    const/4 v0, 0x1

    .line 423
    const/4 v1, -0x8

    if-eq p0, v1, :cond_0

    .line 424
    const/4 v1, -0x7

    if-ne p0, v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    const/4 v1, -0x6

    if-eq p0, v1, :cond_0

    .line 426
    const/4 v1, -0x5

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 13
    .param p0, "parsedPattern"    # [I
    .param p1, "match"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v10, 0x0

    .local v10, "ip":I
    const/4 v1, 0x0

    .line 435
    .local v1, "im":I
    array-length v9, p0

    .local v9, "LP":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 442
    .local v2, "LM":I
    const/4 v7, 0x0

    .local v7, "charSetStart":I
    const/4 v8, 0x0

    .line 444
    .local v8, "charSetEnd":I
    :goto_0
    if-ge v10, v9, :cond_6

    .line 446
    aget v12, p0, v10

    .line 449
    .local v12, "patternChar":I
    packed-switch v12, :pswitch_data_0

    .line 465
    :pswitch_0
    move v7, v10

    .line 466
    const/4 v3, 0x0

    .line 467
    .local v3, "tokenType":I
    add-int/lit8 v10, v10, 0x1

    .line 475
    :goto_1
    if-lt v10, v9, :cond_3

    .line 476
    const/4 v5, 0x1

    .local v5, "maxRepetition":I
    const/4 v4, 0x1

    .line 500
    .local v4, "minRepetition":I
    :goto_2
    if-le v4, v5, :cond_4

    .line 501
    const/4 v0, 0x0

    return v0

    .line 451
    .end local v3    # "tokenType":I
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_1
    const/4 v3, 0x1

    .line 452
    .restart local v3    # "tokenType":I
    add-int/lit8 v10, v10, 0x1

    .line 453
    goto :goto_1

    .line 456
    .end local v3    # "tokenType":I
    :pswitch_2
    const/4 v0, -0x1

    if-ne v12, v0, :cond_2

    .line 457
    const/4 v3, 0x2

    .line 459
    .restart local v3    # "tokenType":I
    :goto_3
    add-int/lit8 v7, v10, 0x1

    .line 460
    :cond_0
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v9, :cond_1

    aget v0, p0, v10

    const/4 v6, -0x3

    if-ne v0, v6, :cond_0

    .line 461
    :cond_1
    add-int/lit8 v8, v10, -0x1

    .line 462
    add-int/lit8 v10, v10, 0x1

    .line 463
    goto :goto_1

    .line 458
    .end local v3    # "tokenType":I
    :cond_2
    const/4 v3, 0x3

    .restart local v3    # "tokenType":I
    goto :goto_3

    .line 478
    :cond_3
    aget v12, p0, v10

    .line 479
    packed-switch v12, :pswitch_data_1

    .line 496
    :pswitch_3
    const/4 v5, 0x1

    .restart local v5    # "maxRepetition":I
    const/4 v4, 0x1

    .line 497
    .restart local v4    # "minRepetition":I
    goto :goto_2

    .line 481
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_4
    const/4 v4, 0x0

    .line 482
    .restart local v4    # "minRepetition":I
    const v5, 0x7fffffff

    .line 483
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x1

    .line 484
    goto :goto_2

    .line 486
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_5
    const/4 v4, 0x1

    .line 487
    .restart local v4    # "minRepetition":I
    const v5, 0x7fffffff

    .line 488
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x1

    .line 489
    goto :goto_2

    .line 491
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_6
    add-int/lit8 v10, v10, 0x1

    aget v4, p0, v10

    .line 492
    .restart local v4    # "minRepetition":I
    add-int/lit8 v10, v10, 0x1

    aget v5, p0, v10

    .line 493
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x2

    .line 494
    goto :goto_2

    :cond_4
    move-object v0, p1

    move-object v6, p0

    .line 505
    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v11

    .line 509
    .local v11, "matched":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_5

    .line 510
    const/4 v0, 0x0

    return v0

    .line 514
    :cond_5
    add-int/2addr v1, v11

    goto :goto_0

    .line 516
    .end local v3    # "tokenType":I
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    .end local v11    # "matched":I
    .end local v12    # "patternChar":I
    :cond_6
    if-lt v10, v9, :cond_7

    if-lt v1, v2, :cond_7

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 449
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch -0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 6
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "parsedPattern"    # [I
    .param p5, "tokenStart"    # I
    .param p6, "tokenEnd"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    if-lt p1, p2, :cond_0

    .line 536
    return v3

    .line 538
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 560
    return v3

    .line 540
    :pswitch_0
    return v2

    .line 542
    :pswitch_1
    move v0, p5

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_2

    .line 543
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 544
    .local v1, "matchChar":C
    aget v4, p4, v0

    if-lt v1, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_1

    .line 545
    return v2

    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 548
    .end local v1    # "matchChar":C
    :cond_2
    return v3

    .line 550
    .end local v0    # "i":I
    :pswitch_2
    move v0, p5

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p6, :cond_4

    .line 551
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 552
    .restart local v1    # "matchChar":C
    aget v4, p4, v0

    if-lt v1, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_3

    .line 553
    return v3

    .line 550
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 556
    .end local v1    # "matchChar":C
    :cond_4
    return v2

    .line 558
    .end local v0    # "i":I
    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, p4, p5

    if-ne v4, v5, :cond_5

    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 8
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "minRepetition"    # I
    .param p5, "maxRepetition"    # I
    .param p6, "parsedPattern"    # [I
    .param p7, "tokenStart"    # I
    .param p8, "tokenEnd"    # I

    .prologue
    .line 522
    const/4 v7, 0x0

    .line 524
    .local v7, "matched":I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 525
    add-int v1, p1, v7

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v0

    .line 524
    if-eqz v0, :cond_0

    .line 527
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 530
    :cond_0
    if-ge v7, p4, :cond_1

    const/4 v7, -0x1

    .end local v7    # "matched":I
    :cond_1
    return v7
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0x2a

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 180
    .local v1, "NP":I
    if-gtz v1, :cond_1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 184
    .local v0, "NM":I
    const/4 v5, 0x0

    .local v5, "ip":I
    const/4 v4, 0x0

    .line 185
    .local v4, "im":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 186
    :goto_1
    if-ge v5, v1, :cond_13

    if-ge v4, v0, :cond_13

    .line 187
    move v2, v6

    .line 188
    .local v2, "c":C
    add-int/lit8 v5, v5, 0x1

    .line 189
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 190
    :goto_2
    if-ne v2, v12, :cond_4

    move v3, v7

    .line 191
    .local v3, "escaped":Z
    :goto_3
    if-eqz v3, :cond_2

    .line 192
    move v2, v6

    .line 193
    add-int/lit8 v5, v5, 0x1

    .line 194
    if-ge v5, v1, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 196
    :cond_2
    :goto_4
    if-ne v6, v11, :cond_11

    .line 197
    if-nez v3, :cond_e

    if-ne v2, v10, :cond_e

    .line 198
    add-int/lit8 v9, v1, -0x1

    if-lt v5, v9, :cond_6

    .line 201
    return v7

    .line 189
    .end local v3    # "escaped":Z
    :cond_3
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_2

    .end local v6    # "nextChar":C
    :cond_4
    move v3, v8

    .line 190
    goto :goto_3

    .line 194
    .restart local v3    # "escaped":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "nextChar":C
    goto :goto_4

    .line 203
    .end local v6    # "nextChar":C
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 204
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 207
    .local v6, "nextChar":C
    if-ne v6, v12, :cond_7

    .line 208
    add-int/lit8 v5, v5, 0x1

    .line 209
    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 212
    .end local v6    # "nextChar":C
    :cond_7
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_a

    .line 217
    :cond_8
    if-ne v4, v0, :cond_b

    .line 220
    return v8

    .line 209
    .restart local v6    # "nextChar":C
    :cond_9
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_5

    .line 215
    .end local v6    # "nextChar":C
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 216
    if-ge v4, v0, :cond_8

    goto :goto_5

    .line 222
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 223
    if-ge v5, v1, :cond_c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 224
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "nextChar":C
    goto :goto_6

    .line 231
    .end local v6    # "nextChar":C
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 232
    if-ge v4, v0, :cond_f

    .line 228
    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_d

    .line 233
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 234
    if-ge v5, v1, :cond_10

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, "nextChar":C
    goto :goto_1

    .end local v6    # "nextChar":C
    :cond_10
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_1

    .line 237
    .end local v6    # "nextChar":C
    :cond_11
    if-eq v2, v10, :cond_12

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_12

    return v8

    .line 238
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "c":C
    .end local v3    # "escaped":Z
    :cond_13
    if-lt v5, v1, :cond_14

    if-lt v4, v0, :cond_14

    .line 244
    return v7

    .line 250
    :cond_14
    add-int/lit8 v9, v1, -0x2

    if-ne v5, v9, :cond_15

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_15

    .line 251
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_15

    .line 252
    return v7

    .line 255
    :cond_15
    return v8
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "parsedPattern"    # [I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 165
    if-nez p0, :cond_0

    return v1

    .line 166
    :cond_0
    if-nez p3, :cond_1

    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 168
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 170
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 171
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 172
    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 173
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 175
    :cond_4
    return v1
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 22
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const-class v20, Landroid/os/PatternMatcher;

    monitor-enter v20

    .line 264
    const/4 v11, 0x0

    .line 265
    .local v11, "ip":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 267
    .local v2, "LP":I
    const/4 v12, 0x0

    .line 269
    .local v12, "it":I
    const/4 v10, 0x0

    .line 270
    .local v10, "inSet":Z
    const/4 v9, 0x0

    .line 271
    .local v9, "inRange":Z
    const/4 v8, 0x0

    .local v8, "inCharClass":Z
    move v13, v12

    .line 275
    .end local v12    # "it":I
    .local v13, "it":I
    :goto_0
    if-ge v11, v2, :cond_15

    .line 276
    const/16 v19, 0x7fd

    move/from16 v0, v19

    if-le v13, v0, :cond_0

    .line 277
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Pattern is too large!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "LP":I
    .end local v8    # "inCharClass":Z
    .end local v9    # "inRange":Z
    .end local v10    # "inSet":Z
    .end local v13    # "it":I
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 280
    .restart local v2    # "LP":I
    .restart local v8    # "inCharClass":Z
    .restart local v9    # "inRange":Z
    .restart local v10    # "inSet":Z
    .restart local v13    # "it":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 281
    .local v4, "c":C
    const/4 v3, 0x0

    .line 283
    .local v3, "addToParsedPattern":Z
    sparse-switch v4, :sswitch_data_0

    .line 359
    const/4 v3, 0x1

    .line 362
    :goto_1
    if-eqz v10, :cond_f

    .line 363
    if-eqz v8, :cond_d

    .line 364
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    .line 365
    const/4 v8, 0x0

    .line 414
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_0

    .line 285
    :sswitch_0
    if-eqz v10, :cond_1

    .line 286
    const/4 v3, 0x1

    goto :goto_1

    .line 288
    :cond_1
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5e

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 289
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x2

    aput v21, v19, v13

    .line 290
    add-int/lit8 v11, v11, 0x1

    .line 294
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 295
    const/4 v10, 0x1

    move v13, v12

    .line 296
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_0

    .line 292
    :cond_2
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x1

    aput v21, v19, v13

    goto :goto_3

    .line 300
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :sswitch_1
    if-nez v10, :cond_3

    .line 301
    const/4 v3, 0x1

    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    :goto_4
    move v13, v12

    .line 313
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_1

    .line 303
    :cond_3
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v15, v19, v21

    .line 304
    .local v15, "parsedToken":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_4

    .line 305
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    .line 306
    :cond_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    .line 307
    const-string/jumbo v21, "You must define characters in a set."

    .line 306
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 309
    :cond_5
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x3

    aput v21, v19, v13

    .line 310
    const/4 v10, 0x0

    .line 311
    const/4 v8, 0x0

    goto :goto_4

    .line 315
    .end local v12    # "it":I
    .end local v15    # "parsedToken":I
    .restart local v13    # "it":I
    :sswitch_2
    if-nez v10, :cond_1c

    .line 316
    if-eqz v13, :cond_6

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 317
    :cond_6
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 319
    :cond_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x5

    aput v21, v19, v13

    .line 320
    add-int/lit8 v11, v11, 0x1

    .line 321
    const/4 v9, 0x1

    :goto_5
    move v13, v12

    .line 323
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    .line 325
    :sswitch_3
    if-eqz v9, :cond_1b

    .line 326
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x6

    aput v21, v19, v13

    .line 327
    const/4 v9, 0x0

    :goto_6
    move v13, v12

    .line 329
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    .line 331
    :sswitch_4
    if-nez v10, :cond_1a

    .line 332
    if-eqz v13, :cond_8

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 333
    :cond_8
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 335
    :cond_9
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x7

    aput v21, v19, v13

    :goto_7
    move v13, v12

    .line 337
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    .line 339
    :sswitch_5
    if-nez v10, :cond_19

    .line 340
    if-eqz v13, :cond_a

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 341
    :cond_a
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 343
    :cond_b
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x8

    aput v21, v19, v13

    :goto_8
    move v13, v12

    .line 345
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    .line 347
    :sswitch_6
    if-nez v10, :cond_18

    .line 348
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x4

    aput v21, v19, v13

    :goto_9
    move v13, v12

    .line 350
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    .line 352
    :sswitch_7
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_c

    .line 353
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Escape found at end of pattern!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 355
    :cond_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 356
    const/4 v3, 0x1

    .line 357
    goto/16 :goto_1

    .line 368
    :cond_d
    add-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    if-ge v0, v2, :cond_e

    .line 369
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x2d

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 370
    add-int/lit8 v19, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5d

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 371
    const/4 v8, 0x1

    .line 372
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    .line 373
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 375
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_e
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    .line 376
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "it":I
    .restart local v13    # "it":I
    aput v4, v19, v12

    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_2

    .line 379
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_f
    if-eqz v9, :cond_14

    .line 380
    const/16 v19, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 381
    .local v7, "endOfSet":I
    if-gez v7, :cond_10

    .line 382
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range not ended with \'}\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 384
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 385
    .local v18, "rangeString":Ljava/lang/String;
    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 389
    .local v5, "commaIndex":I
    if-gez v5, :cond_11

    .line 390
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 391
    .local v14, "parsedRange":I
    move/from16 v16, v14

    .local v16, "rangeMax":I
    move/from16 v17, v14

    .line 400
    .end local v14    # "parsedRange":I
    .local v17, "rangeMin":I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_13

    .line 401
    new-instance v19, Ljava/lang/IllegalArgumentException;

    .line 402
    const-string/jumbo v21, "Range quantifier minimum is greater than maximum"

    .line 401
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    move v12, v13

    .line 407
    .end local v13    # "it":I
    .restart local v12    # "it":I
    :goto_b
    :try_start_3
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range number format incorrect"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_11
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 394
    .restart local v17    # "rangeMin":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_12

    .line 395
    const v16, 0x7fffffff

    .restart local v16    # "rangeMax":I
    goto :goto_a

    .line 397
    .end local v16    # "rangeMax":I
    :cond_12
    add-int/lit8 v19, v5, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "rangeMax":I
    goto :goto_a

    .line 404
    :cond_13
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    :try_start_5
    aput v17, v19, v13

    .line 405
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :try_start_6
    aput v16, v19, v12
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 409
    move v11, v7

    goto/16 :goto_0

    .line 411
    .end local v5    # "commaIndex":I
    .end local v7    # "endOfSet":I
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    .end local v18    # "rangeString":Ljava/lang/String;
    :cond_14
    if-eqz v3, :cond_17

    .line 412
    :try_start_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    goto/16 :goto_2

    .line 416
    .end local v3    # "addToParsedPattern":Z
    .end local v4    # "c":C
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_15
    if-eqz v10, :cond_16

    .line 417
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Set was not terminated!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 419
    :cond_16
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([II)[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v19

    monitor-exit v20

    return-object v19

    .line 406
    .end local v13    # "it":I
    .restart local v3    # "addToParsedPattern":Z
    .restart local v4    # "c":C
    .restart local v5    # "commaIndex":I
    .restart local v7    # "endOfSet":I
    .restart local v12    # "it":I
    .restart local v16    # "rangeMax":I
    .restart local v17    # "rangeMin":I
    .restart local v18    # "rangeString":Ljava/lang/String;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b

    .end local v5    # "commaIndex":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "endOfSet":I
    .end local v12    # "it":I
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    .end local v18    # "rangeString":Ljava/lang/String;
    .restart local v13    # "it":I
    :cond_17
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_2

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_18
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_9

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_19
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_8

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1a
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_7

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1b
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_6

    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1c
    move v12, v13

    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_5

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2e -> :sswitch_6
        0x5b -> :sswitch_0
        0x5c -> :sswitch_7
        0x5d -> :sswitch_1
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    const-string/jumbo v0, "? "

    .line 120
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    :pswitch_0
    const-string/jumbo v0, "LITERAL: "

    goto :goto_0

    .line 125
    :pswitch_1
    const-string/jumbo v0, "PREFIX: "

    goto :goto_0

    .line 128
    :pswitch_2
    const-string/jumbo v0, "GLOB: "

    goto :goto_0

    .line 131
    :pswitch_3
    const-string/jumbo v0, "ADVANCED: "

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 141
    return-void
.end method
