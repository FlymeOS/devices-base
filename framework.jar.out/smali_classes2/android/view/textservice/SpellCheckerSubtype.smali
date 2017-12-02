.class public final Landroid/view/textservice/SpellCheckerSubtype;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSubtype$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field public static final SUBTYPE_ID_NONE:I = 0x0

.field private static final SUBTYPE_LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    .line 274
    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    .line 273
    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "languageTag"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "subtypeId"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    .line 85
    if-eqz p2, :cond_0

    .end local p2    # "locale":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 86
    if-eqz p3, :cond_1

    .end local p3    # "languageTag":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 87
    if-eqz p4, :cond_2

    .end local p4    # "extraValue":Ljava/lang/String;
    :goto_2
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 88
    iput p5, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 89
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v0, :cond_3

    .line 90
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 89
    :goto_3
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    .line 83
    return-void

    .line 85
    .restart local p2    # "locale":Ljava/lang/String;
    .restart local p3    # "languageTag":Ljava/lang/String;
    .restart local p4    # "extraValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0

    .line 86
    .end local p2    # "locale":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_1

    .line 87
    .end local p3    # "languageTag":Ljava/lang/String;
    :cond_2
    const-string/jumbo p4, ""

    goto :goto_2

    .line 90
    .end local p4    # "extraValue":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    .end local v0    # "s":Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 117
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v1, :cond_3

    .line 118
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 117
    :goto_3
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    .line 107
    return-void

    .line 111
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 115
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 118
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_3
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 158
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 159
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 160
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    .line 162
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 163
    aget-object v4, v3, v1

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_1

    .line 165
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 167
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 168
    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairs":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/textservice/SpellCheckerInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/textservice/SpellCheckerInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerSubtype;>;"
    if-nez p2, :cond_0

    return-object p3

    .line 302
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 304
    .local v5, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/textservice/SpellCheckerSubtype;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerSubtype;>;"
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 306
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 307
    invoke-virtual {p2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 308
    .local v3, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 306
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subtype$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerSubtype;

    .line 316
    .restart local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 204
    instance-of v2, p1, Landroid/view/textservice/SpellCheckerSubtype;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 205
    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    .line 206
    .local v0, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    iget v2, v0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v2, :cond_2

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 210
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 211
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_3

    .line 213
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 209
    :cond_3
    return v1

    .line 215
    .end local v0    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_4
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 246
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "localeStr":Ljava/lang/String;
    :goto_0
    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-nez v3, :cond_1

    .line 248
    return-object v1

    .line 246
    .end local v1    # "localeStr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .restart local v1    # "localeStr":Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 251
    iget v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    .line 250
    invoke-virtual {v3, p2, v4, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    .local v2, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 253
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 255
    :cond_2
    return-object v1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 266
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return-void
.end method
