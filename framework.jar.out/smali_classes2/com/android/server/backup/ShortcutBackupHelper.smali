.class public Lcom/android/server/backup/ShortcutBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "ShortcutBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_USER_FILE:Ljava/lang/String; = "shortcutuser.xml"

.field private static final TAG:Ljava/lang/String; = "ShortcutBackupAgent"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "shortcutuser.xml"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private getShortcutService()Landroid/content/pm/IShortcutService;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    .line 58
    const-string/jumbo v1, "shortcutuser.xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ShortcutBackupAgent"

    const-string/jumbo v2, "Restore failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, "ShortcutBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string/jumbo v1, "shortcutuser.xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ShortcutBackupAgent"

    const-string/jumbo v2, "Backup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 51
    :cond_0
    const-string/jumbo v1, "ShortcutBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
