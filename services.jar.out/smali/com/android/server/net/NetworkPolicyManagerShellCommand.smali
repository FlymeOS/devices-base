.class Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkPolicyManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/net/INetworkPolicyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    .line 48
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    return-void
.end method

.method private addRestrictBackgroundBlacklist()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 265
    .local v0, "uid":I
    if-gez v0, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    .line 269
    return v3
.end method

.method private addRestrictBackgroundWhitelist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 247
    .local v0, "uid":I
    if-gez v0, :cond_0

    .line 248
    return v0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->addRestrictBackgroundWhitelistedUid(I)V

    .line 251
    return v2
.end method

.method private getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 379
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextBooleanArg()I
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 384
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 386
    const-string/jumbo v2, "Error: didn\'t specify BOOLEAN"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const/4 v2, -0x1

    return v2

    .line 389
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRestrictBackground()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 231
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Restrict background status: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "enabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x0

    return v1

    .line 232
    :cond_0
    const-string/jumbo v1, "disabled"

    goto :goto_0
.end method

.method private getUidFromNextArg()I
    .locals 5

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 394
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v3, "Error: didn\'t specify UID"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const/4 v3, -0x1

    return v3

    .line 400
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: UID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") should be a number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const/4 v3, -0x2

    return v3
.end method

.method private getWifiPolicies()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 345
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 347
    .local v6, "size":I
    :goto_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 348
    .local v9, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 349
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 350
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v6    # "size":I
    .end local v9    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "size":I
    goto :goto_0

    .line 355
    .restart local v9    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v11, v12}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 356
    .local v4, "policies":[Landroid/net/NetworkPolicy;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v10, "wifiPolicies":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkPolicy;>;"
    const/4 v11, 0x0

    array-length v12, v4

    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v5, v4, v11

    .line 358
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v13, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v13}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v13

    if-nez v13, :cond_2

    .line 359
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "netId":Ljava/lang/String;
    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 357
    .end local v3    # "netId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 365
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ssid$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 366
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 367
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 369
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_4
    return-object v10
.end method

.method private listRestrictBackgroundBlacklist()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 214
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    .line 215
    .local v3, "uids":[I
    const-string/jumbo v4, "Restrict background blacklisted UIDs: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    array-length v4, v3

    if-nez v4, :cond_1

    .line 217
    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 226
    return v6

    .line 219
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 220
    aget v2, v3, v0

    .line 221
    .local v2, "uid":I
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 222
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private listRestrictBackgroundWhitelist()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 196
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v4}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundWhitelistedUids()[I

    move-result-object v3

    .line 197
    .local v3, "uids":[I
    const-string/jumbo v4, "Restrict background whitelisted UIDs: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    array-length v4, v3

    if-nez v4, :cond_1

    .line 199
    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 208
    return v5

    .line 201
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 202
    aget v2, v3, v0

    .line 203
    .local v2, "uid":I
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 204
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private listWifiNetworks()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 283
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getWifiPolicies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "policy$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 286
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean v6, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v5, v6, :cond_0

    .line 289
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 291
    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_1

    .line 284
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "filter":Ljava/lang/Boolean;
    goto :goto_0

    .line 293
    .end local v1    # "filter":Ljava/lang/Boolean;
    .restart local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 374
    .local v1, "template":Landroid/net/NetworkTemplate;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 375
    .local v0, "policy":Landroid/net/NetworkPolicy;
    return-object v0
.end method

.method private removeRestrictBackgroundBlacklist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 274
    .local v0, "uid":I
    if-gez v0, :cond_0

    .line 275
    return v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0, v2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    .line 278
    return v2
.end method

.method private removeRestrictBackgroundWhitelist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 256
    .local v0, "uid":I
    if-gez v0, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->removeRestrictBackgroundWhitelistedUid(I)V

    .line 260
    return v2
.end method

.method private runAdd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 162
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 164
    const-string/jumbo v2, "Error: didn\'t specify type of data to add"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return v4

    .line 167
    :cond_0
    const-string/jumbo v2, "restrict-background-whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    .line 167
    :cond_1
    const-string/jumbo v2, "restrict-background-blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 173
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown add type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return v4
.end method

.method private runGet()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 111
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 113
    const-string/jumbo v2, "Error: didn\'t specify type of data to get"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return v4

    .line 116
    :cond_0
    const-string/jumbo v2, "restrict-background"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictBackground()I

    move-result v2

    return v2

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown get type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return v4
.end method

.method private runList()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 142
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 143
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 145
    const-string/jumbo v2, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    return v4

    .line 148
    :cond_0
    const-string/jumbo v2, "wifi-networks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listWifiNetworks()I

    move-result v2

    return v2

    .line 148
    :cond_1
    const-string/jumbo v2, "restrict-background-whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    .line 148
    :cond_2
    const-string/jumbo v2, "restrict-background-blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown list type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return v4
.end method

.method private runRemove()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 178
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 179
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 181
    const-string/jumbo v2, "Error: didn\'t specify type of data to remove"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return v4

    .line 184
    :cond_0
    const-string/jumbo v2, "restrict-background-whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    .line 184
    :cond_1
    const-string/jumbo v2, "restrict-background-blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 190
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown remove type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    return v4
.end method

.method private runSet()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 126
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 128
    const-string/jumbo v2, "Error: didn\'t specify type of data to set"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    return v4

    .line 131
    :cond_0
    const-string/jumbo v2, "metered-network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setMeteredWifiNetwork()I

    move-result v2

    return v2

    .line 131
    :cond_1
    const-string/jumbo v2, "restrict-background"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setRestrictBackground()I

    move-result v2

    return v2

    .line 137
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown set type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return v4
.end method

.method private setMeteredWifiNetwork()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 298
    .local v11, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "id":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 300
    const-string/jumbo v13, "Error: didn\'t specify ID"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const/4 v13, -0x1

    return v13

    .line 303
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 305
    const-string/jumbo v13, "Error: didn\'t specify BOOLEAN"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    const/4 v13, -0x1

    return v13

    .line 308
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 309
    .local v6, "metered":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v9

    .line 310
    .local v9, "policies":[Landroid/net/NetworkPolicy;
    const/4 v2, 0x0

    .line 312
    .local v2, "changed":Z
    const/4 v13, 0x0

    array-length v14, v9

    :goto_0
    if-ge v13, v14, :cond_4

    aget-object v10, v9, v13

    .line 313
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v15, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v15}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v15

    if-nez v15, :cond_2

    iget-boolean v15, v10, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v15, v6, :cond_3

    .line 312
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 316
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "networkId":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 318
    const-string/jumbo v15, "NetworkPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Changing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " metered status to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-boolean v6, v10, Landroid/net/NetworkPolicy;->metered:Z

    .line 320
    const/4 v2, 0x1

    goto :goto_1

    .line 323
    .end local v7    # "networkId":Ljava/lang/String;
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    if-eqz v2, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v13, v9}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 325
    const/4 v13, 0x0

    return v13

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "config$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 329
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "ssid":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v10

    .line 332
    .restart local v10    # "policy":Landroid/net/NetworkPolicy;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/net/NetworkPolicy;->metered:Z

    .line 333
    const-string/jumbo v13, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Creating new policy for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    array-length v13, v9

    add-int/lit8 v13, v13, 0x1

    new-array v8, v13, [Landroid/net/NetworkPolicy;

    .line 335
    .local v8, "newPolicies":[Landroid/net/NetworkPolicy;
    array-length v13, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v9, v14, v8, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    array-length v13, v8

    add-int/lit8 v13, v13, -0x1

    aput-object v10, v8, v13

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    invoke-interface {v13, v8}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    goto :goto_2

    .line 340
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "newPolicies":[Landroid/net/NetworkPolicy;
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    return v13
.end method

.method private setRestrictBackground()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextBooleanArg()I

    move-result v0

    .line 238
    .local v0, "enabled":I
    if-gez v0, :cond_0

    .line 239
    return v0

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 242
    return v2

    :cond_1
    move v1, v2

    .line 241
    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 58
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    move-result v2

    return v2

    .line 58
    :cond_1
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    move-result v2

    return v2

    .line 58
    :cond_2
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    move-result v2

    return v2

    .line 58
    :cond_3
    const-string/jumbo v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    move-result v2

    return v2

    .line 58
    :cond_4
    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    move-result v2

    return v2

    .line 70
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const/4 v2, -0x1

    return v2
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 81
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Network policy manager (netpolicy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "  add restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "    Adds a UID to the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "  add restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "    Adds a UID to the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "  get restrict-background"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "    Gets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "  list wifi-networks [BOOLEAN]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "    Lists all saved wifi networks and whether they are metered or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "    networks."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "  list restrict-background-whitelist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "    Lists UIDs that are whitelisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "  list restrict-background-blacklist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "    Lists UIDs that are blacklisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "  remove restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "    Removes a UID from the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "  remove restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "    Removes a UID from the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "  set metered-network ID BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "    Toggles whether the given wi-fi network is metered."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "  set restrict-background BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "    Sets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method
