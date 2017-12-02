.class Landroid/app/trust/TrustManager$2;
.super Landroid/app/trust/ITrustListener$Stub;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;

.field final synthetic val$trustListener:Landroid/app/trust/TrustManager$TrustListener;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;
    .param p2, "val$trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    iput-object p2, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-direct {p0}, Landroid/app/trust/ITrustListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustChanged(ZII)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    iget-object v3, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v3}, Landroid/app/trust/TrustManager;->-get0(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_0

    move v1, v2

    .line 120
    :cond_0
    iget-object v4, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    .line 119
    invoke-virtual {v3, v2, v1, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "m":Landroid/os/Message;
    if-eqz p3, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "initiatedByUser"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 4
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->-get0(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    iget-object v2, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    .line 129
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
