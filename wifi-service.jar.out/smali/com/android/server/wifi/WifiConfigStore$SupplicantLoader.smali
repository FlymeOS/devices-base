.class Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantLoader"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "netId"    # I

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput p2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->mNetId:I

    .line 1328
    return-void
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1349
    const-string/jumbo v0, "eap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1349
    :cond_1
    const-string/jumbo v0, "engine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public loadValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->mNetId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    :cond_0
    return-object v0

    .line 1341
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
