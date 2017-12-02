.class final synthetic Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService$ClientRestrictionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_binderDied__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$changedCode:I

.field private synthetic val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;

    iput p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$changedCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;

    iget v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$changedCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->-com_android_server_AppOpsService$ClientRestrictionState_lambda$1(I)V

    return-void
.end method
