.class Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$userId"    # I

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 979
    return-void
.end method
