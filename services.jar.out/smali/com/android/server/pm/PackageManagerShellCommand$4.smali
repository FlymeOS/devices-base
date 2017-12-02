.class Lcom/android/server/pm/PackageManagerShellCommand$4;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerShellCommand;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    .prologue
    const/4 v2, 0x1

    .line 845
    const-string/jumbo v0, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 847
    return v2

    .line 848
    :cond_0
    const-string/jumbo v0, "--brief"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 850
    return v2

    .line 851
    :cond_1
    const-string/jumbo v0, "--components"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 853
    return v2

    .line 855
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
