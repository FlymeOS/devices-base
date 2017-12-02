.class Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    const-wide v6, 0x12a05f200L

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 35
    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 36
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 37
    if-eqz p3, :cond_0

    .line 38
    aget-object v1, v0, v4

    invoke-virtual {v1, p3}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 39
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 40
    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 46
    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v1, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 47
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v6, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 51
    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 52
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p2, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v2, 0x7e6

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v3, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 57
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v6, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v3, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 67
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 32
    return-void

    .line 42
    :cond_0
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_0
.end method

.method private getLayerLw(I)I
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method disposeChannelsLw()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 84
    return-void
.end method

.method layout(II)V
    .locals 2
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 70
    return-void
.end method
