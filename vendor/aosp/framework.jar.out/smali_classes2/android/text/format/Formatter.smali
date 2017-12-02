.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 59
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 19
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .prologue
    .line 101
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_8

    const/4 v2, 0x1

    .line 102
    .local v2, "isNegative":Z
    :goto_0
    if-eqz v2, :cond_0

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    .end local p1    # "sizeBytes":J
    :cond_0
    move-wide/from16 v0, p1

    long-to-float v3, v0

    .line 103
    .local v3, "result":F
    const v11, 0x1040094

    .line 104
    .local v11, "suffix":I
    const-wide/16 v4, 0x1

    .line 105
    .local v4, "mult":J
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_1

    .line 106
    const v11, 0x1040095

    .line 107
    const-wide/16 v4, 0x400

    .line 108
    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    .line 110
    :cond_1
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_2

    .line 111
    const v11, 0x1040096

    .line 112
    const-wide/32 v4, 0x100000

    .line 113
    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    .line 115
    :cond_2
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_3

    .line 116
    const v11, 0x1040097

    .line 117
    const-wide/32 v4, 0x40000000

    .line 118
    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    .line 120
    :cond_3
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_4

    .line 121
    const v11, 0x1040098

    .line 122
    const-wide v4, 0x10000000000L

    .line 123
    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    .line 125
    :cond_4
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_5

    .line 126
    const v11, 0x1040099

    .line 127
    const-wide/high16 v4, 0x4000000000000L

    .line 128
    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    .line 135
    :cond_5
    const-wide/16 v14, 0x1

    cmp-long v13, v4, v14

    if-eqz v13, :cond_6

    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_9

    .line 136
    :cond_6
    const/4 v6, 0x1

    .line 137
    .local v6, "roundFactor":I
    const-string/jumbo v7, "%.0f"

    .line 159
    .local v7, "roundFormat":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    .line 160
    neg-float v3, v3

    .line 162
    :cond_7
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "roundedString":Ljava/lang/String;
    and-int/lit8 v13, p3, 0x2

    if-nez v13, :cond_e

    const-wide/16 v8, 0x0

    .line 170
    .local v8, "roundedBytes":J
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "units":Ljava/lang/String;
    new-instance v13, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v13, v10, v12, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v13

    .line 101
    .end local v2    # "isNegative":Z
    .end local v3    # "result":F
    .end local v4    # "mult":J
    .end local v6    # "roundFactor":I
    .end local v7    # "roundFormat":Ljava/lang/String;
    .end local v8    # "roundedBytes":J
    .end local v10    # "roundedString":Ljava/lang/String;
    .end local v11    # "suffix":I
    .end local v12    # "units":Ljava/lang/String;
    .restart local p1    # "sizeBytes":J
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 138
    .end local p1    # "sizeBytes":J
    .restart local v2    # "isNegative":Z
    .restart local v3    # "result":F
    .restart local v4    # "mult":J
    .restart local v11    # "suffix":I
    :cond_9
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_a

    .line 139
    const/16 v6, 0x64

    .line 140
    .restart local v6    # "roundFactor":I
    const-string/jumbo v7, "%.2f"

    .restart local v7    # "roundFormat":Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v6    # "roundFactor":I
    .end local v7    # "roundFormat":Ljava/lang/String;
    :cond_a
    const/high16 v13, 0x41200000    # 10.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_c

    .line 142
    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_b

    .line 143
    const/16 v6, 0xa

    .line 144
    .restart local v6    # "roundFactor":I
    const-string/jumbo v7, "%.1f"

    .restart local v7    # "roundFormat":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v6    # "roundFactor":I
    .end local v7    # "roundFormat":Ljava/lang/String;
    :cond_b
    const/16 v6, 0x64

    .line 147
    .restart local v6    # "roundFactor":I
    const-string/jumbo v7, "%.2f"

    .restart local v7    # "roundFormat":Ljava/lang/String;
    goto :goto_1

    .line 150
    .end local v6    # "roundFactor":I
    .end local v7    # "roundFormat":Ljava/lang/String;
    :cond_c
    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_d

    .line 151
    const/4 v6, 0x1

    .line 152
    .restart local v6    # "roundFactor":I
    const-string/jumbo v7, "%.0f"

    .restart local v7    # "roundFormat":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v6    # "roundFactor":I
    .end local v7    # "roundFormat":Ljava/lang/String;
    :cond_d
    const/16 v6, 0x64

    .line 155
    .restart local v6    # "roundFactor":I
    const-string/jumbo v7, "%.2f"

    .restart local v7    # "roundFormat":Ljava/lang/String;
    goto :goto_1

    .line 168
    .restart local v10    # "roundedString":Ljava/lang/String;
    :cond_e
    int-to-float v13, v6

    mul-float/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v14, v13

    mul-long/2addr v14, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    div-long v8, v14, v16

    .restart local v8    # "roundedBytes":J
    goto :goto_2
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const/4 v3, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string/jumbo v1, ""

    return-object v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 82
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 82
    const v2, 0x104009a

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 202
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 204
    .local v4, "secondsLong":J
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 205
    .local v2, "minutes":I
    const-wide/32 v6, 0x15180

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 206
    const-wide/32 v6, 0x15180

    div-long v6, v4, v6

    long-to-int v0, v6

    .line 207
    const v6, 0x15180

    mul-int/2addr v6, v0

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 209
    :cond_0
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 210
    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    .line 211
    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 213
    :cond_1
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 214
    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    .line 215
    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 217
    :cond_2
    long-to-int v3, v4

    .line 219
    .local v3, "seconds":I
    const/4 v6, 0x2

    if-lt v0, v6, :cond_3

    .line 220
    add-int/lit8 v6, v1, 0xc

    div-int/lit8 v6, v6, 0x18

    add-int/2addr v0, v6

    .line 221
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x104009b

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 222
    :cond_3
    if-lez v0, :cond_5

    .line 223
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    .line 224
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x104009d

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 226
    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x104009c

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 227
    :cond_5
    const/4 v6, 0x2

    if-lt v1, v6, :cond_6

    .line 228
    add-int/lit8 v6, v2, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v1, v6

    .line 229
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x104009e

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 230
    :cond_6
    if-lez v1, :cond_8

    .line 231
    const/4 v6, 0x1

    if-ne v2, v6, :cond_7

    .line 232
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 232
    const v7, 0x10400a0

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 235
    :cond_7
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 235
    const v7, 0x104009f

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 237
    :cond_8
    const/4 v6, 0x2

    if-lt v2, v6, :cond_9

    .line 238
    add-int/lit8 v6, v3, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v2, v6

    .line 239
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10400a1

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 240
    :cond_9
    if-lez v2, :cond_b

    .line 241
    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 242
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 242
    const v7, 0x10400a4

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 245
    :cond_a
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 245
    const v7, 0x10400a3

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 247
    :cond_b
    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    .line 248
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10400a6

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 250
    :cond_c
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10400a5

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    const-wide/16 v8, 0x1

    const-wide/32 v6, 0xea60

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    add-long v2, p1, v6

    sub-long/2addr v2, v8

    div-long v0, v2, v6

    .line 265
    .local v0, "minutesRoundedUp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 266
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x10400a1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 267
    :cond_0
    cmp-long v2, v0, v8

    if-nez v2, :cond_1

    .line 268
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x10400a2

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 271
    :cond_1
    mul-long v2, v0, v6

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const/4 v4, 0x1

    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string/jumbo v1, ""

    return-object v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 95
    const v2, 0x104009a

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
