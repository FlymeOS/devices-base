.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;
.super Landroid/os/Handler;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
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
    .line 128
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0, v3}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-set0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get4(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get4(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBlurAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    .line 140
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get2(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    .line 145
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2}, Lcom/android/server/policy/MzCustomCircleButton;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get1(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    .line 147
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/server/policy/MzCustomCircleButton;

    invoke-virtual {v2}, Lcom/android/server/policy/MzCustomCircleButton;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    .line 146
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get5(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
