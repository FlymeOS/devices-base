.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    .prologue
    .line 5459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5462
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 5463
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    .line 5464
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 5465
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 5466
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 5467
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    .line 5461
    return-void
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 12
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 5547
    if-nez p0, :cond_0

    .line 5548
    return-object v7

    .line 5550
    :cond_0
    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 5551
    .local v9, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 5552
    .local v1, "messages":[Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 5553
    array-length v0, v9

    new-array v11, v0, [Ljava/lang/String;

    .line 5554
    .local v11, "tmp":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 5555
    .local v10, "success":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v11

    if-ge v8, v0, :cond_1

    .line 5556
    aget-object v0, v9, v8

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 5557
    const/4 v10, 0x0

    .line 5566
    :cond_1
    :goto_1
    if-eqz v10, :cond_6

    .line 5567
    move-object v1, v11

    .line 5573
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "success":Z
    .end local v11    # "tmp":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "on_read"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 5574
    .local v4, "onRead":Landroid/app/PendingIntent;
    const-string/jumbo v0, "on_reply"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 5576
    .local v3, "onReply":Landroid/app/PendingIntent;
    const-string/jumbo v0, "remote_input"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteInput;

    .line 5578
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v0, "participants"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5579
    .local v5, "participants":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v0, v5

    const/4 v6, 0x1

    if-eq v0, v6, :cond_7

    .line 5580
    :cond_3
    return-object v7

    .line 5560
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    .end local v3    # "onReply":Landroid/app/PendingIntent;
    .end local v4    # "onRead":Landroid/app/PendingIntent;
    .end local v5    # "participants":[Ljava/lang/String;
    .restart local v1    # "messages":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "success":Z
    .restart local v11    # "tmp":[Ljava/lang/String;
    :cond_4
    aget-object v0, v9, v8

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v6, "text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    .line 5561
    aget-object v0, v11, v8

    if-nez v0, :cond_5

    .line 5562
    const/4 v10, 0x0

    .line 5563
    goto :goto_1

    .line 5555
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5569
    :cond_6
    return-object v7

    .line 5583
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "success":Z
    .end local v11    # "tmp":[Ljava/lang/String;
    .restart local v2    # "remoteInput":Landroid/app/RemoteInput;
    .restart local v3    # "onReply":Landroid/app/PendingIntent;
    .restart local v4    # "onRead":Landroid/app/PendingIntent;
    .restart local v5    # "participants":[Ljava/lang/String;
    :cond_7
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 5587
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 5583
    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method getBundleForUnreadConversation()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 5523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5524
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 5525
    .local v0, "author":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 5526
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 5528
    .end local v0    # "author":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v5, v5

    new-array v4, v5, [Landroid/os/Parcelable;

    .line 5529
    .local v4, "messages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 5530
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5531
    .local v3, "m":Landroid/os/Bundle;
    const-string/jumbo v5, "text"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5532
    const-string/jumbo v5, "author"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5533
    aput-object v3, v4, v2

    .line 5529
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5535
    .end local v3    # "m":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v5, "messages"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5536
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v5, :cond_2

    .line 5537
    const-string/jumbo v5, "remote_input"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5539
    :cond_2
    const-string/jumbo v5, "on_reply"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5540
    const-string/jumbo v5, "on_read"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5541
    const-string/jumbo v5, "participants"

    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5542
    const-string/jumbo v5, "timestamp"

    iget-wide v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5543
    return-object v1
.end method

.method public getLatestTimestamp()J
    .locals 2

    .prologue
    .line 5519
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5474
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5512
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5505
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 5498
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 1

    .prologue
    .line 5482
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 5490
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
