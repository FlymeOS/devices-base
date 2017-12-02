.class public final Landroid/app/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchableInfo$1;,
        Landroid/app/SearchableInfo$ActionKeyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static final VOICE_SEARCH_LAUNCH_RECOGNIZER:I = 0x4

.field private static final VOICE_SEARCH_LAUNCH_WEB_SEARCH:I = 0x2

.field private static final VOICE_SEARCH_SHOW_BUTTON:I = 0x1


# instance fields
.field private mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoUrlDetect:Z

.field private final mHintId:I

.field private final mIconId:I

.field private final mIncludeInGlobalSearch:Z

.field private final mLabelId:I

.field private final mQueryAfterZeroResults:Z

.field private final mSearchActivity:Landroid/content/ComponentName;

.field private final mSearchButtonText:I

.field private final mSearchImeOptions:I

.field private final mSearchInputType:I

.field private final mSearchMode:I

.field private final mSettingsDescriptionId:I

.field private final mSuggestAuthority:Ljava/lang/String;

.field private final mSuggestIntentAction:Ljava/lang/String;

.field private final mSuggestIntentData:Ljava/lang/String;

.field private final mSuggestPath:Ljava/lang/String;

.field private final mSuggestProviderPackage:Ljava/lang/String;

.field private final mSuggestSelection:Ljava/lang/String;

.field private final mSuggestThreshold:I

.field private final mVoiceLanguageId:I

.field private final mVoiceLanguageModeId:I

.field private final mVoiceMaxResults:I

.field private final mVoicePromptTextId:I

.field private final mVoiceSearchMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 794
    new-instance v0, Landroid/app/SearchableInfo$1;

    invoke-direct {v0}, Landroid/app/SearchableInfo$1;-><init>()V

    .line 793
    sput-object v0, Landroid/app/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "cName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 311
    iput-object p3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 314
    sget-object v4, Lcom/android/internal/R$styleable;->Searchable:[I

    .line 313
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 316
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 317
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 318
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 320
    const/16 v4, 0x9

    .line 319
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 321
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 324
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 327
    const/16 v4, 0x12

    .line 326
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 329
    const/16 v4, 0x13

    .line 328
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 331
    const/16 v4, 0x15

    .line 330
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 334
    const/16 v4, 0x14

    .line 333
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 336
    const/4 v4, 0x4

    .line 335
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 338
    const/4 v4, 0x5

    .line 337
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 340
    const/4 v4, 0x6

    .line 339
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 342
    const/4 v4, 0x7

    .line 341
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 344
    const/16 v4, 0x8

    .line 343
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 346
    const/16 v4, 0x11

    .line 345
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 349
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 348
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 352
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 351
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 354
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 353
    iput v4, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 356
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 355
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 358
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 357
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, "suggestProviderPackage":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 366
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 367
    const/high16 v5, 0x10000000

    .line 366
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 368
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 369
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 372
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "suggestProviderPackage":Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 375
    iget v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    if-nez v4, :cond_1

    .line 376
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Search label must be a resource reference."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 310
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 813
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "count":I
    :goto_3
    if-lez v0, :cond_3

    .line 833
    new-instance v1, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v1, p1, v4}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$ActionKeyInfo;)V

    invoke-direct {p0, v1}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V

    .line 832
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "count":I
    :cond_0
    move v1, v3

    .line 820
    goto :goto_0

    :cond_1
    move v1, v3

    .line 821
    goto :goto_1

    :cond_2
    move v2, v3

    .line 822
    goto :goto_2

    .line 836
    .restart local v0    # "count":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 811
    return-void
.end method

.method private addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 501
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, "theirContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 269
    .end local v2    # "theirContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 265
    .restart local v2    # "theirContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "SearchableInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t make context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "SearchableInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 519
    const/4 v3, 0x0

    .line 521
    .local v3, "userContext":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v5, "system"

    .line 522
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 521
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 529
    .local v3, "userContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.app.searchable"

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 530
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_0

    .line 531
    return-object v8

    .line 523
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    .local v3, "userContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 524
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "SearchableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t create package context for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v8

    .line 533
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "userContext":Landroid/content/Context;
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-static {v3, v4, v0}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 536
    .local v2, "searchable":Landroid/app/SearchableInfo;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 552
    return-object v2
.end method

.method private static getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v11, 0x0

    .line 566
    const/4 v5, 0x0

    .line 567
    .local v5, "result":Landroid/app/SearchableInfo;
    invoke-static {p0, p2}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    .line 568
    .local v0, "activityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    return-object v11

    .line 573
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .local v7, "tagType":I
    move-object v6, v5

    .line 574
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .local v6, "result":Landroid/app/SearchableInfo;
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 575
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 576
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "searchable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 577
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    .line 578
    .local v1, "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_3

    .line 580
    :try_start_2
    new-instance v5, Landroid/app/SearchableInfo;

    invoke-direct {v5, v0, v1, p2}, Landroid/app/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 604
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .local v5, "result":Landroid/app/SearchableInfo;
    :goto_1
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    move-object v6, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    goto :goto_0

    .line 581
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    :catch_0
    move-exception v4

    .line 582
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string/jumbo v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 583
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 582
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 583
    const-string/jumbo v10, ": "

    .line 582
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 583
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 582
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-object v11

    .line 587
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "actionkey"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 588
    if-nez v6, :cond_2

    .line 590
    return-object v11

    .line 592
    :cond_2
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 593
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_3

    .line 595
    :try_start_5
    new-instance v8, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v8, v0, v1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v6, v8}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v1    # "attr":Landroid/util/AttributeSet;
    :cond_3
    move-object v5, v6

    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_1

    .line 596
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    :catch_1
    move-exception v4

    .line 597
    .restart local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string/jumbo v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid action key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 598
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 598
    const-string/jumbo v10, ": "

    .line 597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 598
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 599
    return-object v11

    .line 609
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .end local v7    # "tagType":I
    :catch_2
    move-exception v2

    .line 610
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Reading searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return-object v11

    .line 606
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 607
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const-string/jumbo v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Reading searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    return-object v11

    .line 614
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v7    # "tagType":I
    :cond_4
    return-object v6

    .line 606
    :catch_4
    move-exception v3

    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v5, v6

    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_3

    .line 609
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_2
.end method


# virtual methods
.method public autoUrlDetect()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 495
    return-object v1

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    return-object v0
.end method

.method public getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    return v0
.end method

.method public getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "theirContext":Landroid/content/Context;
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    return-object p2

    .line 286
    :cond_0
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 288
    :try_start_0
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 295
    .end local v2    # "theirContext":Landroid/content/Context;
    :cond_1
    :goto_0
    return-object v2

    .line 289
    .restart local v2    # "theirContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 291
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSearchButtonText()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    return v0
.end method

.method public getSettingsDescriptionId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    return v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestThreshold()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    return v0
.end method

.method public getVoiceLanguageId()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    return v0
.end method

.method public getVoiceLanguageModeId()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    return v0
.end method

.method public getVoiceMaxResults()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    return v0
.end method

.method public getVoicePromptTextId()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    return v0
.end method

.method public getVoiceSearchEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 660
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVoiceSearchLaunchRecognizer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 678
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVoiceSearchLaunchWebSearch()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 669
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public shouldIncludeInGlobalSearch()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    return v0
.end method

.method public shouldRewriteQueryFromData()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldRewriteQueryFromText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public useBadgeIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public useBadgeLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 850
    iget v2, p0, Landroid/app/SearchableInfo;->mLabelId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 852
    iget v2, p0, Landroid/app/SearchableInfo;->mHintId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget v2, p0, Landroid/app/SearchableInfo;->mIconId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget v2, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    iget v2, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 871
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    :cond_0
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget v2, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    return-void

    :cond_1
    move v2, v4

    .line 858
    goto :goto_0

    :cond_2
    move v2, v4

    .line 859
    goto :goto_1

    :cond_3
    move v3, v4

    .line 860
    goto :goto_2

    .line 873
    :cond_4
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "actionKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 875
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v0, p1, p2}, Landroid/app/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
