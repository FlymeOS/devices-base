.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$1;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field private static final MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final PRIORITY_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final PRIORITY_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final PRIORITY_SYNC_EXPEDITED:I = 0xa

.field public static final PRIORITY_SYNC_INITIALIZATION:I = 0x14

.field public static final PRIORITY_TOP_APP:I = 0x28

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final backoffPolicy:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final flags:I

.field private final flexMillis:J

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final jobId:I

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkType:I

.field private final priority:I

.field private final requireCharging:Z

.field private final requireDeviceIdle:Z

.field private final service:Landroid/content/ComponentName;

.field private final triggerContentMaxDelay:J

.field private final triggerContentUpdateDelay:J

.field private final triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    .line 444
    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get10(Landroid/app/job/JobInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 390
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get1(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 391
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get11(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 392
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get16(Landroid/app/job/JobInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    .line 393
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get17(Landroid/app/job/JobInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    .line 394
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    .line 394
    :cond_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 397
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get19(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 398
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get18(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 399
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get14(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 400
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get13(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 401
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get12(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 402
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get8(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 403
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get9(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 404
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get7(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 405
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get3(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 406
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get6(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 407
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get0(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 408
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get4(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 409
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get5(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 410
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get15(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 411
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get2(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    .line 370
    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 364
    return-void

    :cond_0
    move v0, v2

    .line 368
    goto :goto_0

    :cond_1
    move v0, v2

    .line 369
    goto :goto_1

    :cond_2
    move v0, v2

    .line 376
    goto :goto_2

    :cond_3
    move v0, v2

    .line 377
    goto :goto_3

    :cond_4
    move v0, v2

    .line 382
    goto :goto_4

    :cond_5
    move v1, v2

    .line 383
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final getMinFlexMillis()J
    .locals 2

    .prologue
    .line 104
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final getMinPeriodMillis()J
    .locals 2

    .prologue
    .line 93
    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public getBackoffPolicy()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public getFlexMillis()J
    .locals 10

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    .line 323
    .local v2, "interval":J
    const-wide/16 v6, 0x5

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v4, v6, v8

    .line 324
    .local v4, "percentClamp":J
    iget-wide v6, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 325
    .local v0, "clampedFlex":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    .end local v0    # "clampedFlex":J
    :goto_0
    return-wide v0

    .restart local v0    # "clampedFlex":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public getInitialBackoffMillis()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 4

    .prologue
    .line 314
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMaxExecutionDelayMillis()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    return v0
.end method

.method public getService()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public hasLateConstraint()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    return v0
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 423
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 424
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 427
    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 435
    iget-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    iget-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 437
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return-void

    :cond_0
    move v0, v2

    .line 424
    goto :goto_0

    :cond_1
    move v0, v2

    .line 425
    goto :goto_1

    :cond_2
    move v0, v2

    .line 432
    goto :goto_2

    :cond_3
    move v0, v2

    .line 433
    goto :goto_3

    :cond_4
    move v0, v2

    .line 438
    goto :goto_4

    :cond_5
    move v1, v2

    .line 439
    goto :goto_5
.end method
