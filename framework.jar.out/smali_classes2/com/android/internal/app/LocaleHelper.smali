.class public Lcom/android/internal/app/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 198
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 9
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "maxLocales"    # I

    .prologue
    const/4 v7, 0x0

    .line 164
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 166
    .local v0, "dispLocale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, p2, :cond_1

    const/4 v1, 0x1

    .line 168
    .local v1, "ellipsisNeeded":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 169
    move v5, p2

    .line 170
    .local v5, "localeCount":I
    add-int/lit8 v4, p2, 0x1

    .line 174
    .local v4, "listCount":I
    :goto_2
    new-array v6, v4, [Ljava/lang/String;

    .line 175
    .local v6, "localeNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_3

    .line 176
    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v0, v7}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 164
    .end local v0    # "dispLocale":Ljava/util/Locale;
    .end local v1    # "ellipsisNeeded":Z
    .end local v2    # "i":I
    .end local v4    # "listCount":I
    .end local v5    # "localeCount":I
    .end local v6    # "localeNames":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "dispLocale":Ljava/util/Locale;
    goto :goto_0

    :cond_1
    move v1, v7

    .line 166
    goto :goto_1

    .line 172
    .restart local v1    # "ellipsisNeeded":Z
    :cond_2
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v5

    .restart local v5    # "localeCount":I
    move v4, v5

    .restart local v4    # "listCount":I
    goto :goto_2

    .line 178
    .restart local v2    # "i":I
    .restart local v6    # "localeNames":[Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 184
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    aput-object v7, v6, p2

    .line 187
    :cond_4
    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object v3

    .line 188
    .local v3, "lfn":Landroid/icu/text/ListFormatter;
    invoke-virtual {v3, v6}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "sentenceCase"    # Z

    .prologue
    .line 113
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 114
    .local v0, "displayULocale":Landroid/icu/util/ULocale;
    invoke-static {p0}, Lcom/android/internal/app/LocaleHelper;->shouldUseDialectName(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "result":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "sentenceCase"    # Z

    .prologue
    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static shouldUseDialectName(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "lang":Ljava/lang/String;
    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, "ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    return-object p0

    .line 71
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .line 72
    .local v0, "firstCodePointLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
