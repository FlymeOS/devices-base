.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$Mode;
    }
.end annotation


# static fields
.field private static final CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field public static final COLOR_MODE_DEFAULT:I = 0x0

.field public static final COLOR_MODE_INVALID:I = -0x1

.field public static final COLOR_MODE_SRGB:I = 0x7

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field public static final FLAG_PRESENTATION:I = 0x8

.field public static final FLAG_PRIVATE:I = 0x4

.field public static final FLAG_ROUND:I = 0x10

.field public static final FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final INVALID_DISPLAY:I = -0x1

.field public static final STATE_DOZE:I = 0x3

.field public static final STATE_DOZE_SUSPEND:I = 0x4

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_VR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Display"

.field public static final TYPE_BUILT_IN:I = 0x1

.field public static final TYPE_HDMI:I = 0x2

.field public static final TYPE_OVERLAY:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x5

.field public static final TYPE_WIFI:I = 0x3


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mCachedAppHeightCompat:I

.field private mCachedAppWidthCompat:I

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayId:I

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mFlags:I

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mIsValid:Z

.field private mLastCachedAppSizeUpdate:J

.field private final mLayerStack:I

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .locals 1
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 328
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 329
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 330
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 331
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 335
    iget v0, p3, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/Display;->mLayerStack:I

    .line 336
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 337
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 338
    iget-object v0, p3, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    .line 339
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 340
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public static hasAccess(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 900
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 901
    if-ne p0, p2, :cond_1

    .line 900
    :cond_0
    :goto_0
    return v0

    .line 902
    :cond_1
    const/16 v2, 0x3e8

    if-eq p0, v2, :cond_0

    .line 903
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isSuspendedState(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1010
    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 986
    packed-switch p0, :pswitch_data_0

    .line 1000
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 988
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 990
    :pswitch_1
    const-string/jumbo v0, "OFF"

    return-object v0

    .line 992
    :pswitch_2
    const-string/jumbo v0, "ON"

    return-object v0

    .line 994
    :pswitch_3
    const-string/jumbo v0, "DOZE"

    return-object v0

    .line 996
    :pswitch_4
    const-string/jumbo v0, "DOZE_SUSPEND"

    return-object v0

    .line 998
    :pswitch_5
    const-string/jumbo v0, "VR"

    return-object v0

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 964
    packed-switch p0, :pswitch_data_0

    .line 978
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 966
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 968
    :pswitch_1
    const-string/jumbo v0, "BUILT_IN"

    return-object v0

    .line 970
    :pswitch_2
    const-string/jumbo v0, "HDMI"

    return-object v0

    .line 972
    :pswitch_3
    const-string/jumbo v0, "WIFI"

    return-object v0

    .line 974
    :pswitch_4
    const-string/jumbo v0, "OVERLAY"

    return-object v0

    .line 976
    :pswitch_5
    const-string/jumbo v0, "VIRTUAL"

    return-object v0

    .line 964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateCachedAppSizeIfNeededLocked()V
    .locals 6

    .prologue
    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 940
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 941
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 942
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 943
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 944
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 945
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 938
    :cond_0
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 918
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    .line 920
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_0

    .line 921
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 929
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_0

    .line 930
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVsyncOffsetNanos()J
    .locals 2

    .prologue
    .line 780
    monitor-enter p0

    .line 781
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 782
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getColorMode()I
    .locals 1

    .prologue
    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 744
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->colorMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .prologue
    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 579
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 580
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 581
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 582
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 576
    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 1
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 384
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 385
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .locals 1

    .prologue
    .line 752
    monitor-enter p0

    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 754
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    monitor-enter p0

    .line 615
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 616
    iget v0, p0, Landroid/view/Display;->mCachedAppHeightCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayerStack()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/view/Display;->mLayerStack:I

    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 2

    .prologue
    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 594
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 831
    monitor-enter p0

    .line 832
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 833
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 830
    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    .prologue
    .line 711
    monitor-enter p0

    .line 712
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 713
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 490
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getOverscanInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 629
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    .line 630
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->overscanRight:I

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 629
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 626
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public getPresentationDeadlineNanos()J
    .locals 2

    .prologue
    .line 798
    monitor-enter p0

    .line 799
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 800
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 871
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 872
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    .line 871
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 868
    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 850
    monitor-enter p0

    .line 851
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 852
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 853
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 849
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 541
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 542
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 538
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    .line 686
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 687
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 655
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 526
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 527
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 528
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 523
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 886
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedColorModes()[I
    .locals 2

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 765
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 766
    .local v0, "colorModes":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 763
    .end local v0    # "colorModes":[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .locals 2

    .prologue
    .line 721
    monitor-enter p0

    .line 722
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 723
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 724
    .local v0, "modes":[Landroid/view/Display$Mode;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 721
    .end local v0    # "modes":[Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedRefreshRates()[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 703
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 605
    iget v0, p0, Landroid/view/Display;->mCachedAppWidthCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 895
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public isPublicPresentation()Z
    .locals 2

    .prologue
    .line 911
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    .line 912
    const/16 v1, 0x8

    .line 911
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 370
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestColorMode(I)V
    .locals 2
    .param p1, "colorMode"    # I

    .prologue
    .line 734
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    .line 733
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 952
    monitor-enter p0

    .line 953
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 954
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    const-string/jumbo v1, ", "

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    const-string/jumbo v1, ", isValid="

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
