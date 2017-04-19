.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static synthetic -get0(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    .line 118
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 125
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 32
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 93
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 98
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 103
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 113
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 136
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 138
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 139
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 141
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 135
    return-void
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 459
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 461
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 463
    const-string/jumbo v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    .line 475
    :cond_0
    :goto_0
    return-object v2

    .line 464
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 466
    const-string/jumbo v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 471
    .end local v0    # "addressType":I
    .end local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    return-object v3

    .line 467
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    .restart local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 469
    const-string/jumbo v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    .line 642
    :pswitch_0
    const/16 v21, 0x3

    return v21

    .line 484
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 487
    .local v20, "version":I
    if-nez v20, :cond_1

    .line 488
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 645
    .end local v20    # "version":I
    :cond_0
    :goto_0
    const/16 v21, 0x0

    return v21

    .line 490
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_0

    .line 497
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 498
    .local v19, "textString":[B
    if-nez v19, :cond_2

    .line 499
    const/16 v21, 0x2

    return v21

    .line 502
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    .line 509
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 511
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    .line 512
    const/16 v21, 0x2

    return v21

    .line 516
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 517
    aget-object v21, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 518
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    .line 519
    const/16 v21, 0x1

    return v21

    .line 522
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 516
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 529
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 532
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    .line 533
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 532
    if-nez v21, :cond_5

    .line 534
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    .line 535
    const-string/jumbo v22, "insert-address-token"

    .line 534
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 532
    if-eqz v21, :cond_6

    .line 537
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 539
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_0

    .line 541
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 545
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 548
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    .line 549
    const/16 v21, 0x1

    return v21

    .line 552
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 554
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 555
    .local v12, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 556
    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    .line 567
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 568
    .local v17, "octet":I
    if-nez v17, :cond_8

    .line 569
    const/16 v21, 0x2

    return v21

    .line 572
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 577
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 578
    .local v6, "date":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v6

    if-nez v21, :cond_9

    .line 579
    const/16 v21, 0x2

    return v21

    .line 582
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_0

    .line 588
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 589
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    .line 590
    const/16 v21, 0x2

    return v21

    .line 593
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 594
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_0

    .line 598
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 599
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    .line 600
    const/16 v21, 0x2

    return v21

    .line 603
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 605
    const-string/jumbo v21, "advertisement"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 604
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 606
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 608
    :cond_c
    const-string/jumbo v21, "auto"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 607
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 609
    const/16 v21, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 611
    :cond_d
    const-string/jumbo v21, "personal"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 610
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 612
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 614
    :cond_e
    const-string/jumbo v21, "informational"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 613
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 615
    const/16 v21, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 617
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_0

    .line 622
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 623
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v8

    if-nez v21, :cond_10

    .line 624
    const/16 v21, 0x2

    return v21

    .line 627
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 632
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 633
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 635
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v10

    .line 636
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 637
    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x5

    .line 1165
    if-nez p0, :cond_0

    .line 1166
    return v1

    .line 1169
    :cond_0
    const-string/jumbo v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    const/4 v0, 0x3

    return v0

    .line 1172
    :cond_1
    const-string/jumbo v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    const/4 v0, 0x1

    return v0

    .line 1175
    :cond_2
    const-string/jumbo v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1177
    const/4 v0, 0x2

    return v0

    .line 1178
    :cond_3
    const-string/jumbo v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    const/4 v0, 0x4

    return v0

    .line 1183
    :cond_4
    return v1
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 732
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 734
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 738
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 739
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 742
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    return v2

    .line 747
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    return v2

    .line 752
    :cond_2
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 754
    return v1
.end method

.method private makeMessageBody()I
    .locals 34

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 851
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v32, v0

    const/16 v33, 0x84

    invoke-virtual/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 852
    .local v10, "contentType":Ljava/lang/String;
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 853
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_0

    .line 855
    const/16 v32, 0x1

    return v32

    .line 858
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    check-cast v32, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 862
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v32

    if-nez v32, :cond_2

    .line 864
    :cond_1
    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 867
    const/16 v32, 0x0

    return v32

    .line 872
    :cond_2
    const/16 v32, 0x0

    :try_start_0
    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v26

    .line 874
    .local v26, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v31

    .line 875
    .local v31, "start":[B
    if-eqz v31, :cond_3

    .line 876
    const/16 v32, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 877
    const/16 v32, 0x0

    aget-byte v32, v31, v32

    const/16 v33, 0x3c

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v31, v32

    const/16 v33, 0x3e

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 885
    :cond_3
    :goto_0
    const/16 v32, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 886
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 893
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 894
    int-to-long v0, v15

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 898
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v30

    .line 899
    .local v30, "partNum":I
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 900
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 901
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v26

    .line 902
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 905
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 908
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v27

    .line 910
    .local v27, "partContentType":[B
    if-nez v27, :cond_5

    .line 912
    const/16 v32, 0x1

    return v32

    .line 880
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v23    # "i":I
    .end local v27    # "partContentType":[B
    .end local v30    # "partNum":I
    .restart local v31    # "start":[B
    :cond_4
    :try_start_1
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ">"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 888
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :catch_0
    move-exception v20

    .line 889
    .local v20, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_1

    .line 917
    .end local v20    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v23    # "i":I
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v27    # "partContentType":[B
    .restart local v30    # "partNum":I
    :cond_5
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 918
    .local v28, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v28, :cond_6

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 928
    :goto_3
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v25

    .line 930
    .local v25, "name":[B
    if-nez v25, :cond_7

    .line 931
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v25

    .line 933
    if-nez v25, :cond_7

    .line 934
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v25

    .line 936
    if-nez v25, :cond_7

    .line 940
    const/16 v32, 0x1

    return v32

    .line 921
    .end local v25    # "name":[B
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_3

    .line 944
    .restart local v25    # "name":[B
    :cond_7
    const/16 v32, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 948
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 949
    .local v7, "charset":I
    if-eqz v7, :cond_8

    .line 950
    const/16 v32, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 951
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 954
    :cond_8
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 955
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 956
    int-to-long v0, v13

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 960
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 962
    .local v8, "contentId":[B
    if-eqz v8, :cond_9

    .line 963
    const/16 v32, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 964
    const/16 v32, 0x0

    aget-byte v32, v8, v32

    const/16 v33, 0x3c

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    array-length v0, v8

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v8, v32

    const/16 v33, 0x3e

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 965
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 972
    :cond_9
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 973
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_a

    .line 974
    const/16 v32, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 975
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 979
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v22

    .line 981
    .local v22, "headerLength":I
    const/16 v17, 0x0

    .line 982
    .local v17, "dataLength":I
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    .line 984
    .local v29, "partData":[B
    if-eqz v29, :cond_d

    .line 985
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 986
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v17, v0

    .line 1014
    :cond_b
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v32

    sub-int v32, v32, v22

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    .line 1015
    new-instance v32, Ljava/lang/RuntimeException;

    const-string/jumbo v33, "BUG: Length sanity check failed"

    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 967
    .end local v9    # "contentLocation":[B
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v29    # "partData":[B
    :cond_c
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ">"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_4

    .line 988
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v22    # "headerLength":I
    .restart local v29    # "partData":[B
    :cond_d
    const/4 v14, 0x0

    .line 990
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v32, 0x400

    :try_start_2
    move/from16 v0, v32

    new-array v6, v0, [B

    .line 991
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v32, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 992
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 993
    .local v24, "len":I
    :goto_6
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v32, -0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v32, v0

    add-int v32, v32, v24

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    add-int v17, v17, v24

    goto :goto_6

    .line 1005
    :cond_e
    if-eqz v14, :cond_b

    .line 1007
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 1008
    :catch_1
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 1002
    .end local v6    # "buffer":[B
    .end local v14    # "cr":Ljava/io/InputStream;
    .end local v19    # "e":Ljava/io/IOException;
    .end local v24    # "len":I
    :catch_2
    move-exception v21

    .line 1003
    .local v21, "e":Ljava/lang/RuntimeException;
    const/16 v32, 0x1

    .line 1005
    if-eqz v14, :cond_f

    .line 1007
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1003
    :cond_f
    :goto_7
    return v32

    .line 1008
    :catch_3
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 1000
    .end local v19    # "e":Ljava/io/IOException;
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v19

    .line 1001
    .restart local v19    # "e":Ljava/io/IOException;
    const/16 v32, 0x1

    .line 1005
    if-eqz v14, :cond_10

    .line 1007
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1001
    :cond_10
    :goto_8
    return v32

    .line 1008
    :catch_5
    move-exception v19

    goto :goto_8

    .line 998
    .end local v19    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 999
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v32, 0x1

    .line 1005
    if-eqz v14, :cond_11

    .line 1007
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 999
    :cond_11
    :goto_9
    return v32

    .line 1008
    :catch_7
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 1004
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    .line 1005
    if-eqz v14, :cond_12

    .line 1007
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1004
    :cond_12
    :goto_a
    throw v32

    .line 1008
    :catch_8
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 1018
    .end local v19    # "e":Ljava/io/IOException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1019
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1020
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 900
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1024
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v25    # "name":[B
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v27    # "partContentType":[B
    .end local v28    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v29    # "partData":[B
    :cond_14
    const/16 v32, 0x0

    return v32
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 700
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 702
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 706
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 707
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 710
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    return v2

    .line 715
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    return v2

    .line 720
    :cond_2
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    return v2

    .line 725
    :cond_3
    return v1
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 654
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 658
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 659
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 662
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    return v2

    .line 667
    :cond_1
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    return v2

    .line 672
    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    return v2

    .line 677
    :cond_3
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    return v2

    .line 682
    :cond_4
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 685
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    return v2

    .line 693
    :cond_5
    return v1
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 761
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 762
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 763
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 767
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 768
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 771
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 773
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 774
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 781
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    return v3

    .line 786
    :cond_2
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 789
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 790
    return v3

    .line 793
    :cond_3
    const/4 v0, 0x0

    .line 796
    .local v0, "recipient":Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 797
    const/4 v0, 0x1

    .line 801
    :cond_4
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 802
    const/4 v0, 0x1

    .line 806
    :cond_5
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 807
    const/4 v0, 0x1

    .line 811
    :cond_6
    if-nez v0, :cond_7

    .line 812
    return v3

    .line 816
    :cond_7
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 820
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 823
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 826
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 829
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 832
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 835
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 838
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    move-result v2

    return v2
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 195
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 392
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 325
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 328
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 329
    .local v3, "textString":[B
    if-nez v3, :cond_2

    .line 330
    return-void

    .line 338
    :cond_2
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 339
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 341
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 342
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 344
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 345
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 346
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 347
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 320
    return-void
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 258
    move-wide v4, p1

    .line 261
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 262
    ushr-long/2addr v4, v8

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 270
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 272
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 273
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 274
    add-int/lit8 v1, v1, -0x8

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 225
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 445
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 435
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 436
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 437
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 428
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 215
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 205
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 234
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 304
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 291
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 292
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 295
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 296
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 283
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 365
    const-wide/16 v2, 0x7f

    .line 367
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 368
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 375
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 376
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 377
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 379
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 381
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 372
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 355
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 414
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 415
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 416
    return-void

    .line 419
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 405
    return-void
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 189
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 187
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 156
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    return-object v2

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    return-object v2

    .line 163
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return-object v2

    .line 168
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    return-object v2

    .line 173
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    return-object v2

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 156
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
