.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;,
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z
    .locals 7
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/os/LocaleList;
    .param p2, "out"    # [B

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    return v4

    .line 98
    :cond_0
    const/4 v1, 0x1

    .line 99
    .local v1, "allZeros":Z
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    .line 100
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 101
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 103
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    aput-byte v4, p2, v2

    .line 100
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v5

    .line 107
    invoke-static {p0, v5}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v5

    aput-byte v5, p2, v2

    .line 109
    if-eqz v1, :cond_1

    aget-byte v5, p2, v2

    if-eqz v5, :cond_1

    .line 110
    const/4 v1, 0x0

    goto :goto_1

    .line 114
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/icu/util/ULocale;

    .prologue
    const/4 v3, 0x3

    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    return v3

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "supportedScript":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "supportedCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    return v3

    .line 63
    .end local v0    # "supportedCountry":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 68
    .restart local v0    # "supportedCountry":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    return v2
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 12
    .param p2, "preferredLanguages"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;, "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<TT;>;"
    .local p3, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v7, "scoreboard":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;>;"
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v9

    new-array v6, v9, [B

    .line 202
    .local v6, "score":[B
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 203
    .local v8, "sourceSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 204
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v4

    .line 205
    .local v4, "locale":Ljava/util/Locale;
    if-eqz v4, :cond_0

    .line 206
    invoke-static {v4}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v9

    invoke-static {v9, p2, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "lang":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 213
    .local v0, "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    if-nez v0, :cond_1

    .line 214
    new-instance v9, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v9, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .end local v3    # "lang":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .restart local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    goto :goto_1

    .line 220
    .end local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 221
    .local v5, "result":[Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 222
    const/4 v9, 0x0

    array-length v10, v5

    :goto_2
    if-ge v9, v10, :cond_3

    aget-object v1, v5, v9

    .line 223
    .local v1, "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    iget v11, v1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 198
    .end local v1    # "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    :cond_3
    return-void
.end method
