.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "de"

    aput-object v1, v0, v4

    const-string/jumbo v1, "en"

    aput-object v1, v0, v5

    const-string/jumbo v1, "it"

    aput-object v1, v0, v6

    const-string/jumbo v1, "fr"

    aput-object v1, v0, v7

    const-string/jumbo v1, "es"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "nl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sv"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "da"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pt"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "fi"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "no"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "el"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "hu"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "pl"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aput-object v3, v0, v1

    .line 37
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "cs"

    aput-object v1, v0, v4

    const-string/jumbo v1, "he"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const-string/jumbo v1, "is"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    .line 47
    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    .line 45
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 2
    .param p0, "location"    # Landroid/telephony/SmsCbLocation;
    .param p1, "pdus"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 103
    .local v0, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    return-object v1
.end method

.method public static createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 15
    .param p0, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p1, "location"    # Landroid/telephony/SmsCbLocation;
    .param p2, "pdus"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Landroid/telephony/SmsCbMessage;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    .line 73
    const-string/jumbo v8, "ETWS"

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    .line 70
    const/4 v2, 0x1

    .line 73
    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object/from16 v5, p1

    .line 70
    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    .line 76
    :cond_0
    const/4 v7, 0x0

    .line 77
    .local v7, "language":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v3, v0

    move v2, v1

    .end local v7    # "language":Ljava/lang/String;
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v13, p2, v2

    .line 79
    .local v13, "pdu":[B
    invoke-static {p0, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v12

    .line 80
    .local v12, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 81
    .local v7, "language":Ljava/lang/String;
    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 83
    .end local v7    # "language":Ljava/lang/String;
    .end local v12    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "pdu":[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x3

    .line 86
    .local v9, "priority":I
    :goto_1
    new-instance v1, Landroid/telephony/SmsCbMessage;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    .line 86
    const/4 v2, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    .line 84
    .end local v9    # "priority":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "priority":I
    goto :goto_1
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 14
    .param p0, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x52

    const/4 v11, 0x1

    .line 117
    const/4 v5, 0x0

    .line 118
    .local v5, "language":Ljava/lang/String;
    const/4 v4, 0x0

    .line 119
    .local v4, "hasLanguageIndicator":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v6

    .line 123
    .local v6, "dataCodingScheme":I
    and-int/lit16 v0, v6, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 185
    :pswitch_0
    const/4 v1, 0x1

    .line 189
    .end local v5    # "language":Ljava/lang/String;
    .local v1, "encoding":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    const/4 v0, 0x6

    aget-byte v8, p1, v0

    .line 193
    .local v8, "nrPages":I
    array-length v0, p1

    mul-int/lit8 v11, v8, 0x53

    add-int/lit8 v11, v11, 0x7

    if-ge v0, v11, :cond_2

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pdu length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " does not match "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 196
    const-string/jumbo v12, " pages"

    .line 195
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v1    # "encoding":I
    .end local v8    # "nrPages":I
    .restart local v5    # "language":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    .line 126
    .restart local v1    # "encoding":I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    .local v5, "language":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v1    # "encoding":I
    .local v5, "language":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x1

    .line 131
    and-int/lit8 v0, v6, 0xf

    if-ne v0, v11, :cond_0

    .line 132
    const/4 v1, 0x3

    .restart local v1    # "encoding":I
    goto :goto_0

    .line 134
    .end local v1    # "encoding":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "encoding":I
    goto :goto_0

    .line 139
    .end local v1    # "encoding":I
    :pswitch_3
    const/4 v1, 0x1

    .line 140
    .restart local v1    # "encoding":I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    .local v5, "language":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v1    # "encoding":I
    .local v5, "language":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x1

    .line 145
    .restart local v1    # "encoding":I
    goto :goto_0

    .line 149
    .end local v1    # "encoding":I
    :pswitch_5
    and-int/lit8 v0, v6, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    .line 160
    const/4 v1, 0x1

    .line 161
    .restart local v1    # "encoding":I
    goto :goto_0

    .line 151
    .end local v1    # "encoding":I
    :pswitch_6
    const/4 v1, 0x2

    .line 152
    .restart local v1    # "encoding":I
    goto :goto_0

    .line 155
    .end local v1    # "encoding":I
    :pswitch_7
    const/4 v1, 0x3

    .line 156
    .restart local v1    # "encoding":I
    goto :goto_0

    .line 172
    .end local v1    # "encoding":I
    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_9
    and-int/lit8 v0, v6, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_1

    .line 177
    const/4 v1, 0x2

    .restart local v1    # "encoding":I
    goto/16 :goto_0

    .line 179
    .end local v1    # "encoding":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "encoding":I
    goto/16 :goto_0

    .line 199
    .end local v5    # "language":Ljava/lang/String;
    .restart local v8    # "nrPages":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 204
    mul-int/lit8 v0, v7, 0x53

    add-int/lit8 v2, v0, 0x7

    .line 205
    .local v2, "offset":I
    add-int/lit8 v0, v2, 0x52

    aget-byte v3, p1, v0

    .line 207
    .local v3, "length":I
    if-le v3, v13, :cond_3

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Page length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 209
    const-string/jumbo v12, " exceeds maximum value "

    .line 208
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p1

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 214
    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 215
    .local v5, "language":Ljava/lang/String;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 217
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .end local v5    # "language":Ljava/lang/String;
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 220
    .end local v7    # "i":I
    .end local v8    # "nrPages":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x6

    .line 221
    .restart local v2    # "offset":I
    array-length v0, p1

    add-int/lit8 v3, v0, -0x6

    .restart local v3    # "length":I
    move-object v0, p1

    .line 223
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p0, "pdu"    # [B
    .param p1, "encoding"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "hasLanguageIndicator"    # Z
    .param p5, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "body":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 278
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    .line 282
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    .end local v2    # "i":I
    :cond_1
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 247
    .restart local v0    # "body":Ljava/lang/String;
    :pswitch_1
    mul-int/lit8 v3, p3, 0x8

    div-int/lit8 v3, v3, 0x7

    invoke-static {p0, p2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "body":Ljava/lang/String;
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 252
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 253
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    .local v0, "body":Ljava/lang/String;
    :pswitch_2
    if-eqz p4, :cond_2

    array-length v3, p0

    add-int/lit8 v4, p2, 0x2

    if-lt v3, v4, :cond_2

    .line 261
    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    .line 262
    add-int/lit8 p2, p2, 0x2

    .line 263
    add-int/lit8 p3, p3, -0x2

    .line 267
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "body":Ljava/lang/String;
    const v3, 0xfffe

    and-int/2addr v3, p3

    const-string/jumbo v4, "utf-16"

    invoke-direct {v0, p0, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "body":Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v0    # "body":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Error decoding UTF-16 message"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 280
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 287
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v0, ""

    .restart local v0    # "body":Ljava/lang/String;
    goto :goto_2

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
