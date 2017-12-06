.class final Landroid/app/Notification$FlymeInjector;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneIntoFlyme(Landroid/app/Notification;Landroid/app/Notification;)V
    .locals 2
    .param p0, "src"    # Landroid/app/Notification;
    .param p1, "des"    # Landroid/app/Notification;

    .prologue
    .line 7355
    iget-object v0, p0, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    .line 7358
    iget-object v0, p0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    .line 7360
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->notificationIcon:I

    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 7361
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 7362
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 7364
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->rightIcon:I

    iput v1, v0, Landroid/app/NotificationExt;->rightIcon:I

    .line 7365
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->internalApp:I

    iput v1, v0, Landroid/app/NotificationExt;->internalApp:I

    .line 7366
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 7367
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 7368
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->progressBarDrawable:I

    iput v1, v0, Landroid/app/NotificationExt;->progressBarDrawable:I

    .line 7369
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->simSlot:I

    iput v1, v0, Landroid/app/NotificationExt;->simSlot:I

    .line 7370
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-boolean v1, v1, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    iput-boolean v1, v0, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    .line 7371
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressBarColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressBarColor:I

    .line 7372
    iget-object v0, p1, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressRimColor:I

    iput v1, v0, Landroid/app/NotificationExt;->circleProgressRimColor:I

    .line 7353
    return-void
.end method

.method static initFlymeExtFields(Landroid/app/Notification;)V
    .locals 1
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 7266
    new-instance v0, Landroid/app/NotificationExt;

    invoke-direct {v0}, Landroid/app/NotificationExt;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 7265
    return-void
.end method

.method static readFromParcelFlyme(Landroid/app/Notification;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7272
    new-instance v0, Landroid/app/NotificationExt;

    invoke-direct {v0}, Landroid/app/NotificationExt;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 7273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7274
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    .line 7277
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7278
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    .line 7281
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/NotificationExt;->internalApp:I

    .line 7282
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/NotificationExt;->simSlot:I

    .line 7283
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 7284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7285
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 7287
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 7288
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 7290
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 7291
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 7271
    :cond_4
    return-void
.end method

.method static setLatestEventInfoFlyme(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 7337
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->notificationIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 7338
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 7339
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setNotificationBitmapIcon(Landroid/graphics/Bitmap;)V

    .line 7341
    :cond_0
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->rightIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setRightIcon(I)V

    .line 7342
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->internalApp:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setInternalApp(I)V

    .line 7343
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 7344
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v1, v1, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setIconIntent(Landroid/app/PendingIntent;)V

    .line 7345
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->progressBarDrawable:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setProgressBarDrawable(I)V

    .line 7346
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->simSlot:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setSimSlot(I)V

    .line 7347
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-boolean v1, v1, Landroid/app/NotificationExt;->isCircleProgressBar:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressBar(Z)V

    .line 7348
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressBarColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressBarColor(I)V

    .line 7349
    iget-object v0, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v1, v1, Landroid/app/NotificationExt;->circleProgressRimColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationBuilderExt;->setCircleProgressRimColor(I)V

    .line 7336
    return-void
.end method

.method static writeToParcelFlyme(Landroid/app/Notification;Landroid/os/Parcel;I)V
    .locals 3
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7297
    iget-object v0, p0, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 7298
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7299
    iget-object v0, p0, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7305
    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 7306
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7307
    iget-object v0, p0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7312
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->internalApp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7313
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->simSlot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7314
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->notificationIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7315
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 7316
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7317
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7321
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 7322
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7323
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 7327
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 7328
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7329
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7295
    :goto_4
    return-void

    .line 7301
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 7309
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 7319
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 7325
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 7331
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
