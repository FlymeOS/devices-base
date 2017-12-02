.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# static fields
.field static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 33
    const/16 v0, 0x2710

    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "opts"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x2710

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 33
    iput v3, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 64
    const-string/jumbo v0, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    .line 65
    const-string/jumbo v0, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 66
    const-string/jumbo v0, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 63
    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 56
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method


# virtual methods
.method public getMaxManifestReceiverApiLevel()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public getTemporaryAppWhitelistDuration()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-wide v0
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    .prologue
    .line 112
    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 111
    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    .prologue
    .line 94
    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 93
    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    .line 75
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "b":Landroid/os/Bundle;
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 134
    const-string/jumbo v1, "android:broadcast.temporaryAppWhitelistDuration"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    :cond_0
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "android:broadcast.minManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    :cond_1
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2

    .line 140
    const-string/jumbo v1, "android:broadcast.maxManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    :cond_2
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    return-object v0
.end method
