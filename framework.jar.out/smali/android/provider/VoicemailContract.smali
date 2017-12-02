.class public Landroid/provider/VoicemailContract;
.super Ljava/lang/Object;
.source "VoicemailContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/VoicemailContract$Status;,
        Landroid/provider/VoicemailContract$Voicemails;
    }
.end annotation


# static fields
.field public static final ACTION_FETCH_VOICEMAIL:Ljava/lang/String; = "android.intent.action.FETCH_VOICEMAIL"

.field public static final ACTION_NEW_VOICEMAIL:Ljava/lang/String; = "android.intent.action.NEW_VOICEMAIL"

.field public static final ACTION_SYNC_VOICEMAIL:Ljava/lang/String; = "android.provider.action.SYNC_VOICEMAIL"

.field public static final ACTION_VOICEMAIL_SMS_RECEIVED:Ljava/lang/String; = "android.intent.action.VOICEMAIL_SMS_RECEIVED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.voicemail"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.provider.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_SELF_CHANGE:Ljava/lang/String; = "com.android.voicemail.extra.SELF_CHANGE"

.field public static final EXTRA_VOICEMAIL_SMS_FIELDS:Ljava/lang/String; = "com.android.voicemail.extra.VOICEMAIL_SMS_FIELDS"

.field public static final EXTRA_VOICEMAIL_SMS_MESSAGE_BODY:Ljava/lang/String; = "com.android.voicemail.extra.VOICEMAIL_SMS_MESSAGE_BODY"

.field public static final EXTRA_VOICEMAIL_SMS_PREFIX:Ljava/lang/String; = "com.android.voicemail.extra.VOICEMAIL_SMS_PREFIX"

.field public static final EXTRA_VOICEMAIL_SMS_SUBID:Ljava/lang/String; = "com.android.voicemail.extra.VOICEMAIL_SMS_SUBID"

.field public static final PARAM_KEY_SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final SOURCE_PACKAGE_FIELD:Ljava/lang/String; = "source_package"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
