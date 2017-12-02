.class public Landroid/net/wifi/nan/WifiNanEventListener;
.super Ljava/lang/Object;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/WifiNanEventListener$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final LISTEN_CONFIG_COMPLETED:I = 0x1

.field public static final LISTEN_CONFIG_FAILED:I = 0x2

.field public static final LISTEN_IDENTITY_CHANGED:I = 0x8

.field public static final LISTEN_NAN_DOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiNanEventListener"

.field private static final VDBG:Z


# instance fields
.field public callback:Landroid/net/wifi/nan/IWifiNanEventListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/nan/WifiNanEventListener;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/net/wifi/nan/WifiNanEventListener$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/nan/WifiNanEventListener$1;-><init>(Landroid/net/wifi/nan/WifiNanEventListener;)V

    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener;->callback:Landroid/net/wifi/nan/IWifiNanEventListener;

    .line 88
    new-instance v0, Landroid/net/wifi/nan/WifiNanEventListener$2;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nan/WifiNanEventListener$2;-><init>(Landroid/net/wifi/nan/WifiNanEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method


# virtual methods
.method public onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 2
    .param p1, "completedConfig"    # Landroid/net/wifi/nan/ConfigRequest;

    .prologue
    .line 122
    const-string/jumbo v0, "WifiNanEventListener"

    const-string/jumbo v1, "onConfigCompleted: called in stub - override if interested or disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V
    .locals 2
    .param p1, "failedConfig"    # Landroid/net/wifi/nan/ConfigRequest;
    .param p2, "reason"    # I

    .prologue
    .line 134
    const-string/jumbo v0, "WifiNanEventListener"

    const-string/jumbo v1, "onConfigFailed: called in stub - override if interested or disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onIdentityChanged()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onNanDown(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 146
    const-string/jumbo v0, "WifiNanEventListener"

    const-string/jumbo v1, "onNanDown: called in stub - override if interested or disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
