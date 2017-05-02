.class public Lcom/android/server/hips/utils/HipsUtils;
.super Ljava/lang/Object;
.source "HipsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HipsUtils"

.field private static mHasSystemSignaturePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstalledPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->initInstalledPkg()V

    .line 44
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->initSystemAndSystemSignaturePkg()V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDefaultSMS(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 257
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 255
    return-void
.end method

.method public static changeInputMethod(Ljava/lang/String;)V
    .locals 4
    .param p0, "methodId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 284
    const-string/jumbo v2, "input_method"

    .line 282
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 286
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, v3, p0}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method

.method private static compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 421
    if-nez p0, :cond_1

    .line 422
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 423
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 425
    :cond_1
    if-nez p1, :cond_2

    .line 426
    const/4 v3, -0x2

    return v3

    .line 428
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 429
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 430
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 433
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 434
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 437
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 438
    return v4

    .line 440
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method public static getDefaultLauncherPkgName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 228
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 229
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 231
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_0

    .line 232
    const-string/jumbo v6, ""

    return-object v6

    .line 235
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 238
    .local v5, "resolveinfo":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_1

    .line 239
    const-string/jumbo v6, ""

    return-object v6

    .line 242
    :cond_1
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 243
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    .line 244
    const-string/jumbo v6, ""

    return-object v6

    .line 247
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 248
    .local v3, "launcherPkg":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 249
    const-string/jumbo v6, ""

    return-object v6

    .line 252
    :cond_3
    return-object v3
.end method

.method public static getTopActivityName()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 261
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 263
    const-string/jumbo v4, "activity"

    .line 261
    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 264
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 265
    return-object v5

    .line 268
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 270
    :cond_1
    return-object v5

    .line 273
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 274
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v1, :cond_3

    .line 275
    return-object v5

    .line 278
    :cond_3
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v3
.end method

.method public static getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 85
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 86
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v3, ""

    return-object v3

    .line 90
    :cond_2
    const-string/jumbo v2, ""

    .line 93
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 92
    invoke-static {v3, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HipsUtils"

    .line 96
    const-string/jumbo v4, "getValueFromSettings, unable to get value from settings!"

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static initInstalledPkg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 206
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 207
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 208
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 210
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 211
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 212
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 216
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 217
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    sget-object v6, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static initSystemAndSystemSignaturePkg()V
    .locals 7

    .prologue
    .line 158
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 164
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 165
    return-void

    .line 168
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_2

    .line 170
    return-void

    .line 173
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 174
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    .line 177
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 178
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/utils/HipsUtils;->isSystemAppInner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    sget-object v6, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_4
    invoke-static {v4}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    sget-object v6, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static isHasSystemSignature(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    return v1

    .line 119
    :cond_1
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_2
    return v1
.end method

.method private static isHasSystemSignatureInner(Ljava/lang/String;)Z
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 369
    if-nez p0, :cond_0

    .line 370
    return v5

    .line 373
    :cond_0
    const/4 v4, 0x0

    .line 375
    .local v4, "result":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 376
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 378
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v5, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    if-nez v5, :cond_2

    .line 379
    const-string/jumbo v5, "android"

    .line 380
    const/16 v6, 0x40

    .line 379
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v5, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    .line 393
    :cond_1
    :goto_0
    return v4

    .line 383
    :cond_2
    const/16 v5, 0x40

    .line 382
    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 384
    .local v0, "appSignature":[Landroid/content/pm/Signature;
    sget-object v5, Lcom/android/server/hips/utils/HipsUtils;->mSystemSignature:[Landroid/content/pm/Signature;

    invoke-static {v5, v0}, Lcom/android/server/hips/utils/HipsUtils;->compareSignature([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 385
    const/4 v4, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "appSignature":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HipsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to comfirm if the package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 390
    const-string/jumbo v7, " has system signature."

    .line 389
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPkgInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    return v1

    .line 131
    :cond_1
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_2
    return v1
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 12
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 397
    const/4 v5, 0x0

    .line 399
    .local v5, "result":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 401
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v7, "activity"

    .line 400
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 405
    .local v6, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 406
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 407
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 408
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v4, v9, v7

    .line 409
    .local v4, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 410
    const/4 v7, 0x1

    return v7

    .line 408
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    return v1

    .line 107
    :cond_1
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mSystemPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_2
    return v1
.end method

.method private static isSystemAppInner(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v3, 0x0

    .line 353
    .local v3, "result":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 355
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 356
    const/4 v5, 0x0

    .line 355
    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 357
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 358
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 359
    :cond_0
    const/4 v3, 0x1

    .line 365
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v3

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HipsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can not get info for the package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 62
    :cond_2
    return-void

    .line 65
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_4

    .line 67
    return-void

    .line 70
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 72
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "HipsUtils"

    const-string/jumbo v5, "putValueIntoSettings, unable to put value to settings!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw v4
.end method

.method public static readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 318
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, "infoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v0

    .line 322
    .local v0, "allStrings":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 323
    const-string/jumbo v8, "\\#\\#\\#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "strings":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 325
    const/4 v8, 0x0

    array-length v9, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v7, v8

    .line 326
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 330
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "strings":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "HipsUtils"

    .line 331
    const-string/jumbo v9, "readInfoFromFile, read the info from file successfully"

    .line 330
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    :goto_1
    return-object v2

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "HipsUtils"

    .line 343
    const-string/jumbo v9, "readInfoFromFile, unable to close buffered reader!!"

    .line 342
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v0    # "allStrings":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string/jumbo v8, "HipsUtils"

    const-string/jumbo v9, "readInfoFromFile, the info file does not exists!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 347
    .end local v3    # "infoFile":Ljava/io/File;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-object v2

    .line 341
    .restart local v3    # "infoFile":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "HipsUtils"

    .line 343
    const-string/jumbo v9, "readInfoFromFile, unable to close buffered reader!!"

    .line 342
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "infoFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 337
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v8, "HipsUtils"

    const-string/jumbo v9, "readInfoFromFile, read the info from file failed!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 340
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 341
    :catch_3
    move-exception v1

    .line 342
    const-string/jumbo v8, "HipsUtils"

    .line 343
    const-string/jumbo v9, "readInfoFromFile, unable to close buffered reader!!"

    .line 342
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 340
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 338
    :goto_5
    throw v8

    .line 341
    :catch_4
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "HipsUtils"

    .line 343
    const-string/jumbo v10, "readInfoFromFile, unable to close buffered reader!!"

    .line 342
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "infoFile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 336
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "infoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 297
    const/16 v4, 0x1a4

    invoke-static {p1, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 299
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 301
    const-string/jumbo v4, "HipsUtils"

    const-string/jumbo v5, "saveInfoToFile, save the info to file successfully."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v2, v3

    .line 291
    .end local v1    # "infoFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 307
    .restart local v1    # "infoFile":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HipsUtils"

    const-string/jumbo v5, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "infoFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 303
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "HipsUtils"

    const-string/jumbo v5, "saveInfoToFile, save the info to file failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 307
    :catch_2
    move-exception v0

    .line 308
    const-string/jumbo v4, "HipsUtils"

    const-string/jumbo v5, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 306
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    :goto_4
    throw v4

    .line 307
    :catch_3
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HipsUtils"

    const-string/jumbo v6, "saveInfoToFile, unable to close output stream!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "infoFile":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 302
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v1, "HipsUtils"

    const-string/jumbo v2, "saveUsageStatsData, the context is null, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 48
    :cond_0
    return-void
.end method

.method public static updateInstalledPkg(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "isAdd"    # Z

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    return-void

    .line 193
    :cond_1
    if-eqz p1, :cond_4

    .line 194
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    return-void

    .line 197
    :cond_2
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    :goto_0
    return-void

    .line 199
    :cond_4
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mInstalledPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static updateSystemSignaturePkg(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "isAdd"    # Z

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_4

    .line 144
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    return-void

    .line 147
    :cond_2
    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignatureInner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    :goto_0
    return-void

    .line 151
    :cond_4
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Lcom/android/server/hips/utils/HipsUtils;->mHasSystemSignaturePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
