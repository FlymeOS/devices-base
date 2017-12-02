.class public Lcom/android/internal/telephony/SubscriptionMonitor;
.super Ljava/lang/Object;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionMonitor$1;,
        Lcom/android/internal/telephony/SubscriptionMonitor$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionMonitor"

.field private static final MAX_LOGLINES:I = 0x64

.field private static final VDBG:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDataPhoneId:I

.field private final mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

.field private mDefaultDataSubId:I

.field private final mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mPhoneSubId:[I

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    .line 107
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 6
    .param p1, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "numPhones"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 108
    new-instance v2, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 144
    new-instance v2, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    .line 143
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    :try_start_0
    const-string/jumbo v2, "SubscriptionMonitor"

    .line 74
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 73
    invoke-interface {p1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 79
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    .line 81
    new-array v2, p4, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    .line 82
    new-array v2, p4, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    .line 83
    new-array v2, p4, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    .line 86
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    .line 88
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_1
    if-ge v1, p4, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void

    .line 75
    .end local v1    # "phoneId":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private invalidPhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 225
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return v1

    .line 226
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string/jumbo v0, "SubscriptionMonitor"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 229
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 234
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid PhoneId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 214
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 208
    return-void
.end method

.method public registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid PhoneId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 191
    return-void
.end method

.method public unregisterForDefaultDataSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 217
    return-void
.end method

.method public unregisterForSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 200
    return-void
.end method
