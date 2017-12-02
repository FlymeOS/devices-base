.class Lcom/android/server/wifi/WifiNetworkHistory$1;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNetworkHistory;->writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkHistory;

.field final synthetic val$deletedEphemeralSSIDs:Ljava/util/Set;

.field final synthetic val$networks:Ljava/util/List;

.field final synthetic val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNetworkHistory;

    .prologue
    .line 142
    .local p2, "val$networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "val$scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p4, "val$deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$networks:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 22
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$networks:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 151
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v17

    .line 153
    .local v17, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v11, 0x0

    .line 154
    .local v11, "numlink":I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 155
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 158
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 159
    const-string/jumbo v7, ""

    .line 164
    .local v7, "disableTime":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "saving network history: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " gw: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 165
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 165
    const-string/jumbo v20, " Network Selection-status: "

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v20

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 167
    const-string/jumbo v20, " ephemeral="

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 167
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v20, v0

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 168
    const-string/jumbo v20, " choice:"

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 168
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v20

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 169
    const-string/jumbo v20, " link:"

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 170
    const-string/jumbo v20, " status:"

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 170
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v20, v0

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 171
    const-string/jumbo v20, " nid:"

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 171
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 172
    const-string/jumbo v20, " hasEverConnected: "

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 172
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v20

    .line 164
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logd(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiNetworkHistory;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 179
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    const-string/jumbo v19, "writeKnownNetworkHistory trying to write config with null SSID"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logv(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v7    # "disableTime":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Disable time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v19

    .line 162
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 161
    invoke-virtual/range {v19 .. v20}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "disableTime":Ljava/lang/String;
    goto/16 :goto_1

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "writeKnownNetworkHistory write config "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logv(Ljava/lang/String;)V

    .line 188
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CONFIG:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 191
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SSID:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 194
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CONFIG_BSSID:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    :goto_2
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 199
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "FQDN:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "PRIORITY:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 203
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ID:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 204
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 203
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 204
    const-string/jumbo v19, "\n"

    .line 203
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 205
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SELF_ADDED:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 206
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 206
    const-string/jumbo v19, "\n"

    .line 205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 207
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "DID_SELF_ADD:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 208
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 207
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 208
    const-string/jumbo v19, "\n"

    .line 207
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NO_INTERNET_ACCESS_REPORTS:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 210
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 209
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 210
    const-string/jumbo v19, "\n"

    .line 209
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 211
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "VALIDATED_INTERNET_ACCESS:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 212
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 211
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 212
    const-string/jumbo v19, "\n"

    .line 211
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 213
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NO_INTERNET_ACCESS_EXPECTED:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 214
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 213
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 214
    const-string/jumbo v19, "\n"

    .line 213
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 215
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "EPHEMERAL:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 216
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 215
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 216
    const-string/jumbo v19, "\n"

    .line 215
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 217
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "METERED_HINT:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 218
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 217
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 218
    const-string/jumbo v19, "\n"

    .line 217
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 219
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USE_EXTERNAL_SCORES:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 220
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 219
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 220
    const-string/jumbo v19, "\n"

    .line 219
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 221
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 222
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CREATION_TIME:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 224
    :cond_6
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 225
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UPDATE_TIME:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 227
    :cond_7
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 228
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "PEER_CONFIGURATION:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 229
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 228
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 229
    const-string/jumbo v19, "\n"

    .line 228
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 231
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SCORER_OVERRIDE:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 232
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 231
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 232
    const-string/jumbo v19, "\n"

    .line 231
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 233
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SCORER_OVERRIDE_AND_SWITCH:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 234
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 233
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 234
    const-string/jumbo v19, "\n"

    .line 233
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 235
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NUM_ASSOCIATION:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 236
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 235
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 236
    const-string/jumbo v19, "\n"

    .line 235
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 237
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CREATOR_UID_KEY:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 238
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 237
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 238
    const-string/jumbo v19, "\n"

    .line 237
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CONNECT_UID_KEY:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 240
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 239
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 240
    const-string/jumbo v19, "\n"

    .line 239
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 241
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UPDATE_UID:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 242
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 241
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 242
    const-string/jumbo v19, "\n"

    .line 241
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CREATOR_NAME:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 244
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 244
    const-string/jumbo v19, "\n"

    .line 243
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 245
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UPDATE_NAME:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    const-string/jumbo v19, "\n"

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 247
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USER_APPROVED:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 248
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 247
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 248
    const-string/jumbo v19, "\n"

    .line 247
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 249
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SHARED:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 251
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    .line 252
    sget-object v19, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 251
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "allowedKeyManagementString":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AUTH:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 254
    const-string/jumbo v19, "\n"

    .line 253
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 255
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NETWORK_SELECTION_STATUS:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 256
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v19

    .line 255
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 256
    const-string/jumbo v19, "\n"

    .line 255
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 257
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NETWORK_SELECTION_DISABLE_REASON:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 258
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v19

    .line 257
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 258
    const-string/jumbo v19, "\n"

    .line 257
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 261
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CHOICE:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 262
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CHOICE_TIME:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 263
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v20

    .line 262
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 263
    const-string/jumbo v19, "\n"

    .line 262
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 266
    :cond_9
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "writeKnownNetworkHistory write linked "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 268
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 267
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 271
    .local v8, "key":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "LINK:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 196
    .end local v4    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v18, "CONFIG_BSSID:  null\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    .restart local v4    # "allowedKeyManagementString":Ljava/lang/String;
    :cond_b
    iget-object v10, v5, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 276
    .local v10, "macAddress":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 277
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "DEFAULT_GW:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 280
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    move-object/from16 v18, v0

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    .line 281
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "scanDetail$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/ScanDetail;

    .line 283
    .local v13, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v12

    .line 284
    .local v12, "result":Landroid/net/wifi/ScanResult;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "BSSID:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 285
    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 284
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 285
    const-string/jumbo v19, "\n"

    .line 284
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 286
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "FREQ:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 287
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 286
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 287
    const-string/jumbo v19, "\n"

    .line 286
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 289
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "RSSI:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 290
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 289
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 290
    const-string/jumbo v19, "\n"

    .line 289
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v18, "/BSSID\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 295
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v14    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_d
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 296
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "FAILURE:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 298
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "HAS_EVER_CONNECTED:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 299
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    .line 298
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 299
    const-string/jumbo v19, "\n"

    .line 298
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v4    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "disableTime":Ljava/lang/String;
    .end local v10    # "macAddress":Ljava/lang/String;
    .end local v11    # "numlink":I
    .end local v17    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_10

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "ssid$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 307
    .local v15, "ssid":Ljava/lang/String;
    const-string/jumbo v18, "DELETED_EPHEMERAL"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_5

    .line 143
    .end local v15    # "ssid":Ljava/lang/String;
    .end local v16    # "ssid$iterator":Ljava/util/Iterator;
    :cond_10
    return-void
.end method
