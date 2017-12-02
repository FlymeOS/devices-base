.class Landroid/os/UpdateEngine$1$2;
.super Ljava/lang/Object;
.source "UpdateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine$1;->onPayloadApplicationComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/UpdateEngine$1;

.field final synthetic val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/UpdateEngine$1;
    .param p2, "val$callback"    # Landroid/os/UpdateEngineCallback;
    .param p3, "val$errorCode"    # I

    .prologue
    .line 109
    iput-object p1, p0, Landroid/os/UpdateEngine$1$2;->this$1:Landroid/os/UpdateEngine$1;

    iput-object p2, p0, Landroid/os/UpdateEngine$1$2;->val$callback:Landroid/os/UpdateEngineCallback;

    iput p3, p0, Landroid/os/UpdateEngine$1$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/UpdateEngine$1$2;->val$callback:Landroid/os/UpdateEngineCallback;

    iget v1, p0, Landroid/os/UpdateEngine$1$2;->val$errorCode:I

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    .line 111
    return-void
.end method
