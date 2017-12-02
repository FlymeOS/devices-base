.class public final Landroid/print/PrinterCapabilitiesInfo;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl0;,
        Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl1;,
        Landroid/print/PrinterCapabilitiesInfo$1;,
        Landroid/print/PrinterCapabilitiesInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterCapabilitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

.field public static final DEFAULT_UNDEFINED:I = -0x1

.field private static final PROPERTY_COLOR_MODE:I = 0x2

.field private static final PROPERTY_COUNT:I = 0x4

.field private static final PROPERTY_DUPLEX_MODE:I = 0x3

.field private static final PROPERTY_MEDIA_SIZE:I = 0x0

.field private static final PROPERTY_RESOLUTION:I = 0x1


# instance fields
.field private mColorModes:I

.field private final mDefaults:[I

.field private mDuplexModes:I

.field private mMediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation
.end field

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -android_print_PrinterCapabilitiesInfo_lambda$3(I)V
    .locals 0
    .param p0, "currentMode"    # I

    .prologue
    .line 232
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 0
    return-void
.end method

.method static synthetic -android_print_PrinterCapabilitiesInfo_lambda$4(I)V
    .locals 0
    .param p0, "currentMode"    # I

    .prologue
    .line 236
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Landroid/print/PrinterCapabilitiesInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method static synthetic -get1(Landroid/print/PrinterCapabilitiesInfo;)[I
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    return-object v0
.end method

.method static synthetic -get2(Landroid/print/PrinterCapabilitiesInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return v0
.end method

.method static synthetic -get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method static synthetic -get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Landroid/print/PrinterCapabilitiesInfo;I)I
    .locals 0

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return p1
.end method

.method static synthetic -set1(Landroid/print/PrinterCapabilitiesInfo;I)I
    .locals 0

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return p1
.end method

.method static synthetic -set2(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set3(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object p1
.end method

.method static synthetic -set4(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(ILjava/util/function/IntConsumer;)V
    .locals 0
    .param p0, "mask"    # I
    .param p1, "enforceSingle"    # Ljava/util/function/IntConsumer;

    .prologue
    invoke-static {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    .line 650
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$1;-><init>()V

    .line 649
    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 73
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 226
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 227
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMediaSizes(Landroid/os/Parcel;)V

    .line 228
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readResolutions(Landroid/os/Parcel;)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 231
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 232
    new-instance v3, Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl0;

    invoke-direct {v3}, Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl0;-><init>()V

    .line 231
    invoke-static {v0, v3}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 235
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 236
    new-instance v3, Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl1;

    invoke-direct {v3}, Landroid/print/PrinterCapabilitiesInfo$-void__init__android_os_Parcel_parcel_LambdaImpl1;-><init>()V

    .line 235
    invoke-static {v0, v3}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 238
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readDefaults(Landroid/os/Parcel;)V

    .line 239
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v2

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 240
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v1

    if-le v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 225
    return-void

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    :cond_1
    move v1, v2

    .line 240
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 1
    .param p1, "prototype"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 80
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    .line 79
    return-void
.end method

.method private colorModesToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    iget v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 335
    .local v2, "colorModes":I
    :goto_0
    if-eqz v2, :cond_1

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v1, v4, v3

    .line 337
    .local v1, "colorMode":I
    not-int v3, v1

    and-int/2addr v2, v3

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 339
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_0
    invoke-static {v1}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 343
    .end local v1    # "colorMode":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private duplexModesToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    iget v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 351
    .local v2, "duplexModes":I
    :goto_0
    if-eqz v2, :cond_1

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v1, v4, v3

    .line 353
    .local v1, "duplexMode":I
    not-int v3, v1

    and-int/2addr v2, v3

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 355
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    invoke-static {v1}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 359
    .end local v1    # "duplexMode":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static enforceValidMask(ILjava/util/function/IntConsumer;)V
    .locals 4
    .param p0, "mask"    # I
    .param p1, "enforceSingle"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 217
    move v0, p0

    .line 218
    .local v0, "current":I
    :goto_0
    if-lez v0, :cond_0

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v1, v3, v2

    .line 220
    .local v1, "currentMode":I
    not-int v2, v1

    and-int/2addr v0, v2

    .line 221
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 216
    .end local v1    # "currentMode":I
    :cond_0
    return-void
.end method

.method private readDefaults(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .local v0, "defaultCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 423
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method private readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readMediaSizes(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .local v1, "mediaSizeCount":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    .line 380
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 381
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method private readResolutions(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .local v1, "resolutionCount":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    .line 402
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 403
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method private writeDefaults(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 428
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v2

    .line 429
    .local v0, "defaultCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 431
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method private writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {p1, p2}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private writeMediaSizes(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 364
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_0

    .line 365
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return-void

    .line 368
    :cond_0
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 369
    .local v1, "mediaSizeCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 371
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    return-void
.end method

.method private writeResolutions(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 386
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 387
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 391
    .local v1, "resolutionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 393
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 5
    .param p1, "other"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    const/4 v4, 0x0

    .line 87
    if-ne p0, p1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 93
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 96
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :goto_0
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 106
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 107
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    :goto_1
    iget v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iput v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 116
    iget v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iput v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 118
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v2

    .line 119
    .local v0, "defaultCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 120
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    .end local v0    # "defaultCount":I
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_0

    .line 101
    :cond_2
    iput-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_0

    .line 109
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_1

    .line 112
    :cond_4
    iput-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_1

    .line 86
    .restart local v0    # "defaultCount":I
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    if-ne p0, p1, :cond_0

    .line 276
    return v4

    .line 278
    :cond_0
    if-nez p1, :cond_1

    .line 279
    return v3

    .line 281
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 282
    return v3

    :cond_2
    move-object v0, p1

    .line 284
    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    .line 285
    .local v0, "other":Landroid/print/PrinterCapabilitiesInfo;
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v1, :cond_3

    .line 286
    iget-object v1, v0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v1, :cond_4

    .line 287
    return v3

    .line 289
    :cond_3
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 290
    return v3

    .line 292
    :cond_4
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v1, :cond_5

    .line 293
    iget-object v1, v0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 294
    return v3

    .line 296
    :cond_5
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 297
    return v3

    .line 299
    :cond_6
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v1, :cond_7

    .line 300
    iget-object v1, v0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 301
    return v3

    .line 303
    :cond_7
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 304
    return v3

    .line 306
    :cond_8
    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    if-eq v1, v2, :cond_9

    .line 307
    return v3

    .line 309
    :cond_9
    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iget v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    if-eq v1, v2, :cond_a

    .line 310
    return v3

    .line 312
    :cond_a
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v2, v0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 313
    return v3

    .line 315
    :cond_b
    return v4
.end method

.method public getColorModes()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method public getDefaults()Landroid/print/PrintAttributes;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 183
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 185
    .local v0, "builder":Landroid/print/PrintAttributes$Builder;
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, v5}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 187
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v5, v6

    .line 188
    .local v3, "mediaSizeIndex":I
    if-ltz v3, :cond_0

    .line 189
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, v5}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 192
    :cond_0
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v6, 0x1

    aget v4, v5, v6

    .line 193
    .local v4, "resolutionIndex":I
    if-ltz v4, :cond_1

    .line 194
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, v5}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 197
    :cond_1
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 198
    .local v1, "colorMode":I
    if-lez v1, :cond_2

    .line 199
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 202
    :cond_2
    iget-object v5, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    .line 203
    .local v2, "duplexMode":I
    if-lez v2, :cond_3

    .line 204
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 207
    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v5

    return-object v5
.end method

.method public getDuplexModes()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return v0
.end method

.method public getMediaSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public getResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 262
    const/16 v0, 0x1f

    .line 264
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 265
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 266
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 267
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    add-int v1, v2, v3

    .line 268
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    add-int v1, v2, v3

    .line 269
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 270
    return v1

    .line 264
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    goto :goto_0

    .line 265
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    .line 266
    :cond_2
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "minMargins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v1, ", mediaSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v1, ", resolutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v1, ", colorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->colorModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v1, ", duplexModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->duplexModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 250
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-direct {p0, v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V

    .line 251
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMediaSizes(Landroid/os/Parcel;)V

    .line 252
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeResolutions(Landroid/os/Parcel;)V

    .line 254
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeDefaults(Landroid/os/Parcel;)V

    .line 249
    return-void
.end method
