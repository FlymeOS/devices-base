.class public Lcom/android/server/wifi/WifiNative$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# instance fields
.field public auth_bit_field:B

.field public flags:B

.field public networkId:I

.field public priority:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1710
    if-ne p0, p1, :cond_0

    .line 1711
    return v1

    .line 1712
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$PnoNetwork;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1713
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 1715
    check-cast v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 1716
    .local v0, "other":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    iget v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    if-ne v3, v4, :cond_4

    .line 1717
    iget v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->priority:I

    iget v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->priority:I

    if-ne v3, v4, :cond_4

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    iget-byte v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    if-ne v3, v4, :cond_4

    .line 1718
    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    iget-byte v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    if-ne v3, v4, :cond_3

    .line 1716
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 1718
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1716
    goto :goto_0
.end method
