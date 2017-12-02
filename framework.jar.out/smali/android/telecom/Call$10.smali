.class Landroid/telecom/Call$10;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;
    .param p4, "val$event"    # Ljava/lang/String;
    .param p5, "val$extras"    # Landroid/os/Bundle;

    .prologue
    .line 1633
    iput-object p1, p0, Landroid/telecom/Call$10;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$10;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$10;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$10;->val$event:Ljava/lang/String;

    iput-object p5, p0, Landroid/telecom/Call$10;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/telecom/Call$10;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$10;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$10;->val$event:Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Call$10;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/Call$Callback;->onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1635
    return-void
.end method
