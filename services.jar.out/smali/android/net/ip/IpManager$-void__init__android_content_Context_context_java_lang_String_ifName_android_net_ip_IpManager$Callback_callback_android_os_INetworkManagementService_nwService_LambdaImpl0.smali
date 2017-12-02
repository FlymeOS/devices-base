.class final synthetic Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Landroid/net/ip/IpManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;->val$this:Landroid/net/ip/IpManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;->val$this:Landroid/net/ip/IpManager;

    invoke-virtual {v0}, Landroid/net/ip/IpManager;->-android_net_ip_IpManager_lambda$2()V

    return-void
.end method
