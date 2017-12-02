.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScaleState"
.end annotation


# static fields
.field private static final DO_NOT_SCALE:F = -1.0f


# instance fields
.field mGravity:I

.field mInitialLevel:I

.field mScaleHeight:F

.field mScaleWidth:F

.field private mThemeAttrs:[I

.field mUseIntrinsicSizeAsMin:Z


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 266
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 259
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 260
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 261
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 262
    iput-boolean v1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 263
    iput v1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 270
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 271
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 272
    iget-boolean v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 273
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 279
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable;)V

    return-object v0
.end method
