.class Landroid/widget/ViewFlipper$2;
.super Ljava/lang/Object;
.source "ViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 211
    iput-object p1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v0}, Landroid/widget/ViewFlipper;->-get2(Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 216
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1}, Landroid/widget/ViewFlipper;->-get1(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v2}, Landroid/widget/ViewFlipper;->-get0(Landroid/widget/ViewFlipper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_0
    return-void
.end method
