.class Lcom/android/server/wifi/WifiMonitor$1;
.super Ljava/util/HashMap;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$1;->this$0:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 797
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 798
    return-object v0

    .line 800
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method
