.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onGesture:I = 0x4

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x6

.field static final TRANSACTION_onMagnificationChanged:I = 0x7

.field static final TRANSACTION_onPerformGestureResult:I = 0x9

.field static final TRANSACTION_onSoftKeyboardShowModeChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    return v11

    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 56
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 59
    .local v9, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v6, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 60
    const/4 v11, 0x1

    return v11

    .line 64
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    .line 67
    sget-object v11, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .line 72
    :goto_0
    invoke-virtual {p0, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    const/4 v11, 0x1

    return v11

    .line 70
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 77
    .end local v4    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_3
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    .line 79
    const/4 v11, 0x1

    return v11

    .line 83
    :sswitch_4
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(I)V

    .line 87
    const/4 v11, 0x1

    return v11

    .line 91
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    .line 93
    const/4 v11, 0x1

    return v11

    .line 97
    :sswitch_6
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    .line 100
    sget-object v11, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 106
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v3, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 108
    const/4 v11, 0x1

    return v11

    .line 103
    .end local v6    # "_arg1":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/view/KeyEvent;
    goto :goto_1

    .line 112
    .end local v3    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_7
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 115
    sget-object v11, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 121
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 123
    .local v5, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 125
    .local v8, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 126
    .local v10, "_arg3":F
    invoke-virtual {p0, v2, v5, v8, v10}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 127
    const/4 v11, 0x1

    return v11

    .line 118
    .end local v5    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v10    # "_arg3":F
    :cond_2
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/graphics/Region;
    goto :goto_2

    .line 131
    .end local v2    # "_arg0":Landroid/graphics/Region;
    :sswitch_8
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    .line 135
    const/4 v11, 0x1

    return v11

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v7, 0x1

    .line 144
    .local v7, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v7}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    .line 145
    const/4 v11, 0x1

    return v11

    .line 143
    .end local v7    # "_arg1":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
