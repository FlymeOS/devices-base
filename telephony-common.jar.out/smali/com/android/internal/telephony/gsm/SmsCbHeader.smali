.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 18
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-ge v2, v6, :cond_1

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Illegal PDU"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x58

    if-gt v2, v6, :cond_9

    .line 103
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 104
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 105
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x38

    if-gt v2, v6, :cond_5

    .line 107
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 108
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 109
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 110
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 111
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .line 112
    .local v4, "emergencyUserAlert":Z
    :goto_0
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    .line 113
    .local v5, "activatePopup":Z
    :goto_1
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfe

    ushr-int/lit8 v3, v2, 0x1

    .line 116
    .local v3, "warningType":I
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-le v2, v6, :cond_4

    .line 117
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 121
    :goto_2
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    .line 122
    const/4 v6, 0x1

    .line 121
    invoke-direct/range {v2 .. v7}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 124
    return-void

    .line 111
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "emergencyUserAlert":Z
    goto :goto_0

    .line 112
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "activatePopup":Z
    goto :goto_1

    .line 119
    .restart local v3    # "warningType":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "warningSecurityInfo":[B
    goto :goto_2

    .line 127
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    .end local v7    # "warningSecurityInfo":[B
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 128
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 131
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v17, v2, 0x4

    .line 132
    .local v17, "pageIndex":I
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit8 v16, v2, 0xf

    .line 134
    .local v16, "nrOfPages":I
    if-eqz v17, :cond_6

    if-nez v16, :cond_8

    .line 135
    :cond_6
    :goto_3
    const/16 v17, 0x1

    .line 136
    const/16 v16, 0x1

    .line 139
    :cond_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 140
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 165
    .end local v16    # "nrOfPages":I
    .end local v17    # "pageIndex":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v4

    .line 167
    .local v4, "emergencyUserAlert":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v5

    .line 168
    .local v5, "activatePopup":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v3

    .line 169
    .restart local v3    # "warningType":I
    new-instance v8, Landroid/telephony/SmsCbEtwsInfo;

    .line 170
    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    move v11, v5

    .line 169
    invoke-direct/range {v8 .. v13}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 93
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    :goto_5
    return-void

    .line 134
    .restart local v16    # "nrOfPages":I
    .restart local v17    # "pageIndex":I
    :cond_8
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    goto :goto_3

    .line 145
    .end local v16    # "nrOfPages":I
    .end local v17    # "pageIndex":I
    :cond_9
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 147
    const/4 v2, 0x0

    aget-byte v15, p1, v2

    .line 149
    .local v15, "messageType":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_a

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported message type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_a
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 154
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 155
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 156
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 161
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    goto/16 :goto_4

    .line 172
    .end local v15    # "messageType":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v9

    .line 174
    .local v9, "messageClass":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v12

    .line 175
    .local v12, "severity":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v13

    .line 176
    .local v13, "urgency":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v14

    .line 177
    .local v14, "certainty":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 178
    new-instance v8, Landroid/telephony/SmsCbCmasInfo;

    const/4 v10, -0x1

    .line 179
    const/4 v11, -0x1

    .line 178
    invoke-direct/range {v8 .. v14}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_5

    .line 181
    .end local v9    # "messageClass":I
    .end local v12    # "severity":I
    .end local v13    # "urgency":I
    .end local v14    # "certainty":I
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_5
.end method

.method private getCmasCertainty()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 425
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 435
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 339
    const/4 v0, -0x1

    return v0

    .line 300
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 320
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 324
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 328
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 332
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 336
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 359
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 369
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 405
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 392
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 402
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1112

    if-lt v1, v2, :cond_0

    .line 258
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x112f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEtwsMessage()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    .line 233
    const/16 v1, 0x1100

    .line 232
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsPopupAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    return v0
.end method

.method getPageIndex()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    return v0
.end method

.method getSerialNumber()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    return v0
.end method

.method getServiceCategory()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1100

    if-lt v1, v2, :cond_0

    .line 224
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x18ff

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUmtsFormat()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    const-string/jumbo v1, ", messageIdentifier=0x"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    const-string/jumbo v1, ", DCS=0x"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    const-string/jumbo v1, ", page "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    const-string/jumbo v1, " of "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    const/16 v1, 0x7d

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
