.class public Lcom/android/server/wifi/BackupManagerProxy;
.super Ljava/lang/Object;
.source "BackupManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 30
    return-void
.end method
