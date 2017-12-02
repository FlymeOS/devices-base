.class Landroid/os/UpdateEngine$1$1;
.super Ljava/lang/Object;
.source "UpdateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine$1;->onStatusUpdate(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/UpdateEngine$1;

.field final synthetic val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic val$percent:F

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;IF)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/UpdateEngine$1;
    .param p2, "val$callback"    # Landroid/os/UpdateEngineCallback;
    .param p3, "val$status"    # I
    .param p4, "val$percent"    # F

    .prologue
    .line 95
    iput-object p1, p0, Landroid/os/UpdateEngine$1$1;->this$1:Landroid/os/UpdateEngine$1;

    iput-object p2, p0, Landroid/os/UpdateEngine$1$1;->val$callback:Landroid/os/UpdateEngineCallback;

    iput p3, p0, Landroid/os/UpdateEngine$1$1;->val$status:I

    iput p4, p0, Landroid/os/UpdateEngine$1$1;->val$percent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Landroid/os/UpdateEngine$1$1;->val$callback:Landroid/os/UpdateEngineCallback;

    iget v1, p0, Landroid/os/UpdateEngine$1$1;->val$status:I

    iget v2, p0, Landroid/os/UpdateEngine$1$1;->val$percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    .line 97
    return-void
.end method
