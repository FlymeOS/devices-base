.class Lcom/android/server/retaildemo/RetailDemoModeService$5;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;->onSwitchUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "val$userId"    # I

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iput p2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/PreloadAppsInstaller;

    move-result-object v0

    iget v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->installApps(I)V

    .line 622
    return-void
.end method
