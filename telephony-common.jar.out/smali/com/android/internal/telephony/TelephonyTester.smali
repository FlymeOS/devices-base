.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyTester$1;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_CONFERENCE_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestConferenceEventPackage"

.field private static final ACTION_TEST_DIALOG_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestDialogEventPackage"

.field private static final ACTION_TEST_HANDOVER_FAIL:Ljava/lang/String; = "com.android.internal.telephony.TestHandoverFail"

.field private static final DBG:Z = true

.field private static final EXTRA_CANPULL:Ljava/lang/String; = "canPull"

.field private static final EXTRA_DIALOGID:Ljava/lang/String; = "dialogId"

.field private static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field private static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final EXTRA_SENDPACKAGE:Ljava/lang/String; = "sendPackage"

.field private static final EXTRA_STARTPACKAGE:Ljava/lang/String; = "startPackage"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyTester"

.field private static mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->handleHandoverFailedIntent()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Lcom/android/internal/telephony/TelephonyTester$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 136
    const-string/jumbo v1, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "com.android.internal.telephony.TestDialogEventPackage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "com.android.internal.telephony.TestHandoverFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private handleHandoverFailedIntent()V
    .locals 8

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 160
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v1, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .line 165
    .local v2, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v2, :cond_1

    .line 166
    return-void

    .line 169
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 170
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_2

    .line 171
    return-void

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    move-result-object v4

    .line 176
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 175
    const/16 v6, 0xe

    const/16 v7, 0x12

    .line 174
    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 157
    return-void
.end method

.method private handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 189
    .local v3, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v3, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    .line 194
    .local v4, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v4, :cond_1

    .line 195
    return-void

    .line 198
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 199
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_2

    .line 200
    return-void

    .line 203
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v6, "packageFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v5, "is":Ljava/io/FileInputStream;
    new-instance v7, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    .line 213
    .local v7, "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    invoke-virtual {v7}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Lcom/android/ims/ImsConferenceState;

    move-result-object v2

    .line 214
    .local v2, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    if-nez v2, :cond_3

    .line 215
    return-void

    .line 207
    .end local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Test conference event package file not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 209
    return-void

    .line 218
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    .line 186
    return-void
.end method

.method private handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 227
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 228
    .local v8, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v8, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v7

    .line 232
    .local v7, "externalCallTracker":Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    if-nez v7, :cond_1

    .line 233
    return-void

    .line 236
    :cond_1
    const-string/jumbo v1, "startPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 226
    :cond_2
    :goto_0
    return-void

    .line 238
    :cond_3
    const-string/jumbo v1, "sendPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    .line 240
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 241
    :cond_4
    const-string/jumbo v1, "dialogId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    new-instance v0, Lcom/android/ims/ImsExternalCallState;

    .line 243
    const-string/jumbo v1, "dialogId"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 244
    const-string/jumbo v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 245
    const-string/jumbo v3, "canPull"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 246
    const-string/jumbo v4, "state"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 248
    const/4 v5, 0x2

    .line 242
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 251
    .local v0, "state":Lcom/android/ims/ImsExternalCallState;
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v0, "TelephonyTester"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 148
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    :cond_0
    return-void
.end method
