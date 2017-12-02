.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/LockdownVpnTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 109
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    .line 97
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 98
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 99
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "configIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 94
    return-void
.end method

.method private clearSourceRulesLocked()V
    .locals 7

    .prologue
    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 285
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 288
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 289
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 293
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 295
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private handleStateChangedLocked()V
    .locals 24

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 123
    .local v12, "egressInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 125
    .local v13, "egressProp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    .line 126
    .local v19, "vpnInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v18

    .line 129
    .local v18, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v12, :cond_2

    .line 130
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 131
    :goto_0
    if-eqz v13, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v9, 0x0

    .line 134
    .local v9, "egressChanged":Z
    :goto_1
    if-nez v12, :cond_5

    .line 135
    const/4 v15, 0x0

    .line 136
    :goto_2
    if-nez v13, :cond_6

    .line 137
    const/4 v11, 0x0

    .line 138
    :goto_3
    const-string/jumbo v20, "LockdownVpnTracker"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "handleStateChanged: egress="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 139
    const-string/jumbo v22, " "

    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 139
    const-string/jumbo v22, "->"

    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v10, :cond_0

    if-eqz v9, :cond_1

    .line 142
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 143
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 146
    :cond_1
    if-eqz v10, :cond_7

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 148
    return-void

    .line 129
    .end local v9    # "egressChanged":Z
    :cond_2
    const/4 v10, 0x1

    .local v10, "egressDisconnected":Z
    goto :goto_0

    .line 131
    .end local v10    # "egressDisconnected":Z
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "egressChanged":Z
    goto :goto_1

    .line 132
    .end local v9    # "egressChanged":Z
    :cond_4
    const/4 v9, 0x1

    .restart local v9    # "egressChanged":Z
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "egressTypeName":Ljava/lang/String;
    goto :goto_2

    .line 137
    .end local v15    # "egressTypeName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .local v11, "egressIface":Ljava/lang/String;
    goto :goto_3

    .line 151
    .end local v11    # "egressIface":Ljava/lang/String;
    :cond_7
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    .line 152
    .local v14, "egressType":I
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 153
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 156
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 157
    const v20, 0x104048f

    const v21, 0x10807d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 120
    :cond_9
    :goto_4
    return-void

    .line 159
    :cond_a
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 180
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_9

    if-eqz v18, :cond_9

    .line 181
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 182
    .local v16, "iface":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v17, v0

    .line 184
    .local v17, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 184
    if-eqz v20, :cond_e

    .line 186
    return-void

    .line 160
    .end local v16    # "iface":Ljava/lang/String;
    .end local v17    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 161
    const-string/jumbo v20, "LockdownVpnTracker"

    const-string/jumbo v21, "Active network connected; starting VPN"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 163
    const v20, 0x104048c

    const v21, 0x10807d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 165
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Ljava/lang/IllegalStateException;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 172
    const-string/jumbo v20, "LockdownVpnTracker"

    const-string/jumbo v21, "Failed to start VPN"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const v20, 0x104048f

    const v21, 0x10807d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_4

    .line 176
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_d
    const-string/jumbo v20, "LockdownVpnTracker"

    const-string/jumbo v21, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const v20, 0x104048f

    const v21, 0x10807d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_4

    .line 189
    .restart local v16    # "iface":Ljava/lang/String;
    .restart local v17    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_e
    const-string/jumbo v20, "LockdownVpnTracker"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "VPN connected using iface="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 190
    const-string/jumbo v22, ", sourceAddr="

    .line 189
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 189
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {v14}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 192
    const v20, 0x104048d

    const v21, 0x10807d3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 195
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 198
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "addr$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 199
    .local v4, "addr":Landroid/net/LinkAddress;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 208
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "addr$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v7

    .line 209
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string/jumbo v21, "Problem setting firewall rules"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 202
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v5    # "addr$iterator":Ljava/util/Iterator;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-interface/range {v20 .. v23}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 205
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 206
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 207
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    new-instance v6, Landroid/net/NetworkInfo;

    invoke-direct {v6, v12}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 213
    .local v6, "clone":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_4
.end method

.method private hideNotification()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "LockdownVpnTracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method private initLocked()V
    .locals 6

    .prologue
    .line 225
    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "initLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 229
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "resetFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 235
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 236
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 224
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Problem setting firewall rules"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 303
    return-void
.end method

.method private showNotification(II)V
    .locals 5
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 333
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const-wide/16 v2, 0x0

    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x1040490

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 339
    const/4 v2, -0x1

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 340
    const/4 v2, 0x1

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x1040493

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 341
    const v4, 0x10803f6

    .line 333
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 344
    const v3, 0x106005b

    .line 343
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 346
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string/jumbo v2, "LockdownVpnTracker"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 332
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 251
    const-string/jumbo v1, "LockdownVpnTracker"

    const-string/jumbo v2, "shutdownLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 254
    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 256
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 259
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1194

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 260
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6a5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 265
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 267
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 250
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Problem setting firewall rules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 328
    .local v0, "vpnInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0    # "vpnInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 218
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onNetworkInfoChanged()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 310
    return-void

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 316
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 272
    const-string/jumbo v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 277
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 271
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 244
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
