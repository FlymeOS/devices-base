.class public Landroid/hardware/location/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mMaxPacketLengthBytes:I

.field private mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

.field private mName:Ljava/lang/String;

.field private mPeakMips:F

.field private mPeakPowerDrawMw:F

.field private mPlatformVersion:I

.field private mSleepPowerDrawMw:F

.field private mStaticSwVersion:I

.field private mStoppedPowerDrawMw:F

.field private mSupportedSensors:[I

.field private mToolchain:Ljava/lang/String;

.field private mToolchainVersion:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Landroid/hardware/location/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubInfo$1;-><init>()V

    .line 410
    sput-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "numSupportedSensors":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 383
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 384
    sget-object v1, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/location/MemoryRegion;

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    return v0
.end method

.method public getMaxPacketLengthBytes()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    return v0
.end method

.method public getMemoryRegions()[Landroid/hardware/location/MemoryRegion;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeakMips()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    return v0
.end method

.method public getPeakPowerDrawMw()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    return v0
.end method

.method public getPlatformVersion()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    return v0
.end method

.method public getSleepPowerDrawMw()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    return v0
.end method

.method public getStaticSwVersion()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    return v0
.end method

.method public getStoppedPowerDrawMw()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    return v0
.end method

.method public getSupportedSensors()[I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getToolchain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    return-object v0
.end method

.method public getToolchainVersion()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 87
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 86
    return-void
.end method

.method public setMaxPacketLenBytes(I)V
    .locals 0
    .param p1, "bytes"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 66
    return-void
.end method

.method public setMemoryRegions([Landroid/hardware/location/MemoryRegion;)V
    .locals 1
    .param p1, "memoryRegions"    # [Landroid/hardware/location/MemoryRegion;

    .prologue
    .line 345
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 344
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPeakMips(F)V
    .locals 0
    .param p1, "peakMips"    # F

    .prologue
    .line 227
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 226
    return-void
.end method

.method public setPeakPowerDrawMw(F)V
    .locals 0
    .param p1, "peakPowerDrawMw"    # F

    .prologue
    .line 299
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 298
    return-void
.end method

.method public setPlatformVersion(I)V
    .locals 0
    .param p1, "platformVersion"    # I

    .prologue
    .line 167
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 166
    return-void
.end method

.method public setSleepPowerDrawMw(F)V
    .locals 0
    .param p1, "sleepPowerDrawMw"    # F

    .prologue
    .line 277
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 276
    return-void
.end method

.method public setStaticSwVersion(I)V
    .locals 0
    .param p1, "staticSwVersion"    # I

    .prologue
    .line 187
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    .line 186
    return-void
.end method

.method public setStoppedPowerDrawMw(F)V
    .locals 0
    .param p1, "stoppedPowerDrawMw"    # F

    .prologue
    .line 251
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 250
    return-void
.end method

.method public setSupportedSensors([I)V
    .locals 1
    .param p1, "supportedSensors"    # [I

    .prologue
    .line 332
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 331
    return-void
.end method

.method public setToolchain(Ljava/lang/String;)V
    .locals 0
    .param p1, "toolchain"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setToolchainVersion(I)V
    .locals 0
    .param p1, "toolchainVersion"    # I

    .prologue
    .line 207
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 206
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    const-string/jumbo v0, ""

    .line 351
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tVendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ToolChain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tPlatformVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", StaticSwVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tPeakMips : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", StoppedPowerDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PeakPowerDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MaxPacketLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tSupported sensors : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tMemory Regions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 392
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 400
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 401
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 402
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 403
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 407
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 391
    return-void
.end method
