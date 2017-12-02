.class Landroid/media/browse/MediaBrowser$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    .line 1095
    return-void
.end method


# virtual methods
.method public getCallback(Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1114
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p1}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object v1

    .line 1113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putCallback(Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .prologue
    .line 1122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1123
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p1}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1125
    return-void

    .line 1122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    return-void
.end method
