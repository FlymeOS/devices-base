.class final Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 11136
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 11339
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11338
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    .line 11136
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public final addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 6
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 11180
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11181
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already defined; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11182
    return-void

    .line 11185
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11192
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11194
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11195
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 11200
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11201
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11203
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 11194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11179
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    .prologue
    .line 11227
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 11229
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 11230
    .local v1, "filterPi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 11231
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 11232
    .local v0, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 11233
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 11234
    return v5

    .line 11230
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11237
    .end local v0    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 11310
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 11312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11314
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 11313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11315
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 11316
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 11317
    const-string/jumbo v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11318
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11311
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    move-object v0, p3

    .line 11327
    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 11328
    .local v0, "provider":Landroid/content/pm/PackageParser$Provider;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11329
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 11328
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11330
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 11331
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 11332
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 11333
    const-string/jumbo v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11335
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 11326
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 11322
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 11323
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    .prologue
    .line 11246
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 11247
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11248
    const/4 v2, 0x1

    return v2

    .line 11249
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 11250
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 11251
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 11252
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    .line 11256
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 11257
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    .line 11256
    :cond_1
    return v2

    .line 11260
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    .prologue
    .line 11264
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 11266
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 11241
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 11242
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 11272
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11273
    return-object v8

    .line 11274
    :cond_0
    move-object v0, p1

    .line 11275
    .local v0, "info":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11276
    return-object v8

    .line 11278
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 11279
    .local v2, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 11280
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 11281
    return-object v8

    .line 11283
    :cond_2
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 11284
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v6

    .line 11283
    invoke-static {v2, v5, v6, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 11285
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_3

    .line 11286
    return-object v8

    .line 11288
    :cond_3
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 11289
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 11290
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_4

    .line 11291
    iput-object p1, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 11293
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result v5

    iput v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 11294
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 11295
    iput p2, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 11296
    iget-boolean v5, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 11297
    iget v5, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 11298
    iget-object v5, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 11299
    iget v5, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 11300
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    .line 11301
    return-object v4
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 11270
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 11146
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11147
    const/4 v0, 0x0

    return-object v0

    .line 11148
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 11150
    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 11149
    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11140
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 11141
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Provider;>;"
    const/4 v1, 0x0

    .line 11155
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11156
    return-object v1

    .line 11157
    :cond_0
    if-nez p4, :cond_1

    .line 11158
    return-object v1

    .line 11160
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 11161
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 11162
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 11164
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11167
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 11168
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 11169
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11171
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 11172
    .local v7, "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11173
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11167
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11161
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 11176
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 5
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 11208
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11214
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11216
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11217
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 11222
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 11216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11207
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11306
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get11()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11305
    return-void
.end method
