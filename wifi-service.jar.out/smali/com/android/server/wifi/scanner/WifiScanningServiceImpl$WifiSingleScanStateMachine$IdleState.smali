.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->tryToStartNewScan()V

    .line 601
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method
