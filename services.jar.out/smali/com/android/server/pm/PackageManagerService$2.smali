.class final Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 11425
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 11426
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 11428
    .local v1, "v2":I
    if-eq v0, v1, :cond_1

    .line 11429
    if-le v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 11431
    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 11432
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 11433
    if-eq v0, v1, :cond_3

    .line 11434
    if-le v0, v1, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 11436
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_5

    .line 11437
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    .line 11439
    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 11440
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 11442
    if-eq v0, v1, :cond_7

    .line 11443
    if-le v0, v1, :cond_6

    :goto_3
    return v2

    :cond_6
    move v2, v3

    goto :goto_3

    .line 11445
    :cond_7
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_9

    .line 11446
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_8

    :goto_4
    return v2

    :cond_8
    move v2, v3

    goto :goto_4

    .line 11448
    :cond_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    .line 11449
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 11451
    :cond_a
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_b

    .line 11452
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 11454
    :cond_b
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_c

    .line 11455
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 11457
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    .prologue
    .line 11424
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$2;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
