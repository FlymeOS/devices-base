.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    const-string/jumbo v0, "Hyphenator"

    sput-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Landroid/text/Hyphenator;

    invoke-static {v1, v4}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V

    .line 50
    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 142
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    .line 147
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-AS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 148
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-GU"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 149
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-MH"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 150
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-MP"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 151
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-PR"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 152
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-UM"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 153
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-VI"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 156
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-GB"

    aput-object v2, v1, v5

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 159
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "de"

    aput-object v2, v1, v4

    const-string/jumbo v2, "de-1996"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 161
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "de-LI-1901"

    aput-object v2, v1, v4

    const-string/jumbo v2, "de-CH-1901"

    aput-object v2, v1, v5

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 164
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "no"

    aput-object v2, v1, v4

    const-string/jumbo v2, "nb"

    aput-object v2, v1, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 167
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "mn"

    aput-object v2, v1, v4

    const-string/jumbo v2, "mn-Cyrl"

    aput-object v2, v1, v5

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 172
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "am"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 173
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "byn"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 174
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "gez"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 175
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "ti"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 176
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "wal"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 142
    sput-object v0, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "nativePtr"    # J
    .param p3, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    .line 61
    iput-object p3, p0, Landroid/text/Hyphenator;->mBuffer:Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method

.method public static get(Ljava/util/Locale;)Landroid/text/Hyphenator;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 69
    sget-object v7, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 70
    :try_start_0
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Hyphenator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v2, "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    monitor-exit v7

    .line 72
    return-object v2

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "variant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, ""

    invoke-direct {v0, v6, v8, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "languageAndVariantOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 81
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_1

    .line 82
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 83
    return-object v2

    .line 88
    .end local v0    # "languageAndVariantOnlyLocale":Ljava/util/Locale;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 90
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_2

    .line 91
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 92
    return-object v2

    .line 96
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "script":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    new-instance v6, Ljava/util/Locale$Builder;

    invoke-direct {v6}, Ljava/util/Locale$Builder;-><init>()V

    .line 99
    const-string/jumbo v8, "und"

    .line 98
    invoke-virtual {v6, v8}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v4

    .line 102
    .local v4, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    .line 103
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_3

    .line 104
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 105
    return-object v2

    .line 109
    .end local v4    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_3
    :try_start_4
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    sget-object v8, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    invoke-virtual {v6, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 111
    sget-object v6, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    return-object v6

    .line 69
    .end local v1    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v2    # "result":Landroid/text/Hyphenator;
    .end local v3    # "script":Ljava/lang/String;
    .end local v5    # "variant":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/hyphen-data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 187
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v6, 0x21

    new-array v0, v6, [Ljava/lang/String;

    .line 191
    const-string/jumbo v6, "as"

    aput-object v6, v0, v10

    .line 192
    const-string/jumbo v6, "bn"

    aput-object v6, v0, v11

    .line 193
    const-string/jumbo v6, "cy"

    const/4 v7, 0x2

    aput-object v6, v0, v7

    .line 194
    const-string/jumbo v6, "da"

    const/4 v7, 0x3

    aput-object v6, v0, v7

    .line 195
    const-string/jumbo v6, "de-1901"

    const/4 v7, 0x4

    aput-object v6, v0, v7

    const-string/jumbo v6, "de-1996"

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const-string/jumbo v6, "de-CH-1901"

    const/4 v7, 0x6

    aput-object v6, v0, v7

    .line 196
    const-string/jumbo v6, "en-GB"

    const/4 v7, 0x7

    aput-object v6, v0, v7

    const-string/jumbo v6, "en-US"

    const/16 v7, 0x8

    aput-object v6, v0, v7

    .line 197
    const-string/jumbo v6, "es"

    const/16 v7, 0x9

    aput-object v6, v0, v7

    .line 198
    const-string/jumbo v6, "et"

    const/16 v7, 0xa

    aput-object v6, v0, v7

    .line 199
    const-string/jumbo v6, "eu"

    const/16 v7, 0xb

    aput-object v6, v0, v7

    .line 200
    const-string/jumbo v6, "fr"

    const/16 v7, 0xc

    aput-object v6, v0, v7

    .line 201
    const-string/jumbo v6, "ga"

    const/16 v7, 0xd

    aput-object v6, v0, v7

    .line 202
    const-string/jumbo v6, "gu"

    const/16 v7, 0xe

    aput-object v6, v0, v7

    .line 203
    const-string/jumbo v6, "hi"

    const/16 v7, 0xf

    aput-object v6, v0, v7

    .line 204
    const-string/jumbo v6, "hr"

    const/16 v7, 0x10

    aput-object v6, v0, v7

    .line 205
    const-string/jumbo v6, "hu"

    const/16 v7, 0x11

    aput-object v6, v0, v7

    .line 206
    const-string/jumbo v6, "hy"

    const/16 v7, 0x12

    aput-object v6, v0, v7

    .line 207
    const-string/jumbo v6, "kn"

    const/16 v7, 0x13

    aput-object v6, v0, v7

    .line 208
    const-string/jumbo v6, "ml"

    const/16 v7, 0x14

    aput-object v6, v0, v7

    .line 209
    const-string/jumbo v6, "mn-Cyrl"

    const/16 v7, 0x15

    aput-object v6, v0, v7

    .line 210
    const-string/jumbo v6, "mr"

    const/16 v7, 0x16

    aput-object v6, v0, v7

    .line 211
    const-string/jumbo v6, "nb"

    const/16 v7, 0x17

    aput-object v6, v0, v7

    .line 212
    const-string/jumbo v6, "nn"

    const/16 v7, 0x18

    aput-object v6, v0, v7

    .line 213
    const-string/jumbo v6, "or"

    const/16 v7, 0x19

    aput-object v6, v0, v7

    .line 214
    const-string/jumbo v6, "pa"

    const/16 v7, 0x1a

    aput-object v6, v0, v7

    .line 215
    const-string/jumbo v6, "pt"

    const/16 v7, 0x1b

    aput-object v6, v0, v7

    .line 216
    const-string/jumbo v6, "sl"

    const/16 v7, 0x1c

    aput-object v6, v0, v7

    .line 217
    const-string/jumbo v6, "ta"

    const/16 v7, 0x1d

    aput-object v6, v0, v7

    .line 218
    const-string/jumbo v6, "te"

    const/16 v7, 0x1e

    aput-object v6, v0, v7

    .line 219
    const-string/jumbo v6, "tk"

    const/16 v7, 0x1f

    aput-object v6, v0, v7

    .line 220
    const-string/jumbo v6, "und-Ethi"

    const/16 v7, 0x20

    aput-object v6, v0, v7

    .line 222
    .local v0, "availableLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 223
    aget-object v5, v0, v3

    .line 224
    .local v5, "languageTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Hyphenator;->loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;

    move-result-object v2

    .line 225
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    .line 226
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "h":Landroid/text/Hyphenator;
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 231
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v4, v6, v10

    .line 232
    .local v4, "language":Ljava/lang/String;
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v1, v6, v11

    .line 233
    .local v1, "fallback":Ljava/lang/String;
    sget-object v7, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/Hyphenator;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;
    .locals 13
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hyph-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "patternFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v9, "patternFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v8, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v8, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 121
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 122
    .local v6, "buf":Ljava/nio/MappedByteBuffer;
    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    move-result-wide v10

    .line 123
    .local v10, "nativePtr":J
    new-instance v1, Landroid/text/Hyphenator;

    invoke-direct {v1, v10, v11, v6}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 123
    return-object v1

    .line 124
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "buf":Ljava/nio/MappedByteBuffer;
    .end local v10    # "nativePtr":J
    :catchall_0
    move-exception v1

    .line 125
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 124
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    .end local v8    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error loading hyphenation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getNativePtr()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Landroid/text/Hyphenator;->mNativePtr:J

    return-wide v0
.end method
