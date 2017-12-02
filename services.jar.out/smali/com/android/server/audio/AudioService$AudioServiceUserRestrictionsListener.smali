.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 5383
    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5385
    .local v1, "wasRestricted":Z
    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5386
    .local v0, "isRestricted":Z
    if-eq v1, v0, :cond_0

    .line 5387
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->-wrap39(Lcom/android/server/audio/AudioService;ZI)V

    .line 5394
    :cond_0
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5395
    const-string/jumbo v2, "disallow_unmute_device"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5397
    .end local v1    # "wasRestricted":Z
    :goto_0
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5398
    const-string/jumbo v2, "disallow_unmute_device"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5399
    :goto_1
    if-eq v1, v0, :cond_1

    .line 5400
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;ZII)V

    .line 5379
    :cond_1
    return-void

    .line 5394
    .restart local v1    # "wasRestricted":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "wasRestricted":Z
    goto :goto_0

    .line 5397
    .end local v1    # "wasRestricted":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
