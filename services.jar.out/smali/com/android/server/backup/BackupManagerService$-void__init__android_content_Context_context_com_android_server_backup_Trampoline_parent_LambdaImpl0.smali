.class final synthetic Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;->val$this:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;->val$this:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->-com_android_server_backup_BackupManagerService_lambda$1()V

    return-void
.end method
