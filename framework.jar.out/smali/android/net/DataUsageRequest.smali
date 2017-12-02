.class public final Landroid/net/DataUsageRequest;
.super Ljava/lang/Object;
.source "DataUsageRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DataUsageRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataUsageRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCELABLE_KEY:Ljava/lang/String; = "DataUsageRequest"

.field public static final REQUEST_ID_UNSET:I


# instance fields
.field public final requestId:I

.field public final template:Landroid/net/NetworkTemplate;

.field public final thresholdInBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/net/DataUsageRequest$1;

    invoke-direct {v0}, Landroid/net/DataUsageRequest$1;-><init>()V

    .line 72
    sput-object v0, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(ILandroid/net/NetworkTemplate;J)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "thresholdInBytes"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/net/DataUsageRequest;->requestId:I

    .line 56
    iput-object p2, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    .line 57
    iput-wide p3, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 99
    instance-of v2, p1, Landroid/net/DataUsageRequest;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 100
    check-cast v0, Landroid/net/DataUsageRequest;

    .line 101
    .local v0, "that":Landroid/net/DataUsageRequest;
    iget v2, v0, Landroid/net/DataUsageRequest;->requestId:I

    iget v3, p0, Landroid/net/DataUsageRequest;->requestId:I

    if-ne v2, v3, :cond_1

    .line 102
    iget-object v2, v0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 101
    if-eqz v2, :cond_1

    .line 103
    iget-wide v2, v0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    iget-wide v4, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 101
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/DataUsageRequest;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataUsageRequest [ requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v1, ", networkTemplate="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    iget-object v1, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, ", thresholdInBytes="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget-wide v2, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, " ]"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-wide v0, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    return-void
.end method
