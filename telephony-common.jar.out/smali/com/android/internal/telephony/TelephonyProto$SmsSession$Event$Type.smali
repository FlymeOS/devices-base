.class public interface abstract Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Type;
.super Ljava/lang/Object;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Type"
.end annotation


# static fields
.field public static final DATA_CALL_LIST_CHANGED:I = 0x5

.field public static final EVENT_UNKNOWN:I = 0x0

.field public static final IMS_CAPABILITIES_CHANGED:I = 0x4

.field public static final IMS_CONNECTION_STATE_CHANGED:I = 0x3

.field public static final RIL_SERVICE_STATE_CHANGED:I = 0x2

.field public static final SETTINGS_CHANGED:I = 0x1

.field public static final SMS_RECEIVED:I = 0x8

.field public static final SMS_SEND:I = 0x6

.field public static final SMS_SEND_RESULT:I = 0x7
