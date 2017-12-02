.class final synthetic Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DockedStackDividerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$adjustedForDivider:Z

.field private synthetic val$adjustedForIme:Z

.field private synthetic val$this:Lcom/android/server/wm/DockedStackDividerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$this:Lcom/android/server/wm/DockedStackDividerController;

    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$adjustedForIme:Z

    iput-boolean p3, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$adjustedForDivider:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$this:Lcom/android/server/wm/DockedStackDividerController;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$adjustedForIme:Z

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;->val$adjustedForDivider:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->-com_android_server_wm_DockedStackDividerController_lambda$1(ZZ)V

    return-void
.end method
