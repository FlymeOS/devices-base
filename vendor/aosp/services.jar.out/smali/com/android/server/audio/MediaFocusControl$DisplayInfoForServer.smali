.class Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mClientNotifListComp:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private final mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v0, -0x1

    .line 1765
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 1760
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    .line 1767
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 1768
    invoke-interface {p2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    .line 1769
    iput p3, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 1770
    iput p4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 1765
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 1794
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get6(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 1795
    :try_start_0
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteControl: display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1798
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1800
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-ne v2, v4, :cond_0

    .line 1802
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1803
    return-void

    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3

    .line 1793
    return-void

    .line 1794
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    const/4 v1, 0x1

    return v1

    .line 1776
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return v4
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :goto_0
    return-void

    .line 1787
    :catch_0
    move-exception v0

    .line 1789
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "Error in DisplaInfoForServer.relase()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
