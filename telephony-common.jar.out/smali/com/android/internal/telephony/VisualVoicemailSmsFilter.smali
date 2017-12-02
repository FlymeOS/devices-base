.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# static fields
.field private static final SYSTEM_VVM_CLIENT_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "VvmSmsFilter"

.field private static sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPatternsMap(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 117
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 123
    const v5, 0x1070051

    .line 122
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v0, v8, v7

    .line 124
    .local v0, "entry":Ljava/lang/String;
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "mccMncList":[Ljava/lang/String;
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 127
    .local v3, "pattern":Ljava/util/regex/Pattern;
    array-length v10, v2

    move v5, v6

    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v1, v2, v5

    .line 128
    .local v1, "mccMnc":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 122
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    .line 116
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "mccMncList":[Ljava/lang/String;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    return-void
.end method

.method public static filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I

    .prologue
    .line 61
    const-string/jumbo v12, "phone"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 64
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v11, "com.android.phone"

    .line 67
    .local v11, "vvmClientPackage":Ljava/lang/String;
    move/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Landroid/telephony/TelephonyManager;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v9

    .line 68
    .local v9, "settings":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    if-nez v9, :cond_0

    .line 69
    const/4 v12, 0x0

    return v12

    .line 73
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "messageBody":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 78
    const-string/jumbo v12, "VvmSmsFilter"

    const-string/jumbo v13, "Unparsable SMS received"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "asciiMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v5

    .line 82
    .local v5, "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    if-eqz v5, :cond_1

    .line 83
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {p0, v11, v0, v5, v12}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 87
    :cond_1
    const/4 v12, 0x0

    return v12

    .line 89
    .end local v1    # "asciiMessage":Ljava/lang/String;
    .end local v5    # "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    :cond_2
    iget-object v2, v9, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 90
    .local v2, "clientPrefix":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v5

    .line 92
    .restart local v5    # "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    if-eqz v5, :cond_3

    .line 93
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {p0, v11, v0, v5, v12}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 94
    const/4 v12, 0x1

    return v12

    .line 97
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    .line 98
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "mccMnc":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 101
    .local v8, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 102
    :cond_4
    const/4 v12, 0x0

    return v12

    .line 105
    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pattern$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    .line 106
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 107
    const-string/jumbo v12, "VvmSmsFilter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Incoming SMS matches pattern "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " but has illegal format, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 108
    const-string/jumbo v14, "still dropping as VVM SMS"

    .line 107
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {p0, v11, v0, v12, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 110
    const/4 v12, 0x1

    return v12

    .line 113
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :cond_7
    const/4 v12, 0x0

    return v12
.end method

.method private static getFullMessage([[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, p0, v4

    .line 159
    .local v3, "pdu":[B
    invoke-static {v3, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 161
    .local v2, "message":Landroid/telephony/SmsMessage;
    if-nez v2, :cond_0

    .line 163
    return-object v6

    .line 165
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v3    # "pdu":[B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static parseAsciiPduMessage([[B)Ljava/lang/String;
    .locals 6
    .param p0, "pdus"    # [[B

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 176
    .local v1, "pdu":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "pdu":[B
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vvmClientPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "messageData"    # Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .param p4, "messageBody"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v1, "VvmSmsFilter"

    const-string/jumbo v2, "VVM SMS received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VOICEMAIL_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 141
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_PREFIX"

    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_FIELDS"

    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    :cond_0
    if-eqz p4, :cond_1

    .line 145
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_MESSAGE_BODY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :cond_1
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_SUBID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return-void
.end method
