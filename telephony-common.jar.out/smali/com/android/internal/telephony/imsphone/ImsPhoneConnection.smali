.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"

# interfaces
.implements Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mDtmfToneDelay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

.field private mIsEmergency:Z

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShouldIgnoreVideoStateChanges:Z

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 149
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 87
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 90
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 153
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 154
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 157
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "oi"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "cna"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "oir"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 163
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "cnap"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 170
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 172
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 180
    :goto_2
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 148
    return-void

    .line 166
    :cond_0
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 167
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 196
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    .line 198
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 199
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 203
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 205
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 206
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 209
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 210
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 212
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 188
    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 558
    const-string/jumbo v0, "ImsPhoneConnection"

    const-string/jumbo v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 557
    return-void
.end method

.method private static applyLocalCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I
    .locals 4
    .param p0, "localProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    .prologue
    const/4 v3, 0x4

    .line 226
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyLocalCallCapabilities - localProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 230
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return p1

    .line 234
    :pswitch_0
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyRemoteCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I
    .locals 4
    .param p0, "remoteProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    .prologue
    const/16 v3, 0x8

    .line 242
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyRemoteCallCapabilities - remoteProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 246
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return p1

    .line 250
    :pswitch_0
    invoke-static {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "newExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 923
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 924
    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    .line 927
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 928
    return v5

    .line 931
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 932
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 933
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 934
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 935
    .local v2, "newValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 936
    return v5

    .line 940
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    return v4
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 553
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhoneConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 551
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 574
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 573
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 575
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 576
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 577
    const-string/jumbo v2, "ims_dtmf_tone_delay_int"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 572
    :cond_0
    return-void
.end method

.method private getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I
    .locals 6
    .param p1, "localCallProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 955
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 957
    :cond_0
    return v3

    .line 956
    :cond_1
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    if-eqz v4, :cond_0

    .line 960
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 961
    const/16 v5, 0x12

    .line 960
    if-eq v4, v5, :cond_2

    .line 962
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 963
    const/16 v5, 0x13

    .line 962
    if-ne v4, v5, :cond_5

    .line 960
    :cond_2
    const/4 v0, 0x1

    .line 967
    .local v0, "isEvsCodecHighDef":Z
    :goto_0
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v4, v2, :cond_3

    .line 969
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 970
    const/4 v5, 0x6

    .line 969
    if-ne v4, v5, :cond_7

    .line 972
    :cond_3
    :goto_1
    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    if-nez v4, :cond_4

    move v1, v3

    .line 973
    .local v1, "isHighDef":Z
    :cond_4
    if-eqz v1, :cond_8

    :goto_2
    return v2

    .line 964
    .end local v0    # "isEvsCodecHighDef":Z
    .end local v1    # "isHighDef":Z
    :cond_5
    iget-object v4, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v4, v4, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 965
    const/16 v5, 0x14

    .line 964
    if-ne v4, v5, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "isEvsCodecHighDef":Z
    goto :goto_0

    .end local v0    # "isEvsCodecHighDef":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isEvsCodecHighDef":Z
    goto :goto_0

    .line 967
    :cond_7
    if-eqz v0, :cond_4

    goto :goto_1

    .restart local v1    # "isHighDef":Z
    :cond_8
    move v2, v3

    .line 973
    goto :goto_2
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 477
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_0

    .line 479
    return-void

    .line 482
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 483
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 486
    const/4 v1, 0x0

    .line 505
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    .line 508
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v4

    .line 512
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 515
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 516
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 517
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 518
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 521
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 525
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 473
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    .line 490
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 492
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 494
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v2

    .line 496
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    .line 498
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 500
    const-string/jumbo v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x1

    .line 439
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 464
    :goto_0
    return v4

    .line 441
    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 455
    const-wide/16 v2, 0xbb8

    .line 454
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 456
    :cond_1
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    .line 457
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 458
    :cond_2
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    .line 459
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 461
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    .line 537
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 538
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 546
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    .line 535
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 542
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateWifiStateFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 877
    const-string/jumbo v2, "CallRadioTech"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    const-string/jumbo v2, "callRadioTech"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 877
    if-eqz v2, :cond_2

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 881
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/4 v1, 0x0

    .line 882
    .local v1, "isWifi":Z
    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    .line 887
    .end local v1    # "isWifi":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 888
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    .line 876
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 362
    return-void
.end method

.method public changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 630
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 468
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 281
    const-wide/16 v0, 0x0

    return-wide v0

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 310
    return-void

    .line 314
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConferenceHost()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0

    return v0
.end method

.method protected isEmergency()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 418
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 412
    return-void
.end method

.method public onDisconnect()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    .line 401
    .end local v0    # "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    .line 402
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 405
    return v0

    .line 399
    .restart local v0    # "changed":Z
    :cond_2
    const-string/jumbo v1, "ImsPhoneConnection"

    const-string/jumbo v2, "onDisconnect: no parent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    .prologue
    .line 377
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 379
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 688
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_0

    .line 689
    return-void

    .line 692
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 370
    return-void
.end method

.method public onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1029
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 1030
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 1029
    if-eqz v3, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 1032
    .local v1, "currentVideoState":I
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    .line 1040
    .local v2, "newVideoState":I
    xor-int v0, v1, v2

    .line 1041
    .local v0, "changedBits":I
    and-int/lit8 v0, v0, 0x3

    .line 1042
    if-nez v0, :cond_0

    .line 1044
    return-void

    .line 1048
    :cond_0
    and-int v3, v0, v1

    not-int v3, v3

    and-int/2addr v1, v3

    .line 1050
    and-int v3, v0, v2

    or-int/2addr v1, v3

    .line 1052
    const-string/jumbo v3, "ImsPhoneConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceiveSessionModifyResponse : received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1053
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1054
    const-string/jumbo v5, " / "

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1055
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1056
    const-string/jumbo v5, " while paused ; sending new videoState = "

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1057
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1028
    .end local v0    # "changedBits":I
    .end local v1    # "currentVideoState":I
    .end local v2    # "newVideoState":I
    :cond_1
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    .line 429
    return-void
.end method

.method public pauseVideo(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1070
    return-void

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->pauseVideo(II)V

    .line 1068
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 326
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 331
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 333
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 324
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 339
    const-string/jumbo v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 340
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 344
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 354
    const-string/jumbo v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 337
    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string/jumbo v0, "ImsPhoneConnection"

    const-string/jumbo v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 563
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resumeVideo(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1084
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->resumeVideo(II)V

    .line 1082
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 1
    .param p1, "conferenceConnectTime"    # J

    .prologue
    .line 707
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 706
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 287
    return-void
.end method

.method public setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 626
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1003
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 1005
    instance-of v0, p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_0

    .line 1006
    check-cast p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .end local p1    # "videoProvider":Landroid/telecom/Connection$VideoProvider;
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 1002
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    const-string/jumbo v1, " telecomCallID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string/jumbo v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string/jumbo v1, "ImsPhoneConnection"

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string/jumbo v1, " ImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    .line 993
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :goto_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 639
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_5

    .line 644
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    const-string/jumbo v4, "ImsPhoneConnection"

    const-string/jumbo v5, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v4, 0x0

    return v4

    .line 649
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 653
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v4, v5, :cond_4

    .line 658
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 659
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 660
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 666
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v3

    .line 667
    .local v3, "updateParent":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 668
    .local v0, "updateAddressDisplay":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v2

    .line 669
    .local v2, "updateMediaCapabilities":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    move-result v1

    .line 671
    .local v1, "updateExtras":Z
    if-nez v3, :cond_6

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .end local v1    # "updateExtras":Z
    :goto_1
    return v1

    .line 662
    .end local v0    # "updateAddressDisplay":Z
    .end local v2    # "updateMediaCapabilities":Z
    .end local v3    # "updateParent":Z
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_4

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    goto :goto_0

    .line 671
    .restart local v0    # "updateAddressDisplay":Z
    .restart local v1    # "updateExtras":Z
    .restart local v2    # "updateMediaCapabilities":Z
    .restart local v3    # "updateParent":Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 725
    if-nez p1, :cond_0

    .line 726
    const/4 v6, 0x0

    return v6

    .line 729
    :cond_0
    const/4 v2, 0x0

    .line 730
    .local v2, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 731
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_4

    .line 732
    const-string/jumbo v6, "oi"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v6, "cna"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "oir"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 734
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v5

    .line 737
    .local v5, "nump":I
    const-string/jumbo v6, "cnap"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 736
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v4

    .line 739
    .local v4, "namep":I
    const-string/jumbo v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ImsPhoneConnection"

    invoke-static {v8, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 740
    const-string/jumbo v8, " nump = "

    .line 739
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 740
    const-string/jumbo v8, " namep = "

    .line 739
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 743
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 744
    const/4 v2, 0x1

    .line 746
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 747
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 748
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 749
    const/4 v2, 0x1

    .line 755
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    if-eq v6, v5, :cond_3

    .line 756
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 757
    const/4 v2, 0x1

    .line 759
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    if-eq v6, v4, :cond_4

    .line 760
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 761
    const/4 v2, 0x1

    .line 764
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "namep":I
    .end local v5    # "nump":I
    :cond_4
    return v2

    .line 751
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namep":I
    .restart local v5    # "nump":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 752
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 753
    const/4 v2, 0x1

    goto :goto_0
.end method

.method updateExtras(Lcom/android/ims/ImsCall;)Z
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 901
    if-nez p1, :cond_0

    .line 902
    return v1

    .line 905
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 906
    .local v0, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 907
    .local v2, "extras":Landroid/os/Bundle;
    :cond_1
    if-nez v2, :cond_2

    .line 908
    const-string/jumbo v3, "ImsPhoneConnection"

    const-string/jumbo v4, "Call profile extras are null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 912
    .local v1, "changed":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 913
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiStateFromExtras(Landroid/os/Bundle;)V

    .line 915
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 916
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 917
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    .line 919
    :cond_3
    return v1

    .line 911
    .end local v1    # "changed":Z
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 12
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v9, 0x0

    .line 775
    if-nez p1, :cond_0

    .line 776
    return v9

    .line 779
    :cond_0
    const/4 v1, 0x0

    .line 783
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v4

    .line 785
    .local v4, "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v4, :cond_2

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v7

    .line 787
    .local v7, "oldVideoState":I
    invoke-static {v4}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v6

    .line 790
    .local v6, "newVideoState":I
    if-eq v7, v6, :cond_2

    .line 797
    invoke-static {v7}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 798
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 805
    :cond_1
    :goto_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-nez v9, :cond_8

    .line 806
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 807
    const/4 v1, 0x1

    .line 813
    :goto_1
    invoke-static {v7}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 814
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v9

    .line 813
    if-eqz v9, :cond_2

    .line 818
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 825
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v0

    .line 828
    .local v0, "capabilities":I
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 830
    const/4 v9, 0x3

    .line 829
    invoke-static {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result v0

    .line 839
    :goto_2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 840
    .local v3, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v9, "ImsPhoneConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update localCallProfile="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    if-eqz v3, :cond_3

    .line 842
    invoke-static {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I

    move-result v0

    .line 846
    :cond_3
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v8

    .line 847
    .local v8, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string/jumbo v9, "ImsPhoneConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update remoteCallProfile="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-eqz v8, :cond_4

    .line 849
    invoke-static {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Lcom/android/ims/ImsCallProfile;I)I

    move-result v0

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v9

    if-eq v9, v0, :cond_5

    .line 852
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionCapabilities(I)V

    .line 853
    const/4 v1, 0x1

    .line 857
    :cond_5
    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I

    move-result v5

    .line 858
    .local v5, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v9

    if-eq v9, v5, :cond_6

    .line 859
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V

    .line 860
    const/4 v1, 0x1

    .line 866
    .end local v0    # "capabilities":I
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "newAudioQuality":I
    .end local v8    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_6
    :goto_3
    return v1

    .line 802
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v6    # "newVideoState":I
    .restart local v7    # "oldVideoState":I
    :cond_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    goto/16 :goto_0

    .line 862
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/ims/ImsException;
    goto :goto_3

    .line 809
    .end local v2    # "e":Lcom/android/ims/ImsException;
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v6    # "newVideoState":I
    .restart local v7    # "oldVideoState":I
    :cond_8
    const-string/jumbo v9, "ImsPhoneConnection"

    const-string/jumbo v10, "updateMediaCapabilities - ignoring video state change due to paused state."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 834
    .end local v6    # "newVideoState":I
    .end local v7    # "oldVideoState":I
    .restart local v0    # "capabilities":I
    :cond_9
    const/4 v9, 0x3

    .line 833
    invoke-static {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2
.end method

.method public wasVideoPausedFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1098
    const/4 v0, 0x0

    return v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->wasVideoPausedFromSource(I)Z

    move-result v0

    return v0
.end method
