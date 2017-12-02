.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .locals 26
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "titleResId"    # I
    .param p6, "textResId"    # I
    .param p7, "disabledMessageResId"    # I
    .param p8, "rank"    # I
    .param p9, "iconResId"    # I
    .param p10, "enabled"    # Z

    .prologue
    .line 337
    if-eqz p10, :cond_0

    const/16 v0, 0x20

    :goto_0
    or-int/lit16 v1, v0, 0x100

    .line 339
    if-eqz p9, :cond_1

    const/4 v0, 0x4

    .line 337
    :goto_1
    or-int v22, v1, v0

    .line 343
    .local v22, "flags":I
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v20

    .line 348
    const/4 v6, 0x0

    .line 349
    const/4 v7, 0x0

    .line 351
    const/4 v9, 0x0

    .line 352
    const/4 v10, 0x0

    .line 354
    const/4 v12, 0x0

    .line 355
    const/4 v13, 0x0

    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x0

    .line 359
    const/16 v17, 0x0

    .line 361
    const/16 v19, 0x0

    .line 365
    const/16 v24, 0x0

    .line 366
    const/16 v25, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v11, p6

    move/from16 v14, p7

    move/from16 v18, p8

    move/from16 v23, p9

    .line 343
    invoke-direct/range {v1 .. v25}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 337
    .end local v22    # "flags":I
    :cond_0
    const/16 v0, 0x40

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 3
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 274
    sget-object v2, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    .line 273
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-object v1

    .line 279
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v2, "android:name for shortcut category must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-object v1

    .line 282
    :catchall_0
    move-exception v1

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    throw v1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "rank"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    .line 290
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 293
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 294
    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android:shortcutId must be string literal. activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    const/4 v0, 0x0

    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    return-object v0

    .line 297
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 299
    .local v10, "enabled":Z
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 300
    .local v9, "iconResId":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 301
    .local v5, "titleResId":I
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 303
    .local v6, "textResId":I
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 305
    .local v7, "disabledMessageResId":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android:shortcutId must be provided. activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    const/4 v0, 0x0

    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    return-object v0

    .line 309
    :cond_1
    if-nez v5, :cond_2

    .line 310
    :try_start_2
    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    const/4 v0, 0x0

    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object v0

    :cond_2
    move-object v0, p0

    move/from16 v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v8, p5

    .line 314
    :try_start_3
    invoke-static/range {v0 .. v10}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return-object v0

    .line 326
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "titleResId":I
    .end local v6    # "textResId":I
    .end local v7    # "disabledMessageResId":I
    .end local v9    # "iconResId":I
    .end local v10    # "enabled":Z
    :catchall_0
    move-exception v0

    .line 327
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 68
    :cond_0
    return-object v9

    .line 71
    :cond_1
    const/4 v5, 0x0

    .line 74
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 75
    .local v6, "size":I
    const/4 v4, 0x0

    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .local v1, "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_3

    .line 75
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 82
    invoke-virtual {p0, v7, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 84
    .local v2, "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    .line 85
    invoke-static {p0, v2, p1, p2, v5}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_1

    .line 89
    .end local v1    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    .end local v4    # "i":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "size":I
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {p0, v7, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-object v9

    .line 96
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "i":I
    .restart local v6    # "size":I
    :cond_4
    return-object v5
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 25
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 108
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/16 v18, 0x0

    .line 110
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v2, "android.app.shortcuts"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 111
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v18, :cond_1

    .line 265
    if-eqz v18, :cond_0

    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 112
    :cond_0
    return-object p4

    .line 115
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-static/range {v18 .. v18}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 121
    .local v3, "attrs":Landroid/util/AttributeSet;
    const/4 v7, 0x0

    .line 122
    .local v7, "rank":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v15

    .line 123
    .local v15, "maxShortcuts":I
    const/16 v17, 0x0

    .line 127
    .local v17, "numShortcuts":I
    const/4 v9, 0x0

    .line 129
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    .line 130
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v14, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move-object/from16 v19, p4

    .line 133
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_15

    .line 134
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-lez v2, :cond_15

    .line 135
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 136
    .local v10, "depth":I
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 139
    .local v21, "tag":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_a

    const/4 v2, 0x2

    if-ne v10, v2, :cond_a

    const-string/jumbo v2, "shortcut"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 140
    if-eqz v9, :cond_2

    .line 144
    move-object/from16 v20, v9

    .line 145
    .local v20, "si":Landroid/content/pm/ShortcutInfo;
    const/4 v9, 0x0

    .line 147
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 149
    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Shortcut "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " has no intent. Skipping it."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v10    # "depth":I
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v21    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    :catchall_0
    move-exception v2

    move-object/from16 p4, v19

    .line 265
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v7    # "rank":I
    .end local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v15    # "maxShortcuts":I
    .end local v17    # "numShortcuts":I
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_1
    if-eqz v18, :cond_4

    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 264
    :cond_4
    throw v2

    .line 154
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    .restart local v7    # "rank":I
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v10    # "depth":I
    .restart local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v15    # "maxShortcuts":I
    .restart local v17    # "numShortcuts":I
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_5
    :try_start_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_6
    move/from16 v0, v17

    if-lt v0, v15, :cond_8

    .line 159
    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "More than "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " shortcuts found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    const-string/jumbo v6, ". Skipping the rest."

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-eqz v18, :cond_7

    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_7
    return-object v19

    .line 165
    :cond_8
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 166
    const v4, 0x1000c000

    .line 165
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    :try_start_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 180
    if-eqz v8, :cond_9

    .line 181
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 182
    const/4 v8, 0x0

    .line 185
    :cond_9
    if-nez v19, :cond_17

    .line 186
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_2
    :try_start_7
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    add-int/lit8 v17, v17, 0x1

    .line 190
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, p4

    .line 194
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v11

    .line 175
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v4, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 202
    const/4 v2, 0x1

    if-ne v10, v2, :cond_b

    const-string/jumbo v2, "shortcuts"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    :cond_b
    const/4 v2, 0x2

    if-ne v10, v2, :cond_e

    const-string/jumbo v2, "shortcut"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v6, p3

    .line 206
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v20

    .line 208
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v20, :cond_2

    .line 215
    if-eqz v19, :cond_d

    .line 216
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_d

    .line 217
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 218
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v4, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    :cond_c
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 223
    .end local v12    # "i":I
    :cond_d
    move-object/from16 v9, v20

    .line 224
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    .line 225
    .restart local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 227
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v20    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_e
    const/4 v2, 0x3

    if-ne v10, v2, :cond_11

    const-string/jumbo v2, "intent"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 228
    if-eqz v9, :cond_f

    .line 229
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    .line 236
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 237
    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Shortcut intent action must be provided. activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    goto/16 :goto_0

    .line 230
    .end local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_f
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v4, "Ignoring excessive intent tag."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_11
    const/4 v2, 0x3

    if-ne v10, v2, :cond_14

    const-string/jumbo v2, "categories"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 245
    if-eqz v9, :cond_2

    .line 246
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2

    .line 249
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v16

    .line 250
    .local v16, "name":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 251
    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Empty category found. activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    :cond_12
    if-nez v8, :cond_13

    .line 256
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 258
    :cond_13
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 262
    .end local v16    # "name":Ljava/lang/String;
    :cond_14
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v4, "Invalid tag \'%s\' found at depth %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v21, v6, v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v6, v24

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 265
    .end local v10    # "depth":I
    .end local v21    # "tag":Ljava/lang/String;
    :cond_15
    if-eqz v18, :cond_16

    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 269
    :cond_16
    return-object v19

    .line 264
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v7    # "rank":I
    .end local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v15    # "maxShortcuts":I
    .end local v17    # "numShortcuts":I
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "type":I
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    .restart local v7    # "rank":I
    .restart local v9    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v10    # "depth":I
    .restart local v14    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v15    # "maxShortcuts":I
    .restart local v17    # "numShortcuts":I
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v20    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_17
    move-object/from16 p4, v19

    .end local v19    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2
.end method
