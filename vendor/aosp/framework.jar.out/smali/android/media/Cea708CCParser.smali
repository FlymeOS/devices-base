.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$1;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/String;

    .line 192
    const-string/jumbo v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 191
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Cea708CCParser$DisplayListener;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 198
    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 240
    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 259
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 256
    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "captionEvent"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 253
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 250
    return-void
.end method

.method private parseC0([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x2

    .line 317
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-lt v2, v5, :cond_2

    .line 318
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2

    .line 319
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ne v2, v5, :cond_0

    .line 323
    :try_start_0
    aget-byte v2, p1, p2

    if-nez v2, :cond_1

    .line 324
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x2

    .line 365
    :goto_1
    :sswitch_0
    return p2

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const-string/jumbo v3, "EUC-KR"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 327
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "Cea708CCParser"

    const-string/jumbo v3, "P16 Code - Could not find supported encoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 335
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_3

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 343
    :cond_3
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 347
    :sswitch_1
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 350
    :sswitch_2
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 353
    :sswitch_3
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 356
    :sswitch_4
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 359
    :sswitch_5
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method private parseC1([BI)I
    .locals 49
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    packed-switch v5, :pswitch_data_0

    .line 621
    :goto_0
    :pswitch_0
    return p2

    .line 381
    :pswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 v25, v5, -0x80

    .line 382
    .local v25, "windowId":I
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    .line 391
    .end local v25    # "windowId":I
    :pswitch_2
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    .line 392
    .local v48, "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    .line 393
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    .line 402
    .end local v48    # "windowBitmap":I
    :pswitch_3
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    .line 403
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    .line 404
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x5

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    .line 413
    .end local v48    # "windowBitmap":I
    :pswitch_4
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    .line 414
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    .line 415
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    .line 424
    .end local v48    # "windowBitmap":I
    :pswitch_5
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    .line 425
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    .line 426
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x7

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 435
    .end local v48    # "windowBitmap":I
    :pswitch_6
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    .line 436
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    .line 437
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 446
    .end local v48    # "windowBitmap":I
    :pswitch_7
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v47, v0

    .line 447
    .local v47, "tenthsOfSeconds":I
    add-int/lit8 p2, p2, 0x1

    .line 448
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 457
    .end local v47    # "tenthsOfSeconds":I
    :pswitch_8
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v13, 0xa

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 466
    :pswitch_9
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v13, 0xb

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 475
    :pswitch_a
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v8, v5, 0x4

    .line 476
    .local v8, "textTag":I
    aget-byte v5, p1, p2

    and-int/lit8 v6, v5, 0x3

    .line 477
    .local v6, "penSize":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v7, v5, 0x2

    .line 478
    .local v7, "penOffset":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    const/4 v12, 0x1

    .line 479
    .local v12, "italic":Z
    :goto_1
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    const/4 v11, 0x1

    .line 480
    .local v11, "underline":Z
    :goto_2
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x38

    shr-int/lit8 v10, v5, 0x3

    .line 481
    .local v10, "edgeType":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v9, v5, 0x7

    .line 482
    .local v9, "fontTag":I
    add-int/lit8 p2, p2, 0x2

    .line 483
    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 484
    new-instance v5, Landroid/media/Cea708CCParser$CaptionPenAttr;

    invoke-direct/range {v5 .. v12}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    .line 483
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-direct {v13, v0, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 478
    .end local v9    # "fontTag":I
    .end local v10    # "edgeType":I
    .end local v11    # "underline":Z
    .end local v12    # "italic":Z
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "italic":Z
    goto :goto_1

    .line 479
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "underline":Z
    goto :goto_2

    .line 497
    .end local v6    # "penSize":I
    .end local v7    # "penOffset":I
    .end local v8    # "textTag":I
    .end local v11    # "underline":Z
    .end local v12    # "italic":Z
    :pswitch_b
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    .line 498
    .local v44, "opacity":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    .line 499
    .local v45, "red":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    .line 500
    .local v43, "green":I
    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    .line 501
    .local v39, "blue":I
    new-instance v42, Landroid/media/Cea708CCParser$CaptionColor;

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 502
    .local v42, "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    .line 503
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    .line 504
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    .line 505
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    .line 506
    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    .line 507
    new-instance v38, Landroid/media/Cea708CCParser$CaptionColor;

    move-object/from16 v0, v38

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 508
    .local v38, "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    .line 509
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    .line 510
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    .line 511
    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    .line 512
    new-instance v41, Landroid/media/Cea708CCParser$CaptionColor;

    .line 513
    const/4 v5, 0x0

    .line 512
    move-object/from16 v0, v41

    move/from16 v1, v45

    move/from16 v2, v43

    move/from16 v3, v39

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 514
    .local v41, "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    .line 515
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 516
    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenColor;

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    invoke-direct {v13, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    .line 515
    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 528
    .end local v38    # "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v39    # "blue":I
    .end local v41    # "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v42    # "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v43    # "green":I
    .end local v44    # "opacity":I
    .end local v45    # "red":I
    :pswitch_c
    aget-byte v5, p1, p2

    and-int/lit8 v46, v5, 0xf

    .line 529
    .local v46, "row":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v40, v5, 0x3f

    .line 530
    .local v40, "column":I
    add-int/lit8 p2, p2, 0x2

    .line 531
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 532
    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenLocation;

    move/from16 v0, v46

    move/from16 v1, v40

    invoke-direct {v13, v0, v1}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    .line 531
    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 542
    .end local v40    # "column":I
    .end local v46    # "row":I
    :pswitch_d
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    .line 543
    .restart local v44    # "opacity":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    .line 544
    .restart local v45    # "red":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    .line 545
    .restart local v43    # "green":I
    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    .line 546
    .restart local v39    # "blue":I
    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v43

    move/from16 v3, v39

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 547
    .local v14, "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x5

    or-int v16, v5, v13

    .line 548
    .local v16, "borderType":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    .line 549
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    .line 550
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v39, v5, 0x3

    .line 551
    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    .line 552
    const/4 v5, 0x0

    .line 551
    move/from16 v0, v45

    move/from16 v1, v43

    move/from16 v2, v39

    invoke-direct {v15, v5, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 553
    .local v15, "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    const/16 v17, 0x1

    .line 554
    .local v17, "wordWrap":Z
    :goto_3
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v18, v5, 0x4

    .line 555
    .local v18, "printDirection":I
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v19, v5, 0x2

    .line 556
    .local v19, "scrollDirection":I
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v20, v5, 0x3

    .line 557
    .local v20, "justify":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v22, v5, 0x4

    .line 558
    .local v22, "effectSpeed":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v21, v5, 0x2

    .line 559
    .local v21, "effectDirection":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v23, v5, 0x3

    .line 560
    .local v23, "displayEffect":I
    add-int/lit8 p2, p2, 0x4

    .line 561
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 562
    new-instance v13, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    .line 561
    const/16 v24, 0xf

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 553
    .end local v17    # "wordWrap":Z
    .end local v18    # "printDirection":I
    .end local v19    # "scrollDirection":I
    .end local v20    # "justify":I
    .end local v21    # "effectDirection":I
    .end local v22    # "effectSpeed":I
    .end local v23    # "displayEffect":I
    :cond_2
    const/16 v17, 0x0

    .restart local v17    # "wordWrap":Z
    goto :goto_3

    .line 586
    .end local v14    # "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v15    # "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v16    # "borderType":I
    .end local v17    # "wordWrap":Z
    .end local v39    # "blue":I
    .end local v43    # "green":I
    .end local v44    # "opacity":I
    .end local v45    # "red":I
    :pswitch_e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit16 v0, v5, -0x98

    move/from16 v25, v0

    .line 587
    .restart local v25    # "windowId":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    const/16 v26, 0x1

    .line 588
    .local v26, "visible":Z
    :goto_4
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    const/16 v27, 0x1

    .line 589
    .local v27, "rowLock":Z
    :goto_5
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    const/16 v28, 0x1

    .line 590
    .local v28, "columnLock":Z
    :goto_6
    aget-byte v5, p1, p2

    and-int/lit8 v29, v5, 0x7

    .line 591
    .local v29, "priority":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    const/16 v30, 0x1

    .line 592
    .local v30, "relativePositioning":Z
    :goto_7
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v31, v5, 0x7f

    .line 593
    .local v31, "anchorVertical":I
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v32, v0

    .line 594
    .local v32, "anchorHorizontal":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v33, v5, 0x4

    .line 595
    .local v33, "anchorId":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v34, v5, 0xf

    .line 596
    .local v34, "rowCount":I
    add-int/lit8 v5, p2, 0x4

    aget-byte v5, p1, v5

    and-int/lit8 v35, v5, 0x3f

    .line 597
    .local v35, "columnCount":I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x38

    shr-int/lit8 v37, v5, 0x3

    .line 598
    .local v37, "windowStyle":I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v36, v5, 0x7

    .line 599
    .local v36, "penStyle":I
    add-int/lit8 p2, p2, 0x6

    .line 600
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 601
    new-instance v24, Landroid/media/Cea708CCParser$CaptionWindow;

    invoke-direct/range {v24 .. v37}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    .line 600
    const/16 v13, 0x10

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    .line 587
    .end local v26    # "visible":Z
    .end local v27    # "rowLock":Z
    .end local v28    # "columnLock":Z
    .end local v29    # "priority":I
    .end local v30    # "relativePositioning":Z
    .end local v31    # "anchorVertical":I
    .end local v32    # "anchorHorizontal":I
    .end local v33    # "anchorId":I
    .end local v34    # "rowCount":I
    .end local v35    # "columnCount":I
    .end local v36    # "penStyle":I
    .end local v37    # "windowStyle":I
    :cond_3
    const/16 v26, 0x0

    .restart local v26    # "visible":Z
    goto :goto_4

    .line 588
    :cond_4
    const/16 v27, 0x0

    .restart local v27    # "rowLock":Z
    goto :goto_5

    .line 589
    :cond_5
    const/16 v28, 0x0

    .restart local v28    # "columnLock":Z
    goto :goto_6

    .line 591
    .restart local v29    # "priority":I
    :cond_6
    const/16 v30, 0x0

    .restart local v30    # "relativePositioning":Z
    goto :goto_7

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 670
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_1

    .line 671
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return p2

    .line 673
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 674
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    .line 675
    add-int/lit8 p2, p2, 0x1

    .line 674
    goto :goto_0

    .line 676
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 677
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    .line 678
    add-int/lit8 p2, p2, 0x2

    .line 677
    goto :goto_0

    .line 679
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 680
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 681
    add-int/lit8 p2, p2, 0x3

    goto :goto_0
.end method

.method private parseC3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 690
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 691
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x87

    if-gt v0, v1, :cond_1

    .line 692
    add-int/lit8 p2, p2, 0x4

    .line 697
    :cond_0
    :goto_0
    return p2

    .line 693
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x88

    if-lt v0, v1, :cond_0

    .line 694
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_0

    .line 695
    add-int/lit8 p2, p2, 0x5

    goto :goto_0
.end method

.method private parseExt1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 648
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 649
    add-int/lit8 p2, p2, 0x1

    .line 650
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_1

    .line 651
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 652
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    .line 663
    :cond_0
    :goto_0
    return p2

    .line 653
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    .line 654
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_2

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    .line 656
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3

    .line 657
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_3

    .line 658
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_0

    .line 659
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_0

    .line 660
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 661
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    goto :goto_0
.end method

.method private parseG0([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 627
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    :goto_0
    return p2

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private parseG1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 641
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    return p2
.end method

.method private parseG2([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 703
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    sparse-switch v0, :sswitch_data_0

    .line 717
    :sswitch_0
    return p2

    .line 703
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseG3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 723
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 728
    :cond_0
    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 279
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 280
    add-int/lit8 p2, p2, 0x1

    .line 281
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    .line 311
    :cond_0
    :goto_0
    return p2

    .line 286
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_2

    .line 287
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    .line 292
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_3

    .line 293
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_3

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    .line 298
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_4

    .line 299
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_4

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_0

    .line 304
    :cond_4
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_0

    .line 305
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method public parse([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 269
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 264
    return-void
.end method
