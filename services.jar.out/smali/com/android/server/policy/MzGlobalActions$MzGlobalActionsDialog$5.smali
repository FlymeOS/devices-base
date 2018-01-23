.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;)V

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap1(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method
