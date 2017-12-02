.class final synthetic Lcom/android/server/connectivity/IpConnectivityMetrics$-void__clinit___LambdaImpl0;
.super Ljava/lang/Object;
.source "IpConnectivityMetrics.java"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__clinit___LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/Context;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-com_android_server_connectivity_IpConnectivityMetrics_lambda$1(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
