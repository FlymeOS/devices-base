.class public final Landroid/net/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    }
.end annotation


# static fields
.field private static final SCORE_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.scoring.SCORE_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    sput-object v0, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "network_scorer_app"

    .line 183
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "scorerPackage":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    return-object v1
.end method

.method public static getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 118
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v16, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 123
    .local v10, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 124
    .local v14, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v11, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .local v13, "receiverInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v13, :cond_1

    .line 131
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "android.permission.SCORE_NETWORKS"

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "configurationActivityClassName":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v10, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 149
    .local v8, "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    .end local v5    # "configurationActivityClassName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 158
    .local v6, "scoringServiceClassName":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.scoring.SCORE_NETWORKS"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v17, "serviceIntent":Landroid/content/Intent;
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 161
    .local v15, "resolveServiceInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_3

    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 167
    .end local v6    # "scoringServiceClassName":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 168
    iget-object v3, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 167
    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v15    # "resolveServiceInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "serviceIntent":Landroid/content/Intent;
    .restart local v5    # "configurationActivityClassName":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 151
    .local v7, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_2

    .line 152
    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v5, "configurationActivityClassName":Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v5    # "configurationActivityClassName":Ljava/lang/String;
    .end local v7    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "receiver":Landroid/content/pm/ResolveInfo;
    .end local v13    # "receiverInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    return-object v16
.end method

.method public static getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    return-object v4

    .line 245
    :cond_0
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 246
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 247
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v3, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    return-object v0

    .line 251
    .end local v0    # "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_2
    return-object v4
.end method

.method public static isCallerActiveScorer(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .line 228
    .local v0, "defaultApp":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    iget v2, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    if-eq p1, v2, :cond_1

    .line 232
    return v1

    .line 236
    :cond_1
    const-string/jumbo v2, "android.permission.SCORE_NETWORKS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    const-string/jumbo v2, "network_scorer_app"

    .line 199
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "oldPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    return v4

    .line 206
    :cond_0
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Changing network scorer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p1, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "network_scorer_app"

    .line 209
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    return v4

    .line 214
    :cond_1
    invoke-static {p0, p1}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "network_scorer_app"

    .line 215
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    return v4

    .line 219
    :cond_2
    const-string/jumbo v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested network scorer is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    return v1
.end method
