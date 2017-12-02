.class Landroid/app/WallpaperManager$WallpaperSetCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperSetCompletion"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/WallpaperManager;

    .prologue
    .line 1716
    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 1717
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1716
    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1732
    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1731
    return-void
.end method

.method public waitForCompletion()V
    .locals 5

    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_0
    return-void

    .line 1723
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
