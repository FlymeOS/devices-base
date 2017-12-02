.class Landroid/media/browse/MediaBrowser$7;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$list:Landroid/content/pm/ParceledListSlice;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "val$callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "val$parentId"    # Ljava/lang/String;
    .param p4, "val$options"    # Landroid/os/Bundle;
    .param p5, "val$list"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 631
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$7;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$7;->val$list:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 636
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string/jumbo v5, "onLoadChildren"

    invoke-static {v3, v4, v5}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    return-void

    .line 645
    :cond_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get9(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$Subscription;

    .line 646
    .local v1, "subscription":Landroid/media/browse/MediaBrowser$Subscription;
    if-eqz v1, :cond_5

    .line 648
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/media/browse/MediaBrowser$Subscription;->getCallback(Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    move-result-object v2

    .line 649
    .local v2, "subscriptionCallback":Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    if-eqz v2, :cond_5

    .line 650
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$list:Landroid/content/pm/ParceledListSlice;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 651
    :goto_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$options:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 652
    if-nez v0, :cond_2

    .line 653
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 664
    :goto_1
    return-void

    .line 650
    :cond_1
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$list:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    goto :goto_0

    .line 655
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_2
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 658
    :cond_3
    if-nez v0, :cond_4

    .line 659
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$7;->val$options:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 661
    :cond_4
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$7;->val$options:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1

    .line 633
    .end local v2    # "subscriptionCallback":Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    :cond_5
    return-void
.end method
