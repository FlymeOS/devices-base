.class final Lcom/android/server/wifi/WifiConfigManager$1;
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
    .line 1058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V

    return-void
.end method


# virtual methods
.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1061
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eq v0, v1, :cond_0

    .line 1062
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v0, v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 1064
    :cond_0
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
