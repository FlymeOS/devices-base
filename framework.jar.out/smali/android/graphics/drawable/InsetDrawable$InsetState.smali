.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field mInsetBottom:I

.field mInsetLeft:I

.field mInsetRight:I

.field mInsetTop:I

.field private mThemeAttrs:[I


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 255
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 256
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 257
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 258
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 265
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 266
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 267
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 269
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 270
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    .line 260
    :cond_0
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 1
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    .line 290
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 291
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 292
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 293
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 289
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 301
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 303
    .local v1, "densityDpi":I
    if-nez v1, :cond_0

    const/16 v0, 0xa0

    .line 304
    .local v0, "density":I
    :goto_0
    iget v3, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v3, :cond_1

    .line 305
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 313
    .end local v0    # "density":I
    .end local v1    # "densityDpi":I
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_1
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v3, v2, p1, v4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V

    return-object v3

    .line 303
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    .restart local v1    # "densityDpi":I
    :cond_0
    move v0, v1

    .restart local v0    # "density":I
    goto :goto_0

    .line 307
    :cond_1
    move-object v2, p0

    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_1

    .line 310
    .end local v0    # "density":I
    .end local v1    # "densityDpi":I
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_2
    move-object v2, p0

    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_1
.end method

.method onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    .line 276
    return-void
.end method
