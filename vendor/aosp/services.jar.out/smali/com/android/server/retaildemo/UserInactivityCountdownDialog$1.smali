.class Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;
.super Ljava/lang/Object;
.source "UserInactivityCountdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
    .param p2, "val$messageView"    # Landroid/widget/TextView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    iput-object p2, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 74
    iget-object v7, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    new-instance v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;

    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-static {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-static {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get2(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->val$messageView:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;-><init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;JJLandroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-set0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 73
    return-void
.end method
