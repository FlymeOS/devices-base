.class Lcom/android/server/am/LaunchingTaskPositioner;
.super Ljava/lang/Object;
.source "LaunchingTaskPositioner.java"


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mDefaultFreeformWidth:I

.field private mDefaultStartBoundsConfigurationSet:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    .line 40
    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "proposal"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 267
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 268
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 269
    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 270
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 270
    if-nez v3, :cond_0

    .line 272
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 270
    if-eqz v3, :cond_1

    .line 273
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 266
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v4
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 291
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 292
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 291
    :cond_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 281
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 282
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 281
    :cond_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 296
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 297
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 296
    :cond_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 286
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 287
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 286
    :cond_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .prologue
    .line 161
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    .line 162
    .local v0, "height":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_0

    .line 163
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 165
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 168
    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    .line 151
    .local v0, "width":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_0

    .line 152
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 154
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 157
    :cond_1
    return v0
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "restarted":Z
    :cond_0
    invoke-static {p3, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    .line 214
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToFar(Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    if-nez p4, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 207
    return-void

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 224
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    .line 225
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 223
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    const/4 v0, 0x1

    .line 228
    :cond_3
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    if-gt v1, v2, :cond_4

    .line 229
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    if-le v1, v2, :cond_0

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    .line 174
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 172
    return-void
.end method

.method private positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    .line 181
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 179
    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    .line 202
    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    add-int/2addr v3, p3

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    add-int/2addr v5, p4

    .line 201
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 200
    return-void
.end method

.method private positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 188
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 187
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 186
    return-void
.end method

.method private positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 195
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 193
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "posposal"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    packed-switch p2, :pswitch_data_0

    .line 260
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 251
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedToFar(Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 241
    packed-switch p2, :pswitch_data_0

    .line 247
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_3

    :cond_0
    :goto_0
    return v0

    .line 243
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 245
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 247
    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method configure(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 95
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 96
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    .line 97
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    .line 98
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    .line 99
    div-int/lit8 v2, v0, 0x2

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    .line 100
    div-int/lit8 v2, v1, 0x10

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    .line 101
    div-int/lit8 v2, v0, 0x10

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    .line 102
    iput-boolean v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 88
    return-void

    .line 92
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 300
    return-void
.end method

.method setDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 83
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    .line 85
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    .line 81
    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x5

    .line 117
    iget-boolean v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    if-nez v4, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    if-nez p3, :cond_1

    .line 121
    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    .line 122
    return-void

    .line 124
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v3

    .line 125
    .local v3, "width":I
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v0

    .line 126
    .local v0, "height":I
    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v2, v4, 0x70

    .line 127
    .local v2, "verticalGravity":I
    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v1, v4, 0x7

    .line 128
    .local v1, "horizontalGravity":I
    const/16 v4, 0x30

    if-ne v2, v4, :cond_3

    .line 129
    if-ne v1, v5, :cond_2

    .line 130
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    .line 116
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 134
    :cond_3
    const/16 v4, 0x50

    if-ne v2, v4, :cond_5

    .line 135
    if-ne v1, v5, :cond_4

    .line 136
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 138
    :cond_4
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 143
    :cond_5
    sget-object v4, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received unsupported gravity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    const-string/jumbo v6, ", positioning in the center instead."

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_0
.end method
