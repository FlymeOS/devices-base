.class Lcom/android/server/accessibility/KeyEventDispatcher$Callback;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/KeyEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/KeyEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/KeyEventDispatcher;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/KeyEventDispatcher;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 285
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v5, :cond_0

    .line 286
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 289
    .local v2, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-static {v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->-get0(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 290
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-static {v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->-get1(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listForService$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    .local v0, "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;->this$0:Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/KeyEventDispatcher;->-wrap0(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_2
    monitor-exit v4

    .line 298
    return v5

    .line 289
    .end local v1    # "listForService$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
