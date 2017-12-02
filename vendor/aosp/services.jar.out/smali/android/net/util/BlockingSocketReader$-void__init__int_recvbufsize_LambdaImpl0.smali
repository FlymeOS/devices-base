.class final synthetic Landroid/net/util/BlockingSocketReader$-void__init__int_recvbufsize_LambdaImpl0;
.super Ljava/lang/Object;
.source "BlockingSocketReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/BlockingSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__int_recvbufsize_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Landroid/net/util/BlockingSocketReader;


# direct methods
.method public synthetic constructor <init>(Landroid/net/util/BlockingSocketReader;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/BlockingSocketReader$-void__init__int_recvbufsize_LambdaImpl0;->val$this:Landroid/net/util/BlockingSocketReader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader$-void__init__int_recvbufsize_LambdaImpl0;->val$this:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->-android_net_util_BlockingSocketReader_lambda$1()V

    return-void
.end method
