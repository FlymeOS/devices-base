.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalClientInfo"
.end annotation


# static fields
.field private static final INTERNAL_CLIENT_HANDLER:I


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "requesterUid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 2037
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    .line 2036
    return-void
.end method


# virtual methods
.method public reportEvent(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2042
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2043
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2044
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 2045
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 2046
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2048
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :goto_0
    return-void

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendRequestToClientHandler(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    const/4 v0, 0x0

    .line 2079
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    .line 2078
    return-void
.end method

.method public sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2060
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2061
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2062
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 2063
    if-eqz p2, :cond_0

    .line 2064
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2065
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2066
    const-string/jumbo v2, "WorkSource"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2067
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2069
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2070
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->getUid()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->sendingUid:I

    .line 2071
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2059
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2084
    const-string/jumbo v0, "InternalClientInfo[]"

    return-object v0
.end method
