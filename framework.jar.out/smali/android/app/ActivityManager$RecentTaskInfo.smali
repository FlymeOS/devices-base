.class public Landroid/app/ActivityManager$RecentTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RecentTaskInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public affiliatedTaskColor:I

.field public affiliatedTaskId:I

.field public baseActivity:Landroid/content/ComponentName;

.field public baseIntent:Landroid/content/Intent;

.field public bounds:Landroid/graphics/Rect;

.field public description:Ljava/lang/CharSequence;

.field public firstActiveTime:J

.field public id:I

.field public isDockable:Z

.field public lastActiveTime:J

.field public numActivities:I

.field public origActivity:Landroid/content/ComponentName;

.field public persistentId:I

.field public realActivity:Landroid/content/ComponentName;

.field public resizeMode:I

.field public stackId:I

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1468
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$1;-><init>()V

    .line 1467
    sput-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1280
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1477
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1447
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1448
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1449
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 1451
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .line 1450
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 1458
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1459
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 1462
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1461
    :goto_2
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 1463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .line 1443
    return-void

    :cond_0
    move-object v0, v1

    .line 1446
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1451
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1462
    goto :goto_2

    :cond_3
    move v0, v3

    .line 1463
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1406
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1409
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1414
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1415
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1416
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-static {v2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1418
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v2, :cond_1

    .line 1419
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, p1, v1}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1424
    :goto_1
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    iget-wide v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1427
    iget-wide v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1428
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1431
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1432
    iget v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1434
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1439
    :goto_2
    iget-boolean v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    return-void

    .line 1412
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1437
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1439
    goto :goto_3
.end method
