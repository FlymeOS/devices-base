.class public final Landroid/net/wifi/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiActivityEnergyInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_STATE_INVALID:I = 0x0

.field public static final STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final STACK_STATE_STATE_IDLE:I = 0x3

.field public static final STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field public mControllerEnergyUsed:J

.field public mControllerIdleTimeMs:J

.field public mControllerRxTimeMs:J

.field public mControllerTxTimeMs:J

.field public mControllerTxTimePerLevelMs:[J

.field public mStackState:I

.field public mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiActivityEnergyInfo$1;-><init>()V

    .line 96
    sput-object v0, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(JIJ[JJJJ)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "stackState"    # I
    .param p4, "txTime"    # J
    .param p6, "txTimePerLevel"    # [J
    .param p7, "rxTime"    # J
    .param p9, "idleTime"    # J
    .param p11, "energyUsed"    # J

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 75
    iput p3, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 76
    iput-wide p4, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 77
    iput-object p6, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    .line 78
    iput-wide p7, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 79
    iput-wide p9, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 80
    iput-wide p11, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillisAtLevel(I)J
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 149
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStackState()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 184
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 185
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 186
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 184
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiActivityEnergyInfo{ timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, " mStackState="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, " mControllerTxTimeMs="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string/jumbo v1, " mControllerTxTimePerLevelMs="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, " mControllerRxTimeMs="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, " mControllerIdleTimeMs="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v1, " mControllerEnergyUsed="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget-wide v2, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v1, " }"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 119
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    return-void
.end method
