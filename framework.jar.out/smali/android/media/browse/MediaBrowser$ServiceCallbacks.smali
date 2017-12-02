.class Landroid/media/browse/MediaBrowser$ServiceCallbacks;
.super Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacks"
.end annotation


# instance fields
.field private mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/browse/MediaBrowser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 1
    .param p1, "mediaBrowser"    # Landroid/media/browse/MediaBrowser;

    .prologue
    .line 1048
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;-><init>()V

    .line 1049
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    .line 1048
    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/media/session/MediaSession$Token;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1059
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1060
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1061
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-wrap6(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public onConnectFailed()V
    .locals 2

    .prologue
    .line 1070
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1071
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1072
    invoke-static {v0, p0}, Landroid/media/browse/MediaBrowser;->-wrap4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 1069
    :cond_0
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->onLoadChildrenWithOptions(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 1077
    return-void
.end method

.method public onLoadChildrenWithOptions(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1084
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1085
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    .line 1086
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-wrap5(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 1083
    :cond_0
    return-void
.end method
