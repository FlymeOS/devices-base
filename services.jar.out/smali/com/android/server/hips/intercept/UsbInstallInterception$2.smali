.class Lcom/android/server/hips/intercept/UsbInstallInterception$2;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/UsbInstallInterception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x0

    .line 119
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 121
    .local v2, "msgSendToServer":Landroid/os/Message;
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get5(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "dataToServer":Landroid/os/Bundle;
    const-string/jumbo v3, "apkPath"

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get3(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 126
    :try_start_0
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 114
    return-void
.end method
