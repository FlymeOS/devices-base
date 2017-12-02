.class final synthetic Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/PendingIntent$OnMarshaledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$parcel:Landroid/os/Parcel;

.field private synthetic val$this:Landroid/app/Notification;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Notification;Landroid/os/Parcel;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;->val$this:Landroid/app/Notification;

    iput-object p2, p0, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;->val$parcel:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/PendingIntent;
    .param p2, "arg1"    # Landroid/os/Parcel;
    .param p3, "arg2"    # I

    .prologue
    iget-object v0, p0, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;->val$this:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$-void_writeToParcel_android_os_Parcel_parcel_int_flags_LambdaImpl0;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/Notification;->-android_app_Notification_lambda$1(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method
