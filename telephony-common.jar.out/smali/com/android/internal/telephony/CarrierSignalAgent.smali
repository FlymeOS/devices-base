.class public Lcom/android/internal/telephony/CarrierSignalAgent;
.super Ljava/lang/Object;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierSignalAgent$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSignalAgent"


# instance fields
.field private final mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentToCarrierConfigKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$1;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    return-void
.end method

.method private getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, "receiverType":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 77
    return-object v6

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 81
    .local v3, "receiverNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 83
    const-string/jumbo v6, "carrier_config"

    .line 82
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 84
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    .line 85
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 88
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 92
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v7, "loadCarrierSignalReceiverNames: "

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_3
    return-object v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string/jumbo v0, "CarrierSignalAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "CarrierSignalAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method


# virtual methods
.method public hasRegisteredCarrierSignalReceivers()Z
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "intent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "intent":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const/4 v2, 0x1

    return v2

    .line 110
    .end local v0    # "intent":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public notifyCarrierSignalReceivers(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "receiverName":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 118
    const-string/jumbo v6, "Carrier receiver name is null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 119
    return v7

    .line 121
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 124
    .local v5, "ret":Z
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v4, v6

    .line 125
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 126
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 127
    const-string/jumbo v6, "Carrier receiver name could not be parsed"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 128
    return v7

    .line 130
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    const/high16 v9, 0x10000

    .line 132
    invoke-virtual {v3, p1, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Carrier signal receiver is configured, but not available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 151
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return v5

    .line 138
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "subscription"

    iget-object v10, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const/high16 v9, 0x10000000

    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send Intent to carrier signal receiver with action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v5, 0x1

    .line 124
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 155
    return-void
.end method
