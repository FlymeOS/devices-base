.class Lcom/android/server/NativeDaemonConnector$1;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NativeDaemonConnector;->waitForCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NativeDaemonConnector;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$1;->this$0:Lcom/android/server/NativeDaemonConnector;

    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 360
    return-void
.end method
