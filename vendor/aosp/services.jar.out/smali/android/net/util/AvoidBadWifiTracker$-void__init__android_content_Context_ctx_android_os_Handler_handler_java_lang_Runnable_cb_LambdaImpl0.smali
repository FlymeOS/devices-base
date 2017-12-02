.class final synthetic Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;
.super Ljava/lang/Object;
.source "AvoidBadWifiTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/AvoidBadWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$cb:Ljava/lang/Runnable;

.field private synthetic val$this:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method public synthetic constructor <init>(Landroid/net/util/AvoidBadWifiTracker;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;->val$this:Landroid/net/util/AvoidBadWifiTracker;

    iput-object p2, p0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;->val$cb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;->val$this:Landroid/net/util/AvoidBadWifiTracker;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;->val$cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/net/util/AvoidBadWifiTracker;->-android_net_util_AvoidBadWifiTracker_lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method
