.class Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field private final observersLock:Ljava/lang/Object;

.field public final pid:I

.field final synthetic this$1:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field private final userHandle:I


# direct methods
.method static synthetic -get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "o"    # Landroid/database/IContentObserver;
    .param p3, "n"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "_uid"    # I
    .param p6, "_pid"    # I
    .param p7, "_userHandle"    # I

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$1:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 1191
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 1192
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1193
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 1194
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 1195
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$1:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1204
    return-void

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "pidCounts"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v0, 0x0

    .line 1212
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p6, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, ": pid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " user="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " target="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1217
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    return-void
.end method
