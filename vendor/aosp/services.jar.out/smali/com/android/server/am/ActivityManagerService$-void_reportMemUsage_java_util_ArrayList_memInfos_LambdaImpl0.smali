.class final synthetic Lcom/android/server/am/ActivityManagerService$-void_reportMemUsage_java_util_ArrayList_memInfos_LambdaImpl0;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_reportMemUsage_java_util_ArrayList_memInfos_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-com_android_server_am_ActivityManagerService_lambda$2(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    return v0
.end method
