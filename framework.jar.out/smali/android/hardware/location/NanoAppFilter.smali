.class public Landroid/hardware/location/NanoAppFilter;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/NanoAppFilter$1;
    }
.end annotation


# static fields
.field public static final APP_ANY:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/NanoAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_VERSION_ANY:I = -0x1

.field public static final FLAGS_VERSION_GREAT_THAN:I = 0x2

.field public static final FLAGS_VERSION_LESS_THAN:I = 0x4

.field public static final FLAGS_VERSION_STRICTLY_EQUAL:I = 0x8

.field public static final HUB_ANY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NanoAppFilter"

.field public static final VENDOR_ANY:I = -0x1


# instance fields
.field private mAppId:J

.field private mAppIdVendorMask:J

.field private mAppVersion:I

.field private mContextHubId:I

.field private mVersionRestrictionMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroid/hardware/location/NanoAppFilter$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppFilter$1;-><init>()V

    .line 133
    sput-object v0, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(JIIJ)V
    .locals 1
    .param p1, "appId"    # J
    .param p3, "appVersion"    # I
    .param p4, "versionMask"    # I
    .param p5, "vendorMask"    # J

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 110
    iput-wide p1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 111
    iput p3, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 112
    iput p4, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 113
    iput-wide p5, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private versionsMatch(III)Z
    .locals 1
    .param p1, "versionRestrictionMask"    # I
    .param p2, "expected"    # I
    .param p3, "actual"    # I

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v0

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    if-ne v0, v1, :cond_2

    .line 129
    :cond_0
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 130
    :cond_1
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoAppFilter;->versionsMatch(III)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    return-void
.end method
