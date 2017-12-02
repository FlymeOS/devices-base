.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final SURFACE_TYPE_SURFACE_VIEW:I

.field private final SURFACE_TYPE_UNKNOWN:I

.field private final mConfiguredDataspace:I

.field private final mConfiguredFormat:I

.field private final mConfiguredGenerationId:I

.field private final mConfiguredSize:Landroid/util/Size;

.field private final mIsDeferredConfig:Z

.field private final mRotation:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceGroupId:I

.field private final mSurfaceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    .line 394
    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;I)V
    .locals 4
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "rotation"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 107
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 196
    const-string/jumbo v0, "Surface must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v0, "Rotation constant"

    const/4 v1, 0x3

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 198
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 199
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 200
    iput-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    .line 201
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 202
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 203
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 204
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 205
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 206
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    .line 319
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 320
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 321
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 322
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 323
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 324
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 325
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 326
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 313
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 107
    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 112
    iput v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, "rotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .local v3, "surfaceSetId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    .local v4, "surfaceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 337
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .local v0, "height":I
    sget-object v6, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 339
    .local v2, "surface":Landroid/view/Surface;
    const-string/jumbo v6, "Rotation constant"

    const/4 v7, 0x3

    invoke-static {v1, v8, v7, v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 340
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 341
    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    .line 342
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 343
    if-eqz v2, :cond_0

    .line 344
    iput v9, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 345
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 346
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 347
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v6

    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 348
    iget-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    move-result v6

    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 349
    iput-boolean v10, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 332
    :goto_0
    return-void

    .line 351
    :cond_0
    iput v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 352
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v5, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 353
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v6

    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 354
    iput v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 356
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v6

    .line 355
    iput v6, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 357
    iput-boolean v8, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .locals 5
    .param p1, "surfaceSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v4, 0x22

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 107
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 112
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 235
    const-string/jumbo v0, "surfaceSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "klass must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p2, v0, :cond_0

    .line 238
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 246
    :goto_0
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    .line 248
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 249
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 250
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 251
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 252
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 253
    iput-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 234
    return-void

    .line 239
    :cond_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p2, v0, :cond_1

    .line 240
    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    goto :goto_0

    .line 242
    :cond_1
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknow surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 96
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 168
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 445
    return v3

    .line 446
    :cond_0
    if-ne p0, p1, :cond_1

    .line 447
    return v2

    .line 448
    :cond_1
    instance-of v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v4, :cond_7

    move-object v1, p1

    .line 449
    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 450
    .local v1, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    iget-object v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    if-ne v4, v5, :cond_4

    .line 451
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v4, v5, :cond_3

    const/4 v0, 0x1

    .line 452
    .local v0, "iSSurfaceEqual":Z
    :goto_0
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v4, :cond_2

    .line 453
    const-string/jumbo v4, "OutputConfiguration"

    const-string/jumbo v5, "deferred config has the same surface"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_2
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v4, v5, :cond_6

    if-eqz v0, :cond_6

    .line 458
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 456
    if-eqz v4, :cond_6

    .line 459
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v4, v5, :cond_6

    .line 460
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v4, v5, :cond_6

    .line 461
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v4, v5, :cond_6

    .line 462
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v4, v5, :cond_6

    .line 463
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v5, v1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v4, v5, :cond_5

    .line 456
    :goto_1
    return v2

    .line 451
    .end local v0    # "iSSurfaceEqual":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "iSSurfaceEqual":Z
    goto :goto_0

    .line 450
    .end local v0    # "iSSurfaceEqual":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "iSSurfaceEqual":Z
    goto :goto_0

    :cond_5
    move v2, v3

    .line 463
    goto :goto_1

    :cond_6
    move v2, v3

    .line 456
    goto :goto_1

    .line 465
    .end local v0    # "iSSurfaceEqual":Z
    .end local v1    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_7
    return v3
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 476
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 478
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    aput v1, v0, v3

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v1, v0, v4

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    aput v1, v0, v5

    .line 479
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    aput v1, v0, v6

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 477
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    .line 482
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 483
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hashCode()I

    move-result v1

    aput v1, v0, v3

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    aput v1, v0, v4

    .line 484
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    aput v1, v0, v5

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    aput v1, v0, v6

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 482
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public isDeferredConfiguration()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public setDeferredSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 289
    const-string/jumbo v1, "Surface must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Deferred surface is already set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 296
    .local v0, "surfaceSize":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    const-string/jumbo v1, "OutputConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deferred surface size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string/jumbo v3, " is different with pre-configured size "

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    const-string/jumbo v3, ", the pre-configured size will be used."

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    .line 288
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    :cond_1
    return-void
.end method
