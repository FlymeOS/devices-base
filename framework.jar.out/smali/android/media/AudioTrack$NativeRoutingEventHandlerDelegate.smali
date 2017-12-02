.class Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRoutingEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioTrack;
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 2688
    iput-object p1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2693
    if-eqz p4, :cond_0

    .line 2694
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2701
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    .line 2703
    new-instance v1, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 2690
    :goto_1
    return-void

    .line 2697
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {p1}, Landroid/media/AudioTrack;->-get0(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 2722
    :cond_1
    iput-object v1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2727
    iget-object v0, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
