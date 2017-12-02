.class Lcom/android/server/BatteryService$Shell;
.super Landroid/os/ShellCommand;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/BatteryService;->onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 652
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/BatteryService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 650
    return-void
.end method
