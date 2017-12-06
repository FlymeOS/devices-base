.class public Lcom/android/internal/app/RecommendActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;,
        Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;,
        Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    }
.end annotation


# static fields
.field public static final COLUMNS_ALL:[Ljava/lang/String;

.field private static final DECODE_IMAGE_TIMES:I = 0x3

.field public static final FIELD_APP_ID:Ljava/lang/String; = "appId"

.field public static final FIELD_DOC_TYPE:Ljava/lang/String; = "doc_type"

.field public static final FIELD_ICON:Ljava/lang/String; = "icon"

.field public static final FIELD_LOCAL_ICON:Ljava/lang/String; = "local_icon"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_SCHEME:Ljava/lang/String; = "app_scheme"

.field public static final FIELD_URL:Ljava/lang/String; = "url"

.field public static final SCHEME_CONTENT:I = 0x2

.field public static final SCHEME_FILE:I = 0x1

.field public static final SCHEME_FILE_CONTENT:I = 0x3

.field public static final SCHEME_NAME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_NAME_FILE:Ljava/lang/String; = "file"

.field public static final SCHEME_NONE:I = -0x1

.field public static final SCHEME_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecommendActivity"


# instance fields
.field private final GOOGLE_PALY_PKG_NAME:Ljava/lang/String;

.field private hasGooglePaly:Z

.field private isInternational:Z

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mFileEx:Ljava/lang/String;

.field private mGrid:Landroid/widget/GridView;

.field private mMimeType:Ljava/lang/String;

.field private mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

.field private mPlayStoreName:Ljava/lang/String;

.field private mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

.field private mScheme:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/RecommendActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/RecommendActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/RecommendActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/RecommendActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/RecommendActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "bSetDefault"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/RecommendActivity;->clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/RecommendActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "tail"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RecommendActivity;->launchGooglePlaySearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/RecommendActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/RecommendActivity;->safelyStartActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "doc_type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "appId"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "app_scheme"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "url"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "local_icon"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 103
    sput-object v0, Lcom/android/internal/app/RecommendActivity;->COLUMNS_ALL:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 89
    const-string/jumbo v0, "com.android.vending"

    iput-object v0, p0, Lcom/android/internal/app/RecommendActivity;->GOOGLE_PALY_PKG_NAME:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    .line 92
    const-string/jumbo v0, "Play Store"

    iput-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private checkScheme(Ljava/lang/String;)Z
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "bAvailable":Z
    if-nez p1, :cond_0

    .line 182
    return v0

    .line 185
    :cond_0
    const-string/jumbo v1, "file"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "content"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    :cond_1
    const/4 v0, 0x1

    .line 189
    :cond_2
    return v0
.end method

.method private clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "bSetDefault"    # Z

    .prologue
    .line 420
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v13, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 426
    .local v10, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 427
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "cat$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 428
    .local v8, "cat":Ljava/lang/String;
    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v8    # "cat":Ljava/lang/String;
    .end local v9    # "cat$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v22, "android.intent.category.DEFAULT"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v22, v0

    const/high16 v23, 0xfff0000

    and-int v7, v22, v23

    .line 434
    .local v7, "cat":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 435
    .local v11, "data":Landroid/net/Uri;
    const/high16 v22, 0x600000

    move/from16 v0, v22

    if-ne v7, v0, :cond_2

    .line 436
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 437
    .local v15, "mimeType":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 439
    :try_start_0
    invoke-virtual {v13, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 450
    const/high16 v22, 0x600000

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    .line 451
    const-string/jumbo v22, "file"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string/jumbo v22, "content"

    .line 452
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    .line 451
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 484
    :cond_3
    :goto_2
    if-eqz v13, :cond_b

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    .line 486
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v21, v0

    .line 487
    .local v21, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 488
    .local v6, "bestMatch":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v3, :cond_a

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 490
    .local v20, "r":Landroid/content/pm/ResolveInfo;
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 491
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 490
    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v22, v21, v14

    .line 492
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v6, :cond_4

    .line 493
    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 488
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 440
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v14    # "i":I
    .end local v20    # "r":Landroid/content/pm/ResolveInfo;
    .end local v21    # "set":[Landroid/content/ComponentName;
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 441
    .local v12, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v22, "OpenFileSelectActivity"

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const/4 v13, 0x0

    .local v13, "filter":Landroid/content/IntentFilter;
    goto/16 :goto_1

    .line 453
    .end local v12    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "mimeType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 459
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_7

    .line 460
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 461
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 462
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v22

    if-ltz v22, :cond_6

    .line 463
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v19

    .line 464
    .local v19, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v23

    .line 465
    if-ltz v19, :cond_9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 464
    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v19    # "port":I
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v17

    .line 471
    .local v17, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v17, :cond_3

    .line 472
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 473
    .local v18, "path":Ljava/lang/String;
    :cond_8
    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 474
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PatternMatcher;

    .line 475
    .local v16, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 476
    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getType()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 465
    .end local v16    # "p":Landroid/os/PatternMatcher;
    .end local v17    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v18    # "path":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v19    # "port":I
    :cond_9
    const/16 v22, 0x0

    goto :goto_4

    .line 506
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v14    # "i":I
    .restart local v21    # "set":[Landroid/content/ComponentName;
    :cond_a
    if-eqz p3, :cond_b

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    .line 507
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 418
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v14    # "i":I
    .end local v21    # "set":[Landroid/content/ComponentName;
    :cond_b
    return-void
.end method

.method private findRecommendApp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doc_type=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "selection":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 324
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " and (app_scheme=1 or app_scheme=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 334
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "content://com.meizu.flyme.appcenter.recommend"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 335
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/android/internal/app/RecommendActivity;->COLUMNS_ALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 336
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 340
    .local v7, "count":I
    const-string/jumbo v3, "name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 341
    .local v10, "index":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "name":Ljava/lang/String;
    const-string/jumbo v3, "doc_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 343
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "docType":Ljava/lang/String;
    const-string/jumbo v3, "local_icon"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 345
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 346
    .local v12, "localIcon":Ljava/lang/String;
    const-string/jumbo v3, "url"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 347
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "url":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    invoke-direct {v11, p0}, Lcom/android/internal/app/RecommendActivity$RecommendInfo;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    .line 350
    .local v11, "info":Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    iput-object v13, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->name:Ljava/lang/String;

    .line 351
    iput-object v9, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->type:Ljava/lang/String;

    .line 352
    iput-object v12, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->localIcon:Ljava/lang/String;

    .line 353
    iput-object v14, v11, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->url:Ljava/lang/String;

    .line 355
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 356
    return-object v11

    .line 322
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "count":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "docType":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "info":Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    .end local v12    # "localIcon":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "file"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    const-string/jumbo v3, "content"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " and (app_scheme=2 or app_scheme=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 331
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " and app_scheme=-1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 358
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-nez p1, :cond_0

    .line 295
    return-object v2

    .line 298
    :cond_0
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, "dotPosition":I
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 300
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    :cond_1
    return-object v2
.end method

.method private initHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$layout;->mz_recommend_header:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 271
    .local v0, "headerLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->initMstoreItemView()Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->initRecommendAppItemView()Landroid/view/View;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    :cond_1
    return-object v0
.end method

.method private initMstoreItemView()Landroid/view/View;
    .locals 8

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$layout;->mz_recommend_header_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 576
    .local v3, "itemView":Landroid/view/View;
    sget v4, Lcom/flyme/internal/R$id;->recommend_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 577
    .local v0, "appImage":Landroid/widget/ImageView;
    sget v4, Lcom/flyme/internal/R$id;->recommend_app_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 578
    .local v2, "appTitle":Landroid/widget/TextView;
    sget v4, Lcom/flyme/internal/R$id;->recommend_app_summary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 579
    .local v1, "appSummary":Landroid/widget/TextView;
    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 580
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->loadMstoreIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->isInternational()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    sget v4, Lcom/flyme/internal/R$string;->recommend_search_gooleplay:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/RecommendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    new-instance v4, Lcom/android/internal/app/RecommendActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RecommendActivity$4;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    return-object v3

    .line 585
    :cond_0
    sget v4, Lcom/flyme/internal/R$string;->recommend_search_mstore:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initRecommendAppItemView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 514
    iget-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    if-eqz v8, :cond_1

    .line 515
    :cond_0
    return-object v10

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$layout;->mz_recommend_header_item:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 525
    .local v6, "itemView":Landroid/view/View;
    sget v8, Lcom/flyme/internal/R$id;->recommend_icon:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 526
    .local v0, "appImage":Landroid/widget/ImageView;
    sget v8, Lcom/flyme/internal/R$id;->recommend_app_title:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 527
    .local v2, "appTitle":Landroid/widget/TextView;
    sget v8, Lcom/flyme/internal/R$id;->recommend_app_summary:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 530
    .local v1, "appSummary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 533
    .local v7, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 535
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://com.meizu.flyme.appcenter.recommend/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    iget-object v9, v9, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->localIcon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 537
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 539
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_2

    .line 546
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    :goto_1
    iget-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    iget-object v8, v8, Lcom/android/internal/app/RecommendActivity$RecommendInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    sget v8, Lcom/flyme/internal/R$string;->recommend_recommend:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 555
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    new-instance v8, Lcom/android/internal/app/RecommendActivity$3;

    invoke-direct {v8, p0}, Lcom/android/internal/app/RecommendActivity$3;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    return-object v6

    .line 540
    :catch_0
    move-exception v4

    .line 542
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 549
    sget v9, Lcom/flyme/internal/R$drawable;->mz_ic_list_app_small:I

    .line 548
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private isInternational()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 610
    const-string/jumbo v0, "ro.product.locale.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string/jumbo v0, "ro.product.locale.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 610
    if-nez v0, :cond_3

    .line 612
    :cond_0
    const-string/jumbo v0, "ro.product.locale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zh-CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 610
    :goto_0
    if-nez v0, :cond_1

    .line 613
    iput-boolean v1, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    .line 615
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    if-eqz v0, :cond_2

    .line 616
    const-string/jumbo v0, "com.android.vending"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->isApkAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    .line 619
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/RecommendActivity;->isInternational:Z

    return v0

    :cond_3
    move v0, v1

    .line 610
    goto :goto_0
.end method

.method private launchGooglePlaySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "tail"    # Ljava/lang/String;

    .prologue
    .line 701
    const-string/jumbo v1, "market://search?q="

    .line 702
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 706
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    return-void

    .line 709
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadMstoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 648
    invoke-direct {p0}, Lcom/android/internal/app/RecommendActivity;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/app/RecommendActivity;->hasGooglePaly:Z

    if-eqz v3, :cond_0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 651
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 652
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 653
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "RecommendActivity"

    const-string/jumbo v4, "load google play app icon error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 657
    return-object v5

    .line 661
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 662
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.meizu.mstore"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 663
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 664
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 665
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "RecommendActivity"

    const-string/jumbo v4, "load mstore app icon error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 668
    return-object v5
.end method

.method private safelyStartActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 254
    return-void

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 260
    throw v0
.end method

.method private setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V
    .locals 7
    .param p1, "ap"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$layout;->mz_recommend_grid:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 195
    new-instance v0, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;-><init>(Lcom/android/internal/app/RecommendActivity;Lcom/android/internal/app/RecommendActivity$RecommendGridAdapter;)V

    .line 196
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_apps_grid:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    .line 197
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->resizeGrid()V

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/android/internal/app/RecommendActivity$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RecommendActivity$1;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 235
    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_check_bar:I

    .line 234
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 236
    .local v2, "checkBar":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v4, Lcom/flyme/internal/R$id;->mz_recommend_alwaysUse:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 239
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$string;->alwaysUse:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/android/internal/app/RecommendActivity$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/RecommendActivity$2;-><init>(Lcom/android/internal/app/RecommendActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    return-void

    .line 241
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 175
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/RecommendActivity;->overridePendingTransition(II)V

    .line 173
    return-void
.end method

.method public isApkAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 626
    const/4 v3, 0x1

    .line 625
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 627
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 628
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 628
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/RecommendActivity;->mPlayStoreName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 636
    const/4 v2, 0x0

    return v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 638
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v4
.end method

.method public launchAppCenterSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 726
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "searchKey":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "market://search?q=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 739
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 740
    .local v1, "mstoreIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 741
    const-string/jumbo v4, "com.meizu.mstore"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 722
    return-void

    .line 731
    .end local v1    # "mstoreIntent":Landroid/content/Intent;
    .end local v2    # "searchKey":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v2, p2

    .restart local v2    # "searchKey":Ljava/lang/String;
    goto :goto_0

    .line 735
    .end local v2    # "searchKey":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "searchKey":Ljava/lang/String;
    goto :goto_0

    .line 745
    .restart local v1    # "mstoreIntent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    sget v4, Lcom/flyme/internal/R$string;->recommend_open_mstore_faile:I

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1033
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onContentChanged()V

    .line 1034
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->onAlertContentChanged()V

    .line 1032
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 120
    sget v6, Lcom/flyme/internal/R$style;->Theme_Flyme_Recommend:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RecommendActivity;->setTheme(I)V

    .line 121
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 126
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 127
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 130
    .local v3, "extraIntent":Landroid/content/Intent;
    if-eqz v4, :cond_1

    :try_start_0
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 132
    .local v3, "extraIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    .line 134
    invoke-direct {p0, v5}, Lcom/android/internal/app/RecommendActivity;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    .line 135
    invoke-virtual {v3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    .line 137
    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/app/RecommendActivity;->checkScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mFileEx:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 140
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mMimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/internal/app/RecommendActivity;->findRecommendApp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v3    # "extraIntent":Landroid/content/Intent;
    .end local v5    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v6, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-direct {v6, p0, p0, v3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;-><init>(Lcom/android/internal/app/RecommendActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mScheme:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/app/RecommendActivity;->checkScheme(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    invoke-virtual {v6}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 160
    return-void

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    iput-object v8, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    goto :goto_0

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 155
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/RecommendActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->setupAlert()V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 117
    return-void
.end method

.method public openAppDetail(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.flyme.appcenter.app.detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "detail_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 697
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 692
    return-void
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity;->mRecommendInfo:Lcom/android/internal/app/RecommendActivity$RecommendInfo;

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_recommend_window_port_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 775
    .local v0, "mMaxHeight":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, v1, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertControllerExt;->setMaxHeight(I)V

    .line 753
    return-void

    .line 773
    .end local v0    # "mMaxHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/RecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_recommend_window_on_recommend_port_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "mMaxHeight":I
    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 1

    .prologue
    .line 1027
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->applyMeizuStyle()V

    .line 1026
    return-void
.end method

.method public final tryDecodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmapFile"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .local v3, "j":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 675
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 674
    .local v0, "bm":Landroid/graphics/Bitmap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 681
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RecommendActivity"

    const-string/jumbo v5, "tryDecodeBitmap exception:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 677
    :catch_1
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v4, "RecommendActivity"

    const-string/jumbo v5, "tryDecodeBitmap exception:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 680
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method
