.class final synthetic Landroid/net/ip/IpManager$2$-void_logMsg_java_lang_String_msg_LambdaImpl0;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_logMsg_java_lang_String_msg_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$msg:Ljava/lang/String;

.field private synthetic val$this:Landroid/net/ip/IpManager$2;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpManager$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/IpManager$2$-void_logMsg_java_lang_String_msg_LambdaImpl0;->val$this:Landroid/net/ip/IpManager$2;

    iput-object p2, p0, Landroid/net/ip/IpManager$2$-void_logMsg_java_lang_String_msg_LambdaImpl0;->val$msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager$2$-void_logMsg_java_lang_String_msg_LambdaImpl0;->val$this:Landroid/net/ip/IpManager$2;

    iget-object v1, p0, Landroid/net/ip/IpManager$2$-void_logMsg_java_lang_String_msg_LambdaImpl0;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$2;->-android_net_ip_IpManager$2_lambda$1(Ljava/lang/String;)V

    return-void
.end method
