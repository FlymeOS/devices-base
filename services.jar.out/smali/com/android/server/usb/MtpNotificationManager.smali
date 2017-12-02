.class Lcom/android/server/usb/MtpNotificationManager;
.super Ljava/lang/Object;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;,
        Lcom/android/server/usb/MtpNotificationManager$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_IN_APPS:Ljava/lang/String; = "com.android.server.usb.ACTION_OPEN_IN_APPS"

.field private static final PROTOCOL_MTP:I = 0x0

.field private static final PROTOCOL_PTP:I = 0x1

.field private static final SUBCLASS_MTP:I = 0xff

.field private static final SUBCLASS_STILL_IMAGE_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbMtpNotificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    .line 69
    new-instance v0, Lcom/android/server/usb/MtpNotificationManager$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$Receiver;)V

    .line 70
    .local v0, "receiver":Lcom/android/server/usb/MtpNotificationManager$Receiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method private static isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 133
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 134
    .local v1, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 135
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 137
    return v4

    .line 139
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 140
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 141
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    if-nez v2, :cond_1

    .line 142
    const-string/jumbo v2, "MTP"

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 143
    return v4

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_2
    return v5
.end method

.method static shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 127
    const-string/jumbo v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/android/server/usb/MtpNotificationManager;->isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method hideNotification(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v1, "UsbMtpNotificationManager"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method showNotification(Landroid/hardware/usb/UsbDevice;)V
    .locals 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 74
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 75
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 76
    const v8, 0x1040601

    .line 75
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "title":Ljava/lang/String;
    const v7, 0x1040602

    .line 78
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "description":Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 83
    const v8, 0x10806fb

    .line 80
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 84
    const-string/jumbo v8, "sys"

    .line 80
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 86
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "device"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const/high16 v7, 0x50000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    .line 95
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 94
    const/high16 v10, 0x8000000

    .line 90
    invoke-static {v7, v8, v2, v10, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 96
    .local v4, "openIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 99
    .local v3, "notification":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 101
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 102
    const-string/jumbo v8, "UsbMtpNotificationManager"

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v9

    .line 101
    invoke-virtual {v7, v8, v9, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 73
    return-void
.end method
