.class public final Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;
    }
.end annotation


# static fields
.field public static final AUDIO_ROUTE_BT:I = 0xcc

.field public static final AUDIO_ROUTE_EARPIECE:I = 0xcd

.field public static final AUDIO_ROUTE_HEADSET:I = 0xce

.field public static final AUDIO_ROUTE_SPEAKER:I = 0xcf

.field public static final BIND_CS:I = 0x5

.field public static final BLOCK_CHECK_FINISHED:I = 0x69

.field public static final BLOCK_CHECK_INITIATED:I = 0x68

.field public static final CONFERENCE_WITH:I = 0x12c

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final CS_BOUND:I = 0x6

.field public static final DIRECT_TO_VM_FINISHED:I = 0x67

.field public static final DIRECT_TO_VM_INITIATED:I = 0x66

.field public static final FILTERING_COMPLETED:I = 0x6b

.field public static final FILTERING_INITIATED:I = 0x6a

.field public static final FILTERING_TIMED_OUT:I = 0x6c

.field public static final MUTE:I = 0xca

.field public static final REMOTELY_HELD:I = 0x192

.field public static final REMOTELY_UNHELD:I = 0x193

.field public static final REQUEST_ACCEPT:I = 0x7

.field public static final REQUEST_HOLD:I = 0x190

.field public static final REQUEST_PULL:I = 0x1f4

.field public static final REQUEST_REJECT:I = 0x8

.field public static final REQUEST_UNHOLD:I = 0x191

.field public static final SCREENING_COMPLETED:I = 0x65

.field public static final SCREENING_SENT:I = 0x64

.field public static final SET_ACTIVE:I = 0x1

.field public static final SET_DIALING:I = 0x4

.field public static final SET_DISCONNECTED:I = 0x2

.field public static final SET_HOLD:I = 0x194

.field public static final SET_PARENT:I = 0x12e

.field public static final SET_SELECT_PHONE_ACCOUNT:I = 0x0

.field public static final SILENCE:I = 0xc9

.field public static final SKIP_RINGING:I = 0xc8

.field public static final SPLIT_CONFERENCE:I = 0x12d

.field public static final START_CONNECTION:I = 0x3

.field public static final SWAP:I = 0x195

.field public static final UNMUTE:I = 0xcb


# instance fields
.field private mEventName:I

.field private mTimeSinceLastEvent:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;-><init>()V

    .line 138
    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "eventName"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    .line 157
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    .line 160
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    return v0
.end method

.method public getTimeSinceLastEvent()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    return-void
.end method
