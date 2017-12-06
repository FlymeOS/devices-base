.class final Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final TOTAL_BYTES:Ljava/lang/String; = "totalBytes"

.field private static final TRAFFIC_DIALOG_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.TipActivity"

.field private static final TRAFFIC_DIALOG_PACKAGES_NAME:Ljava/lang/String; = "com.meizu.safe"

.field private static final TRAFFIC_MAINUI_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.MainActivity"

.field private static mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3904
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3907
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3909
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3910
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3911
    return-object v0
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"    # J

    .prologue
    .line 3917
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3918
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3919
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3920
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3921
    const-string/jumbo v1, "totalBytes"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3922
    const-string/jumbo v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3923
    return-object v0
.end method

.method static buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3928
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3931
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3933
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3934
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3935
    return-object v0
.end method

.method private static flymeChangeUidRules(II)I
    .locals 1
    .param p0, "uidRules"    # I
    .param p1, "uidPolicy"    # I

    .prologue
    .line 4000
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_0

    .line 4001
    or-int/lit16 p0, p0, 0x800

    .line 4005
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 4006
    or-int/lit16 p0, p0, 0x400

    .line 4008
    :cond_1
    return p0
.end method

.method static flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I
    .locals 4
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "newUidRules"    # I

    .prologue
    const/4 v3, 0x0

    .line 3984
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3986
    .local v1, "uidPolicy":I
    invoke-static {p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->flymeChangeUidRules(II)I

    move-result p2

    .line 3987
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeInvokeMethodIsUidForegroundOnRestrictPowerUL(I)Z

    move-result v0

    .line 3989
    .local v0, "isForeground":Z
    if-nez v0, :cond_0

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 3990
    or-int/lit16 p2, p2, 0x200

    .line 3992
    :cond_0
    if-nez v0, :cond_1

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_1

    .line 3993
    or-int/lit16 p2, p2, 0x100

    .line 3996
    :cond_1
    return p2
.end method

.method static updateFlymeRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I
    .locals 10
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "newUidRules"    # I

    .prologue
    const/4 v9, 0x0

    .line 3939
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3940
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeInvokeMethodIsUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v3

    .line 3942
    .local v3, "isForeground":Z
    invoke-static {p2, v7}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->flymeChangeUidRules(II)I

    move-result p2

    .line 3945
    if-nez v3, :cond_0

    and-int/lit16 v8, v7, 0x200

    if-eqz v8, :cond_0

    .line 3946
    or-int/lit16 p2, p2, 0x200

    .line 3948
    :cond_0
    if-nez v3, :cond_1

    and-int/lit16 v8, v7, 0x100

    if-eqz v8, :cond_1

    .line 3949
    or-int/lit16 p2, p2, 0x100

    .line 3951
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 3952
    .local v4, "oldUidRules":I
    and-int/lit16 v8, v4, 0x200

    .line 3953
    and-int/lit16 v9, p2, 0x200

    .line 3952
    xor-int/2addr v8, v9

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    .line 3954
    .local v5, "rule3gBackgroundChanged":Z
    :goto_0
    and-int/lit16 v8, v4, 0x100

    .line 3955
    and-int/lit16 v9, p2, 0x100

    .line 3954
    xor-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v6, 0x1

    .line 3957
    .local v6, "ruleWifiBackgroundChanged":Z
    :goto_1
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v8, :cond_2

    .line 3958
    const-string/jumbo v8, "networkmanagement_service_flyme"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/INetworkManagementServiceFlyme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;

    move-result-object v8

    sput-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    .line 3960
    :cond_2
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v8, :cond_5

    .line 3961
    return p2

    .line 3952
    .end local v5    # "rule3gBackgroundChanged":Z
    .end local v6    # "ruleWifiBackgroundChanged":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "rule3gBackgroundChanged":Z
    goto :goto_0

    .line 3954
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "ruleWifiBackgroundChanged":Z
    goto :goto_1

    .line 3963
    :cond_5
    if-eqz v5, :cond_6

    .line 3964
    and-int/lit16 v8, p2, 0x200

    if-nez v8, :cond_8

    const/4 v0, 0x1

    .line 3966
    .local v0, "allow":Z
    :goto_2
    :try_start_0
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v9, 0x0

    invoke-interface {v8, p1, v9, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3971
    .end local v0    # "allow":Z
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 3972
    and-int/lit16 v8, p2, 0x100

    if-nez v8, :cond_9

    const/4 v0, 0x1

    .line 3974
    .restart local v0    # "allow":Z
    :goto_4
    :try_start_1
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3980
    .end local v0    # "allow":Z
    :cond_7
    :goto_5
    return p2

    .line 3964
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_2

    .line 3972
    .end local v0    # "allow":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_4

    .line 3975
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    goto :goto_5

    .line 3976
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 3967
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 3968
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method static updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 11
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidPolicy"    # I

    .prologue
    .line 4013
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4

    .line 4014
    .local v4, "lastUidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v7

    .line 4017
    .local v7, "uidForeground":Z
    const/16 v8, 0x20

    .line 4018
    .local v8, "uidRules":I
    if-nez v7, :cond_0

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_0

    .line 4020
    const/16 v8, 0x24

    .line 4022
    :cond_0
    if-nez v7, :cond_1

    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_1

    .line 4024
    or-int/lit8 v8, v8, 0x4

    .line 4027
    :cond_1
    and-int/lit16 v9, p2, 0x800

    if-eqz v9, :cond_2

    .line 4028
    or-int/lit16 v8, v8, 0x800

    .line 4031
    :cond_2
    and-int/lit16 v9, p2, 0x400

    if-eqz v9, :cond_3

    .line 4032
    or-int/lit16 v8, v8, 0x400

    .line 4039
    :cond_3
    const/4 v5, 0x0

    .line 4040
    .local v5, "policy3gChanged":Z
    const/4 v6, 0x0

    .line 4041
    .local v6, "policyWifiChanged":Z
    and-int/lit16 v9, v4, 0x800

    and-int/lit16 v10, p2, 0x800

    xor-int/2addr v9, v10

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 4042
    :goto_0
    and-int/lit16 v9, v4, 0x400

    and-int/lit16 v10, p2, 0x400

    xor-int/2addr v9, v10

    if-eqz v9, :cond_6

    const/4 v6, 0x1

    .line 4044
    :goto_1
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v9, :cond_4

    .line 4045
    const-string/jumbo v9, "networkmanagement_service_flyme"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementServiceFlyme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;

    move-result-object v9

    sput-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    .line 4047
    :cond_4
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v9, :cond_7

    .line 4048
    return-void

    .line 4041
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 4042
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 4051
    :cond_7
    if-eqz v5, :cond_8

    .line 4052
    and-int/lit16 v9, v8, 0x800

    if-nez v9, :cond_a

    const/4 v0, 0x1

    .line 4056
    .local v0, "allowNet3g":Z
    :goto_2
    :try_start_0
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4062
    .end local v0    # "allowNet3g":Z
    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    .line 4063
    and-int/lit16 v9, v8, 0x400

    if-nez v9, :cond_b

    const/4 v1, 0x1

    .line 4067
    .local v1, "allowNetWifi":Z
    :goto_4
    :try_start_1
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v10, 0x1

    invoke-interface {v9, p1, v10, v1}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4012
    .end local v1    # "allowNetWifi":Z
    :cond_9
    :goto_5
    return-void

    .line 4052
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "allowNet3g":Z
    goto :goto_2

    .line 4063
    .end local v0    # "allowNet3g":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "allowNetWifi":Z
    goto :goto_4

    .line 4069
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalStateException;
    goto :goto_5

    .line 4070
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 4058
    .end local v1    # "allowNetWifi":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "allowNet3g":Z
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 4059
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
