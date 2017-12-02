.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    .line 92
    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 60
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_1

    :cond_2
    move v0, v2

    .line 63
    goto :goto_2

    :cond_3
    move v1, v2

    .line 68
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    .prologue
    .line 40
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 41
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 42
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 43
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    .line 44
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    .line 45
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 46
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 47
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 48
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 49
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 50
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 51
    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 52
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1

    :cond_2
    move v0, v2

    .line 79
    goto :goto_2

    :cond_3
    move v1, v2

    .line 84
    goto :goto_3
.end method
