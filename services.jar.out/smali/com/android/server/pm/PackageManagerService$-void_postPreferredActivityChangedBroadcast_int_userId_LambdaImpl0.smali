.class final synthetic Lcom/android/server/pm/PackageManagerService$-void_postPreferredActivityChangedBroadcast_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_postPreferredActivityChangedBroadcast_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$-void_postPreferredActivityChangedBroadcast_int_userId_LambdaImpl0;->val$userId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$-void_postPreferredActivityChangedBroadcast_int_userId_LambdaImpl0;->val$userId:I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-com_android_server_pm_PackageManagerService_lambda$1(I)V

    return-void
.end method
