.class Lcom/android/internal/os/storage/ExternalStorageFormatter$1;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "unmounted"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 60
    :cond_0
    return-void
.end method
