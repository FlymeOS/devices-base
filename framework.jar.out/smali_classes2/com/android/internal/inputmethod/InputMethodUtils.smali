.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$1;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final LOCALE_EN_GB:Ljava/util/Locale;

.field private static final LOCALE_EN_US:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String; = null

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static final sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 66
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    .line 82
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 81
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$1;-><init>()V

    .line 502
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    .line 1455
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "en"

    const-string/jumbo v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    .line 1456
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "en"

    const-string/jumbo v2, "GB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 861
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 862
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 863
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 864
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 866
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 868
    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 870
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x1

    .line 697
    if-nez p0, :cond_0

    return v0

    .line 698
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 814
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    const/4 v1, 0x1

    return v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    return-object v7

    .line 387
    :cond_0
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v1, v0

    if-lt v1, v4, :cond_1

    const-string/jumbo v1, "tl"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string/jumbo v1, "fil"

    aput-object v1, v0, v3

    .line 398
    :cond_1
    array-length v1, v0

    if-ne v1, v4, :cond_2

    .line 399
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 400
    :cond_2
    array-length v1, v0

    if-ne v1, v5, :cond_3

    .line 401
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 402
    :cond_3
    array-length v1, v0

    if-ne v1, v6, :cond_4

    .line 403
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 405
    :cond_4
    return-object v7
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "checkCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 410
    if-nez p1, :cond_0

    .line 411
    return v6

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 414
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 415
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 416
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_3

    .line 417
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v3

    .line 418
    .local v3, "subtypeLocale":Ljava/util/Locale;
    if-eqz v3, :cond_4

    .line 419
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 430
    :cond_1
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 431
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 430
    if-eqz v4, :cond_4

    .line 432
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 424
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_3
    new-instance v3, Ljava/util/Locale;

    .line 425
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v3    # "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 414
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_5
    return v6
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v10, 0x0

    .line 648
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 649
    :cond_0
    return-object v10

    .line 651
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 652
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 654
    :cond_2
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 656
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    .line 657
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 658
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 659
    .local v0, "N":I
    const/4 v3, 0x0

    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 660
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 661
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, "subtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 666
    :cond_3
    if-nez v2, :cond_4

    .line 667
    move-object v2, v6

    .line 669
    :cond_4
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 671
    move-object v1, v6

    .line 681
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_8

    if-eqz p4, :cond_8

    .line 682
    return-object v2

    .line 673
    .restart local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7    # "subtypeLanguage":Ljava/lang/String;
    .restart local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 675
    move-object v1, v6

    .line 676
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v5, 0x1

    .line 659
    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 693
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_8
    return-object v1
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    const-string/jumbo v0, ""

    .line 107
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 110
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 111
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    move-object v0, v4

    .line 110
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const-string/jumbo v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 117
    move-object v0, v4

    goto :goto_1

    .line 123
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSystemReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    .line 357
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    .line 358
    .local v4, "fallbackLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    .line 363
    invoke-static {p2, p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    .line 365
    sget-object v6, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p0

    move v5, v3

    .line 363
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    .line 375
    .local v9, "systemLocale":Ljava/util/Locale;
    invoke-static {p2, p0, v9, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v5

    .line 377
    sget-object v11, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v6, p2

    move-object v7, p0

    move v8, v3

    move v10, v3

    .line 375
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 154
    sget-object v8, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v8, v7

    .line 155
    .local v3, "fallbackLocale":Ljava/util/Locale;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 156
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 158
    const-string/jumbo v5, "keyboard"

    move-object v1, p1

    move v4, v2

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    return-object v3

    .line 155
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 165
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v10    # "i":I
    :cond_2
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v11, v1

    move v0, v6

    :goto_2
    if-ge v0, v11, :cond_5

    aget-object v3, v1, v0

    .line 166
    .restart local v3    # "fallbackLocale":Ljava/util/Locale;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 167
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 169
    const-string/jumbo v9, "keyboard"

    move-object v5, p1

    move-object v7, v3

    move v8, v2

    .line 167
    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    return-object v3

    .line 166
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v10    # "i":I
    :cond_5
    const-string/jumbo v0, "InputMethodUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found no fallback locale. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 794
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    .line 795
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 796
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 795
    invoke-virtual {p2, p0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const-string/jumbo v1, ""

    .line 797
    :goto_0
    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 795
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 794
    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .line 798
    .restart local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 515
    .local v1, "systemLocales":Landroid/os/LocaleList;
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 518
    :try_start_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_0

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 527
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 530
    :try_start_1
    sput-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 531
    sput-object p1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 534
    return-object v0

    .line 515
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 528
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    .line 540
    .local v19, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v21

    .line 541
    .local v21, "systemLocales":Landroid/os/LocaleList;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v20

    .line 542
    .local v20, "systemLocale":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    return-object v22

    .line 543
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    .line 546
    .local v15, "numSubtypes":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 547
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_2

    .line 549
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 550
    .local v16, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 551
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    .line 552
    .local v11, "mode":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 553
    move-object/from16 v0, v16

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v11    # "mode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 557
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 558
    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v22

    .line 562
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 563
    .local v12, "nonKeyboardSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v9, "keyboardSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v15, :cond_6

    .line 566
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 567
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    .line 568
    .restart local v11    # "mode":Ljava/lang/String;
    const-string/jumbo v22, "keyboard"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 569
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 571
    :cond_4
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 572
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_5
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 578
    .end local v11    # "mode":Ljava/lang/String;
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v6, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v22, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v9, v0, v1, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 582
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    .line 583
    const/4 v7, 0x0

    .line 584
    .local v7, "hasAsciiCapableKeyboard":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 585
    .local v13, "numApplicationSubtypes":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v13, :cond_7

    .line 586
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 587
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v22, "AsciiCapable"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 588
    const/4 v7, 0x1

    .line 592
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    if-nez v7, :cond_a

    .line 593
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 594
    .local v14, "numKeyboardSubtypes":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v14, :cond_a

    .line 595
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 596
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    .line 597
    .restart local v11    # "mode":Ljava/lang/String;
    const-string/jumbo v22, "keyboard"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 598
    const-string/jumbo v22, "EnabledWhenDefaultIsNotAsciiCapable"

    .line 597
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 599
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 585
    .end local v11    # "mode":Ljava/lang/String;
    .end local v14    # "numKeyboardSubtypes":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 605
    .end local v7    # "hasAsciiCapableKeyboard":Z
    .end local v13    # "numApplicationSubtypes":I
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 607
    const-string/jumbo v22, "keyboard"

    const/16 v23, 0x1

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 608
    .local v10, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_b

    .line 609
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .end local v10    # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_b
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "subtypeList$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 615
    .local v17, "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v22, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 619
    .end local v17    # "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_c
    return-object v6
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 627
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 628
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 629
    return-object p0

    .line 631
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemLocale"    # Ljava/util/Locale;
    .param p3, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 319
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    .line 321
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v3

    .line 320
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    return-object v0

    .line 326
    :cond_0
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v7

    .line 325
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    return-object v0

    .line 331
    :cond_1
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v3

    .line 330
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    return-object v0

    .line 336
    :cond_2
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v7

    .line 335
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 337
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    return-object v0

    .line 341
    :cond_3
    const-string/jumbo v10, "keyboard"

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move v9, v3

    .line 340
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 343
    return-object v0

    .line 346
    :cond_4
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move-object v4, p3

    move v5, v7

    .line 345
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 347
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 348
    return-object v0

    .line 350
    :cond_5
    const-string/jumbo v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No software keyboard is found. imis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    const-string/jumbo v3, " systemLocale="

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    const-string/jumbo v3, " fallbackLocale="

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-object v0
.end method

.method private static getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 280
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    .line 282
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v3

    .line 281
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    return-object v0

    .line 287
    :cond_0
    const-string/jumbo v10, "keyboard"

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v3

    .line 286
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 288
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    return-object v0

    .line 292
    :cond_1
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v7

    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 293
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    return-object v0

    .line 297
    :cond_2
    const-string/jumbo v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move-object v4, p2

    move v5, v7

    .line 296
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 298
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    return-object v0

    .line 301
    :cond_3
    const-string/jumbo v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No software keyboard is found. imis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    const-string/jumbo v3, " fallbackLocale="

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .prologue
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 461
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    :cond_0
    return-object v4

    .line 465
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 466
    .local v1, "i":I
    const/4 v0, -0x1

    .line 467
    .local v0, "firstFoundSystemIme":I
    :cond_2
    :goto_0
    if-lez v1, :cond_4

    .line 468
    add-int/lit8 v1, v1, -0x1

    .line 469
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 470
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 475
    const-string/jumbo v4, "keyboard"

    .line 474
    invoke-static {v2, v3, v5, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v3

    .line 473
    if-eqz v3, :cond_3

    .line 476
    return-object v2

    .line 478
    :cond_3
    if-gez v0, :cond_2

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    move v0, v1

    goto :goto_0

    .line 482
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    return-object v3
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 451
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 452
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 453
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 490
    if-eqz p0, :cond_1

    .line 491
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 492
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 493
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 494
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 495
    return v0

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 441
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return-object v2
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1499
    if-eqz p0, :cond_a

    .line 1500
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1501
    .local v4, "language":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v2, 0x0

    .line 1502
    .local v2, "hasLanguage":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v1, 0x0

    .line 1504
    .local v1, "hasCountry":Z
    :goto_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 1505
    .local v9, "variant":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v3, 0x0

    .line 1506
    .local v3, "hasVariant":Z
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 1507
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v4, v0, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :goto_3
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 1512
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_4
    if-eqz v2, :cond_9

    .line 1517
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1527
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "hasCountry":Z
    .end local v2    # "hasLanguage":Z
    .end local v3    # "hasVariant":Z
    .end local v4    # "language":Ljava/lang/String;
    .end local v9    # "variant":Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v5, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v8, :cond_0

    .line 1529
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    :cond_0
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1533
    if-eqz v7, :cond_b

    .line 1540
    if-eqz v7, :cond_1

    .line 1541
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_1
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1544
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_2
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1547
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    :cond_3
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    :goto_6
    return-object v5

    .line 1501
    .end local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .restart local v4    # "language":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "hasLanguage":Z
    goto :goto_0

    .line 1503
    .restart local v0    # "country":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "hasCountry":Z
    goto :goto_1

    .line 1505
    .restart local v9    # "variant":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "hasVariant":Z
    goto :goto_2

    .line 1509
    :cond_7
    const/4 v8, 0x0

    .local v8, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_3

    .line 1514
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_8
    const/4 v7, 0x0

    .local v7, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_4

    .line 1519
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_9
    const/4 v6, 0x0

    .local v6, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    .line 1522
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "hasCountry":Z
    .end local v2    # "hasLanguage":Z
    .end local v3    # "hasVariant":Z
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v9    # "variant":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    .line 1523
    .restart local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v7, 0x0

    .line 1524
    .restart local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    const/4 v6, 0x0

    .restart local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    .line 1556
    .end local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .restart local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    :cond_b
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1567
    :cond_c
    if-eqz v7, :cond_d

    .line 1568
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_d
    if-eqz v6, :cond_e

    .line 1571
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_e
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    return v4

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    return v4

    .line 184
    :cond_2
    return v4

    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 190
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 192
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    const/4 v3, 0x1

    return v3

    .line 190
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "s":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    return v4
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z
    .param p3, "requiredLocale"    # Ljava/util/Locale;
    .param p4, "checkCountry"    # Z
    .param p5, "requiredSubtypeMode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    return v1

    .line 140
    :cond_2
    return v1

    .line 145
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 486
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 831
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 832
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 833
    return-object v3

    .line 837
    :cond_0
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 839
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 842
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    .line 845
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 846
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 847
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 848
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 850
    :cond_1
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 852
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 764
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 770
    .local v7, "state":I
    if-eqz v7, :cond_0

    .line 771
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 777
    :cond_0
    const/4 v2, 0x4

    .line 778
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 776
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    :cond_1
    return-void

    .line 765
    .end local v7    # "state":I
    :catch_0
    move-exception v6

    .line 766
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    const-string/jumbo v2, " userId="

    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    return-void

    .line 779
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "state":I
    :catch_1
    move-exception v6

    .line 780
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    const-string/jumbo v2, " userId="

    .line 780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    const-string/jumbo v2, " callingPackage="

    .line 780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 17
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 708
    const v13, 0x107003c

    .line 707
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 709
    .local v11, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v12, v11

    if-nez v12, :cond_1

    .line 710
    :cond_0
    return-void

    .line 714
    :cond_1
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 715
    .local v4, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v12, 0x0

    array-length v13, v11

    :goto_0
    if-ge v12, v13, :cond_8

    aget-object v10, v11, v12

    .line 719
    .local v10, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 720
    .local v6, "enabledIme":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_2

    .line 721
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 722
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 723
    const/4 v6, 0x1

    .line 727
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-eqz v6, :cond_5

    .line 715
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 720
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 731
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v4, :cond_6

    .line 732
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 731
    if-nez v14, :cond_3

    .line 739
    :cond_6
    const/4 v3, 0x0

    .line 742
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const v14, 0x8000

    .line 741
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v10, v14, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 748
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_3

    .line 752
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_7

    const/4 v8, 0x1

    .line 753
    .local v8, "isSystemPackage":Z
    :goto_3
    if-eqz v8, :cond_3

    .line 756
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v10, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 743
    .end local v8    # "isSystemPackage":Z
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 744
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "InputMethodUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getApplicationInfo failed. packageName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 745
    const-string/jumbo v16, " userId="

    .line 744
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 752
    .end local v5    # "e":Landroid/os/RemoteException;
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 703
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "enabledIme":Z
    .end local v9    # "j":I
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_8
    return-void
.end method
