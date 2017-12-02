.class final Lcom/android/server/wifi/WifiConfigManager$2;
.super Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V

    return-void
.end method


# virtual methods
.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1095
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v0

    .line 1097
    .local v0, "isConfigALastSeen":Z
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v1

    .line 1098
    .local v1, "isConfigBLastSeen":Z
    if-eq v0, v1, :cond_0

    .line 1099
    invoke-static {v1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v2

    return v2

    .line 1101
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v2, v2

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    return v2
.end method
