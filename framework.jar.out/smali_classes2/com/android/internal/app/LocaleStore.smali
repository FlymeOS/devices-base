.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static sFullyInitialized:Z

.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    return-void

    .line 241
    :cond_1
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 242
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 232
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    sget-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    if-eqz v13, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v12

    .line 256
    .local v12, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_0
    if-ge v13, v15, :cond_4

    aget-object v8, v14, v13

    .line 257
    .local v8, "localeId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 258
    new-instance v13, Ljava/util/IllformedLocaleException;

    const-string/jumbo v14, "Bad locale entry in locale_config.xml"

    invoke-direct {v13, v14}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 260
    :cond_1
    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 261
    .local v6, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 262
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 264
    :cond_2
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v10

    .line 266
    .local v10, "parent":Ljava/util/Locale;
    if-eqz v10, :cond_3

    .line 267
    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "parentId":Ljava/lang/String;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 269
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    new-instance v17, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v11    # "parentId":Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 274
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    .end local v10    # "parent":Ljava/util/Locale;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 275
    const-string/jumbo v14, "development_settings_enabled"

    const/4 v15, 0x0

    .line 274
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v4, 0x1

    .line 276
    .local v4, "isInDeveloperMode":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getPseudoLocales()[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_2
    if-ge v13, v15, :cond_7

    aget-object v8, v14, v13

    .line 277
    .restart local v8    # "localeId":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    .line 278
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v4, :cond_6

    .line 279
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 280
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    .line 281
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 276
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 274
    .end local v4    # "isInDeveloperMode":Z
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "isInDeveloperMode":Z
    goto :goto_1

    .line 283
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v8    # "localeId":Ljava/lang/String;
    :cond_6
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 288
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 289
    .local v9, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_4
    if-ge v13, v15, :cond_b

    aget-object v8, v14, v13

    .line 290
    .restart local v8    # "localeId":Ljava/lang/String;
    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 291
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_9

    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 296
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 303
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 304
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 307
    :cond_9
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 298
    .restart local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "langScriptCtry":Ljava/lang/String;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 300
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .local v2, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_5

    .line 311
    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "langScriptCtry":Ljava/lang/String;
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v13, "sr-Latn"

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 313
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "li$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 314
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v6, v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    goto :goto_6

    .line 317
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 319
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 249
    return-void
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 325
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    .line 325
    :cond_3
    return v1

    .line 327
    :cond_4
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 340
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 342
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 344
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v0

    .line 345
    .local v0, "level":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 346
    if-eqz p2, :cond_2

    .line 347
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 348
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "li$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .local v3, "parentId":Ljava/lang/String;
    goto :goto_0

    .line 351
    .end local v3    # "parentId":Ljava/lang/String;
    .restart local v0    # "level":I
    .restart local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "li$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_2
    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 352
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_4
    return-object v4
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "id":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 367
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :goto_0
    return-object v1

    .line 369
    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .restart local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 185
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "iso":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 217
    .local v2, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 222
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 214
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method
