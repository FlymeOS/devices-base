.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    .line 28
    return-void
.end method

.method private runAddTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->addTile(Landroid/content/ComponentName;)V

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method private runClickTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->clickTile(Landroid/content/ComponentName;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method private runCollapse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method private runExpandNotifications()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method private runExpandSettings()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method private runRemoveTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V

    .line 68
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 38
    :cond_0
    :try_start_0
    const-string/jumbo v2, "expand-notifications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result v2

    return v2

    .line 38
    :cond_1
    const-string/jumbo v2, "expand-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result v2

    return v2

    .line 38
    :cond_2
    const-string/jumbo v2, "collapse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result v2

    return v2

    .line 38
    :cond_3
    const-string/jumbo v2, "add-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result v2

    return v2

    .line 38
    :cond_4
    const-string/jumbo v2, "remove-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result v2

    return v2

    .line 38
    :cond_5
    const-string/jumbo v2, "click-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result v2

    return v2

    .line 52
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 56
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const/4 v2, -0x1

    return v2
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 94
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "  expand-notifications"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "    Open the notifications panel."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "  expand-settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "    Open the notifications panel and expand quick settings if present."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "  collapse"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "    Collapse the notifications and settings panel."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "  add-tile COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "    Add a TileService of the specified component"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "  remove-tile COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "    Remove a TileService of the specified component"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "  click-tile COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v1, "    Click on a TileService of the specified component"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method
