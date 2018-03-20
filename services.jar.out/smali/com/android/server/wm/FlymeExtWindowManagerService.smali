.class public Lcom/android/server/wm/FlymeExtWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "FlymeExtWindowManagerService.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.FlymeExtIWindowManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z
    .param p6, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/FlymeExtWindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 20
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 28
    :pswitch_0
    const-string/jumbo v7, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v6

    .line 30
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FlymeExtWindowManagerService;->disableRotationAnim(Z)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    return v6

    .line 36
    .end local v1    # "_arg0":Z
    :pswitch_1
    const-string/jumbo v7, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 39
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 40
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/FlymeExtWindowManagerService;->screenshotLiveWallpaper(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 41
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    :goto_0
    return v6

    .line 46
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 52
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :pswitch_2
    const-string/jumbo v7, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeExtWindowManagerService;->getVisibleFloatWindowPackages()[Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    return v6

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
