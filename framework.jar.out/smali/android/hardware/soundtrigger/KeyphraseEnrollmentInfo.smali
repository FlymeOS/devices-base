.class public Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
.super Ljava/lang/Object;
.source "KeyphraseEnrollmentInfo.java"


# static fields
.field public static final ACTION_MANAGE_VOICE_KEYPHRASES:Ljava/lang/String; = "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

.field public static final EXTRA_VOICE_KEYPHRASE_ACTION:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

.field public static final EXTRA_VOICE_KEYPHRASE_HINT_TEXT:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

.field public static final EXTRA_VOICE_KEYPHRASE_LOCALE:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

.field private static final TAG:Ljava/lang/String; = "KeyphraseEnrollmentInfo"

.field private static final VOICE_KEYPHRASE_META_DATA:Ljava/lang/String; = "android.voice_enrollment"


# instance fields
.field private final mKeyphrasePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private mParseError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v10, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000

    .line 104
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 106
    .local v6, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v7, "No enrollment applications found"

    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 110
    iput-object v10, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 111
    return-void

    .line 114
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 116
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    .line 118
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 120
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_2

    .line 123
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is not a privileged system app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error parsing voice enrollment meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "error":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    invoke-static {v7, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "error":Ljava/lang/String;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "android.permission.MANAGE_VOICE_KEYPHRASES"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 129
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not require MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    :cond_3
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 134
    invoke-direct {p0, p1, v0, v3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v8

    .line 135
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    const-string/jumbo v2, "No suitable enrollment application found"

    .line 146
    .restart local v2    # "error":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v10, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 154
    .end local v2    # "error":Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 155
    const-string/jumbo v7, "\n"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 100
    :cond_5
    return-void

    .line 150
    :cond_6
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 151
    iget-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 150
    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    goto :goto_1
.end method

.method private getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 12
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    .prologue
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 215
    invoke-virtual {p1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 217
    .local v6, "searchKeyphraseId":I
    if-gtz v6, :cond_0

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No valid searchKeyphraseId specified in meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v11

    .line 226
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    .line 225
    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "searchKeyphrase":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No valid searchKeyphrase specified in meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v11

    .line 236
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x2

    .line 235
    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "searchKeyphraseSupportedLocales":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No valid searchKeyphraseSupportedLocales specified in meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v11

    .line 245
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 247
    .local v3, "locales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 249
    :try_start_0
    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "supportedLocalesDelimited":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_3

    .line 251
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "i":I
    .end local v8    # "supportedLocalesDelimited":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error reading searchKeyphraseSupportedLocales from meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-object v11

    .line 266
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 268
    .local v4, "recognitionModes":I
    if-gez v4, :cond_4

    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No valid searchKeyphraseRecognitionFlags specified in meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v11

    .line 275
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    new-instance v9, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-direct {v9, v6, v5, v3, v4}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Landroid/util/ArraySet;I)V

    return-object v9
.end method

.method private getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 162
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 163
    .local v10, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 165
    .local v8, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :try_start_0
    const-string/jumbo v14, "android.voice_enrollment"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 166
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v11, :cond_1

    .line 167
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No android.voice_enrollment meta-data for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "error":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v14, 0x0

    .line 207
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 170
    :cond_0
    return-object v14

    .line 173
    .end local v7    # "error":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 174
    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 177
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    .line 178
    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 181
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "voice-enrollment-application"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Meta-data does not start with voice-enrollment-application tag for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .restart local v7    # "error":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    const/4 v14, 0x0

    .line 207
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 187
    :cond_4
    return-object v14

    .line 191
    .end local v7    # "error":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v14, Lcom/android/internal/R$styleable;->VoiceEnrollmentApplication:[I

    .line 190
    invoke-virtual {v12, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 192
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v10, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v8

    .line 193
    .local v8, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 209
    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "type":I
    :cond_6
    :goto_0
    return-object v8

    .line 202
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    invoke-static {v14, v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 198
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "error":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 199
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    invoke-static {v14, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 194
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "error":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 195
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    invoke-static {v14, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 206
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v14

    .line 207
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 206
    :cond_7
    throw v14
.end method


# virtual methods
.method public getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 6
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 333
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 336
    .local v0, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsPhrase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsLocale(Ljava/util/Locale;)Z

    move-result v4

    .line 336
    if-eqz v4, :cond_0

    .line 338
    return-object v0

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_1
    const-string/jumbo v1, "KeyphraseEnrollmentInfo"

    const-string/jumbo v2, "No Enrollment application supports the given keyphrase/locale"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-object v5
.end method

.method public getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;
    .locals 5
    .param p1, "action"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    :cond_0
    const-string/jumbo v2, "KeyphraseEnrollmentInfo"

    const-string/jumbo v3, "No enrollment application exists"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-object v4

    .line 309
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v1

    .line 310
    .local v1, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    if-eqz v1, :cond_2

    .line 311
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 313
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

    .line 311
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 314
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 315
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

    .line 311
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public listKeyphraseMetadata()[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyphraseEnrollmentInfo [Keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string/jumbo v1, ", ParseError="

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "]"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
