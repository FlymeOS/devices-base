.class final Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method private constructor <init>(Landroid/view/BatchedInputEventReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/BatchedInputEventReceiver;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/BatchedInputEventReceiver;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    iget-object v1, v1, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/BatchedInputEventReceiver;->doConsumeBatchedInput(J)V

    .line 77
    return-void
.end method
