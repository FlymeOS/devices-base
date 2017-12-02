.class public Landroid/telecom/ParcelableCallAnalytics;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$1;,
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;,
        Landroid/telecom/ParcelableCallAnalytics$EventTiming;,
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
    }
.end annotation


# static fields
.field public static final CALLTYPE_INCOMING:I = 0x1

.field public static final CALLTYPE_OUTGOING:I = 0x2

.field public static final CALLTYPE_UNKNOWN:I = 0x0

.field public static final CDMA_PHONE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSM_PHONE:I = 0x2

.field public static final IMS_PHONE:I = 0x4

.field public static final MILLIS_IN_1_SECOND:J = 0x3e8L

.field public static final MILLIS_IN_5_MINUTES:J = 0x493e0L

.field public static final SIP_PHONE:I = 0x8

.field public static final STILL_CONNECTED:I = -0x1

.field public static final THIRD_PARTY_PHONE:I = 0x10


# instance fields
.field private final analyticsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final callDurationMillis:J

.field private final callTechnologies:I

.field private final callTerminationCode:I

.field private final callType:I

.field private final connectionService:Ljava/lang/String;

.field private final eventTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field private final isAdditionalCall:Z

.field private final isCreatedFromExistingConnection:Z

.field private final isEmergencyCall:Z

.field private final isInterrupted:Z

.field private isVideoCall:Z

.field private final startTimeMillis:J

.field private videoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$1;-><init>()V

    .line 264
    sput-object v0, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>(JJIZZIIZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "startTimeMillis"    # J
    .param p3, "callDurationMillis"    # J
    .param p5, "callType"    # I
    .param p6, "isAdditionalCall"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "callTechnologies"    # I
    .param p9, "callTerminationCode"    # I
    .param p10, "isEmergencyCall"    # Z
    .param p11, "connectionService"    # Ljava/lang/String;
    .param p12, "isCreatedFromExistingConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZZIIZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p13, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;>;"
    .local p14, "eventTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$EventTiming;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 327
    iput-wide p1, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 328
    iput-wide p3, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 329
    iput p5, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 330
    iput-boolean p6, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 331
    iput-boolean p7, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 332
    iput p8, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 333
    iput p9, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 334
    iput-boolean p10, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 335
    iput-object p11, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 336
    iput-boolean p12, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 337
    iput-object p13, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 338
    iput-object p14, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 345
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 346
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 349
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 353
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 355
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 356
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 358
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 341
    return-void
.end method

.method private static readByteAsBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeBooleanAsByte(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # Z

    .prologue
    .line 452
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 451
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public analyticsEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getCallDurationMillis()J
    .locals 2

    .prologue
    .line 393
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    return-wide v0
.end method

.method public getCallTechnologies()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    return v0
.end method

.method public getCallTerminationCode()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    return v0
.end method

.method public getConnectionService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    .prologue
    .line 389
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    return-wide v0
.end method

.method public getVideoEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    return-object v0
.end method

.method public isAdditionalCall()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    return v0
.end method

.method public isCreatedFromExistingConnection()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    return v0
.end method

.method public setIsVideoCall(Z)V
    .locals 0
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 379
    return-void
.end method

.method public setVideoEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "videoEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$VideoEvent;>;"
    iput-object p1, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 384
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 362
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 366
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 367
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 370
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 372
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 373
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 374
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 375
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 361
    return-void
.end method
