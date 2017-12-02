.class public final Landroid/location/GnssMeasurementsEvent;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementsEvent$1;,
        Landroid/location/GnssMeasurementsEvent$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurementsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_GNSS_LOCATION_DISABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private final mClock:Landroid/location/GnssClock;

.field private final mReadOnlyMeasurements:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Landroid/location/GnssMeasurementsEvent$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementsEvent$1;-><init>()V

    .line 127
    sput-object v0, Landroid/location/GnssMeasurementsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/location/GnssClock;[Landroid/location/GnssMeasurement;)V
    .locals 3
    .param p1, "clock"    # Landroid/location/GnssClock;
    .param p2, "measurements"    # [Landroid/location/GnssMeasurement;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "Parameter \'clock\' must not be null."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 101
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    .line 107
    :goto_0
    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    .line 96
    return-void

    .line 103
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "measurementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GnssMeasurement;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getClock()Landroid/location/GnssClock;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[ GnssMeasurementsEvent:\n\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {v3}, Landroid/location/GnssClock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "measurement$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurement;

    .line 172
    .local v1, "measurement":Landroid/location/GnssMeasurement;
    invoke-virtual {v1}, Landroid/location/GnssMeasurement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    .end local v1    # "measurement":Landroid/location/GnssMeasurement;
    :cond_0
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mClock:Landroid/location/GnssClock;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 159
    .local v1, "measurementsCount":I
    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    new-array v3, v1, [Landroid/location/GnssMeasurement;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/GnssMeasurement;

    .line 160
    .local v0, "measurementsArray":[Landroid/location/GnssMeasurement;
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 154
    return-void
.end method
