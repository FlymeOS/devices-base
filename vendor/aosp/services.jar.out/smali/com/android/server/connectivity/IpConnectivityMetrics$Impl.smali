.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field static final CMD_DEFAULT:Ljava/lang/String; = "stats"

.field static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field static final CMD_LIST:Ljava/lang/String; = "list"

.field static final CMD_STATS:Ljava/lang/String; = "stats"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 1

    .prologue
    .line 264
    const-string/jumbo v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "android.permission.DUMP"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private enforceNetdEventListeningPermission()V
    .locals 6

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 277
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Uid %d has no permission to listen for netd events."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 278
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "IpConnectivityMetrics"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 247
    array-length v1, p3

    if-lez v1, :cond_0

    aget-object v0, p3, v2

    .line 248
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "flush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap2(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 251
    return-void

    .line 247
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "stats"

    goto :goto_0

    .line 248
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap3(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 254
    return-void

    .line 248
    :cond_2
    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap4(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap1(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap0(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0

    return v0
.end method

.method public registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/net/INetdEventCallback;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-get0(Lcom/android/server/connectivity/IpConnectivityMetrics;)Lcom/android/server/connectivity/NetdEventListenerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-get0(Lcom/android/server/connectivity/IpConnectivityMetrics;)Lcom/android/server/connectivity/NetdEventListenerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z

    move-result v0

    return v0
.end method

.method public unregisterNetdEventCallback()Z
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 295
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-get0(Lcom/android/server/connectivity/IpConnectivityMetrics;)Lcom/android/server/connectivity/NetdEventListenerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-get0(Lcom/android/server/connectivity/IpConnectivityMetrics;)Lcom/android/server/connectivity/NetdEventListenerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetdEventListenerService;->unregisterNetdEventCallback()Z

    move-result v0

    return v0
.end method
