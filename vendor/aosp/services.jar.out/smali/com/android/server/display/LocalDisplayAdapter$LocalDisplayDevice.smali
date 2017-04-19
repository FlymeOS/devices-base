.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private mActiveColorTransformId:I

.field private mActiveColorTransformInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultColorTransformId:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

.field private final mSupportedColorTransforms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display$ColorTransform;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    .line 144
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 149
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 148
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    .line 153
    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 154
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 168
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 169
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z

    .line 170
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v1, :cond_0

    .line 171
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 172
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 166
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    goto :goto_0
.end method

.method private findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;
    .locals 4
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$ColorTransform;

    .line 336
    .local v1, "transform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v1}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v2

    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    if-ne v2, v3, :cond_0

    .line 337
    return-object v1

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "transform":Landroid/view/Display$ColorTransform;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findDisplayInfoIndexLocked(II)I
    .locals 6
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 588
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 589
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$ColorTransform;

    .line 590
    .local v3, "transform":Landroid/view/Display$ColorTransform;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v1, v4, v0

    .line 593
    .local v1, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 594
    invoke-virtual {v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v4

    .line 593
    if-eqz v4, :cond_0

    .line 595
    return v0

    .line 591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 326
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    return-object v1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .prologue
    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 604
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 602
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 344
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 561
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBuiltInDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivePhysIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActiveModeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActiveColorTransformId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string/jumbo v1, "mDisplayInfos="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    const-string/jumbo v1, "mSupportedModes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_1
    const-string/jumbo v1, "mSupportedColorTransforms=["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 579
    if-eqz v0, :cond_2

    .line 580
    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 584
    :cond_3
    const-string/jumbo v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v4, :cond_5

    .line 354
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    aget-object v1, v4, v5

    .line 355
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 356
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 357
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 358
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 359
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 360
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/Display$Mode;

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 363
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v5, v4, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    .line 366
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    .line 367
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 368
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/Display$ColorTransform;

    .line 367
    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 369
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$ColorTransform;

    aput-object v4, v5, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 373
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 374
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 375
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 379
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v5, 0xc

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 384
    :cond_2
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v4, :cond_6

    .line 385
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 386
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 387
    const v5, 0x10404c3

    .line 386
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 388
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 390
    const v4, 0x11200a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 391
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v5, "goldfish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 392
    const-string/jumbo v4, "ro.emulator.circular"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 390
    if-eqz v4, :cond_4

    .line 393
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 395
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 396
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 397
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 398
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 399
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 421
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v4

    .line 401
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 402
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 403
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 404
    const v6, 0x10404c4

    .line 403
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 405
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 406
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 410
    const-string/jumbo v4, "portrait"

    const-string/jumbo v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 411
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 416
    :cond_7
    const-string/jumbo v4, "persist.demo.hdmirotates"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 417
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_2
.end method

.method public requestColorTransformAndModeInTransactionLocked(II)V
    .locals 5
    .param p1, "colorTransformId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 518
    if-nez p2, :cond_3

    .line 519
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 526
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    .line 527
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    .line 533
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 534
    .local v0, "physIndex":I
    if-gez v0, :cond_2

    .line 535
    const-string/jumbo v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested color transform, mode ID pair ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    const-string/jumbo v3, ") not available, trying color transform with default mode ID"

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 539
    if-gez v0, :cond_2

    .line 540
    const-string/jumbo v1, "LocalDisplayAdapter"

    const-string/jumbo v2, "Requested color transform with default mode ID still not available, falling back to default color transform with default mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    move-result v0

    .line 547
    :cond_2
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    if-ne v1, v0, :cond_5

    .line 548
    return-void

    .line 520
    .end local v0    # "physIndex":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 521
    const-string/jumbo v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported by this display,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 522
    const-string/jumbo v3, " reverting to default display mode."

    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    goto/16 :goto_0

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 529
    const-string/jumbo v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested color transform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string/jumbo v3, " by this display, reverting to the default color transform"

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    goto/16 :goto_1

    .line 550
    .restart local v0    # "physIndex":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    .line 551
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 552
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 553
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 554
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    .line 555
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    .line 556
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 517
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 9
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 427
    sget-boolean v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eq v0, p1, :cond_6

    const/4 v8, 0x1

    .line 430
    .local v8, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-eq v0, p2, :cond_7

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    .line 431
    .local v4, "brightnessChanged":Z
    :goto_2
    if-nez v8, :cond_3

    if-eqz v4, :cond_8

    .line 432
    :cond_3
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 433
    .local v6, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    .line 434
    .local v7, "token":Landroid/os/IBinder;
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 436
    .local v2, "oldState":I
    if-eqz v8, :cond_4

    .line 437
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 438
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 441
    :cond_4
    if-eqz v4, :cond_5

    .line 442
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 448
    :cond_5
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIILandroid/os/IBinder;)V

    return-object v0

    .line 429
    .end local v2    # "oldState":I
    .end local v4    # "brightnessChanged":Z
    .end local v6    # "displayId":I
    .end local v7    # "token":Landroid/os/IBinder;
    .end local v8    # "stateChanged":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "stateChanged":Z
    goto :goto_1

    .line 430
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "brightnessChanged":Z
    goto :goto_2

    .line 512
    :cond_8
    return-object v5
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 21
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    .line 180
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 181
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v7, "colorTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$ColorTransform;>;"
    const/4 v8, 0x0

    .line 186
    .local v8, "colorTransformsAdded":Z
    const/4 v3, 0x0

    .line 187
    .local v3, "activeColorTransform":Landroid/view/Display$ColorTransform;
    const/4 v11, 0x0

    .end local v3    # "activeColorTransform":Landroid/view/Display$ColorTransform;
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    .line 188
    aget-object v12, p1, v11

    .line 190
    .local v12, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v10, 0x0

    .line 191
    .local v10, "existingMode":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 192
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/Display$ColorTransform;

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v19

    iget v0, v12, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 193
    const/4 v10, 0x1

    .line 197
    :cond_0
    if-eqz v10, :cond_3

    .line 187
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 200
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findColorTransform(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Landroid/view/Display$ColorTransform;

    move-result-object v5

    .line 201
    .local v5, "colorTransform":Landroid/view/Display$ColorTransform;
    if-nez v5, :cond_4

    .line 202
    iget v0, v12, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->colorTransform:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->createColorTransform(I)Landroid/view/Display$ColorTransform;

    move-result-object v5

    .line 203
    const/4 v8, 0x1

    .line 205
    :cond_4
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    move/from16 v0, p2

    if-ne v11, v0, :cond_1

    .line 207
    move-object v3, v5

    .local v3, "activeColorTransform":Landroid/view/Display$ColorTransform;
    goto :goto_2

    .line 212
    .end local v3    # "activeColorTransform":Landroid/view/Display$ColorTransform;
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    .end local v10    # "existingMode":Z
    .end local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v13    # "j":I
    :cond_5
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v17, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v14, 0x0

    .line 214
    .local v14, "modesAdded":Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_a

    .line 215
    aget-object v12, p1, v11

    .line 219
    .restart local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v10, 0x0

    .line 220
    .restart local v10    # "existingMode":Z
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 221
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 222
    const/4 v10, 0x1

    .line 226
    :cond_6
    if-eqz v10, :cond_8

    .line 214
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 220
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 232
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v15

    .line 233
    .local v15, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v15, :cond_9

    .line 234
    new-instance v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-direct {v15, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 235
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v14, 0x1

    .line 237
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 241
    .end local v10    # "existingMode":Z
    .end local v12    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v13    # "j":I
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_a
    const/4 v4, 0x0

    .line 242
    .local v4, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_b

    .line 243
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 244
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v19, p1, p2

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 245
    move-object v4, v15

    .line 251
    .end local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    move/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 253
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 258
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    move/from16 v19, v0

    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 260
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 265
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 266
    move v9, v8

    .line 267
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    move/from16 v18, v14

    .line 270
    :goto_8
    if-nez v18, :cond_e

    if-eqz v9, :cond_12

    .line 274
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 277
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "record$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 278
    .restart local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display$Mode;->getModeId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 242
    .end local v16    # "record$iterator":Ljava/util/Iterator;
    .restart local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 265
    .end local v4    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v15    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_10
    const/4 v9, 0x1

    .local v9, "colorTransformsChanged":Z
    goto :goto_7

    .line 267
    .end local v9    # "colorTransformsChanged":Z
    :cond_11
    const/16 v18, 0x1

    .local v18, "recordsChanged":Z
    goto :goto_8

    .line 271
    .end local v18    # "recordsChanged":Z
    :cond_12
    const/16 v19, 0x0

    return v19

    .line 280
    .restart local v16    # "record$iterator":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 281
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "colorTransform$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$ColorTransform;

    .line 282
    .restart local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 287
    .end local v5    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(II)I

    move-result v19

    if-gez v19, :cond_17

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 289
    const-string/jumbo v19, "LocalDisplayAdapter"

    const-string/jumbo v20, "Default display mode no longer available, using currently active mode as default."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_15
    iget-object v0, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display$Mode;->getModeId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 294
    const-string/jumbo v19, "LocalDisplayAdapter"

    const-string/jumbo v20, "Default color transform no longer available, using currently active color transform as default"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_16
    invoke-virtual {v3}, Landroid/view/Display$ColorTransform;->getId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    .line 300
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v19

    if-gez v19, :cond_19

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 302
    const-string/jumbo v19, "LocalDisplayAdapter"

    const-string/jumbo v20, "Active display mode no longer available, reverting to default mode."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 306
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 310
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorTransforms:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v19

    if-gez v19, :cond_1b

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 312
    const-string/jumbo v19, "LocalDisplayAdapter"

    const-string/jumbo v20, "Active color transform no longer available, reverting to default transform."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultColorTransformId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformId:I

    .line 316
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorTransformInvalid:Z

    .line 319
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 320
    const/16 v19, 0x1

    return v19
.end method
