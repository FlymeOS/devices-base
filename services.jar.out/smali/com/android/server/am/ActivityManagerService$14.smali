.class Lcom/android/server/am/ActivityManagerService$14;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$host:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$host"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 11363
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$14;->val$host:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 11366
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$14;->val$host:Lcom/android/server/am/ProcessRecord;

    .line 11367
    const-string/jumbo v5, "ContentProvider not responding"

    .line 11366
    const/4 v4, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 11365
    return-void
.end method
