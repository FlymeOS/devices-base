.class public Landroid/telecom/DefaultDialerManager;
.super Ljava/lang/Object;
.source "DefaultDialerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDialerManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    .line 215
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 217
    const/4 v6, 0x0

    .line 216
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 219
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 220
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_3
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    return-object v4
.end method

.method public static getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 119
    const-string/jumbo v4, "dialer_default_application"

    .line 118
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    return-object v0

    .line 129
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "systemDialerPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    return-object v5

    .line 136
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    return-object v2

    .line 139
    :cond_2
    return-object v5
.end method

.method public static getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 158
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.DIAL"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 162
    .local v7, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 165
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 166
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 167
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.DIAL"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "dialIntentWithTelScheme":Landroid/content/Intent;
    const-string/jumbo v8, "tel"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-static {p0, v4, v1}, Landroid/telecom/DefaultDialerManager;->filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v8

    return-object v8
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    return v1

    .line 196
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 197
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 197
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "dialer_default_application"

    .line 67
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "oldPackageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    return v4

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "dialer_default_application"

    .line 80
    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 82
    const/4 v2, 0x1

    return v2

    .line 84
    :cond_1
    return v4
.end method
