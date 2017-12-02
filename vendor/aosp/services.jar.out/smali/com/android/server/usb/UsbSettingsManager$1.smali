.class Lcom/android/server/usb/UsbSettingsManager$1;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"

# interfaces
.implements Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager$1;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenInApp(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$1;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager;->-wrap0(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->-wrap2(Lcom/android/server/usb/UsbSettingsManager;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    .line 531
    return-void
.end method
