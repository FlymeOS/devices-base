.class Landroid/hardware/location/ContextHubManager$1$1;
.super Ljava/lang/Object;
.source "ContextHubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager$1;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/location/ContextHubManager$1;

.field final synthetic val$callback:Landroid/hardware/location/ContextHubManager$Callback;

.field final synthetic val$hubId:I

.field final synthetic val$message:Landroid/hardware/location/ContextHubMessage;

.field final synthetic val$nanoAppId:I


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager$1;Landroid/hardware/location/ContextHubManager$Callback;IILandroid/hardware/location/ContextHubMessage;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/location/ContextHubManager$1;
    .param p2, "val$callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .param p3, "val$hubId"    # I
    .param p4, "val$nanoAppId"    # I
    .param p5, "val$message"    # Landroid/hardware/location/ContextHubMessage;

    .prologue
    .line 371
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$1$1;->this$1:Landroid/hardware/location/ContextHubManager$1;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$callback:Landroid/hardware/location/ContextHubManager$Callback;

    iput p3, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$hubId:I

    iput p4, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$nanoAppId:I

    iput-object p5, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$message:Landroid/hardware/location/ContextHubMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$callback:Landroid/hardware/location/ContextHubManager$Callback;

    iget v1, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$hubId:I

    iget v2, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$nanoAppId:I

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$1$1;->val$message:Landroid/hardware/location/ContextHubMessage;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/location/ContextHubManager$Callback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V

    .line 373
    return-void
.end method
