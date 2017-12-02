.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 361
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 113
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 114
    .local v0, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v0, :cond_0

    .line 115
    return-void

    .line 119
    :cond_0
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-set0(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)[I

    .line 124
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 126
    .local v1, "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 127
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    :goto_1
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 130
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 132
    .restart local v1    # "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_5

    :goto_2
    iput-boolean v3, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 133
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    :goto_3
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 137
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_2
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    const/4 v3, 0x2

    .line 136
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 139
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    const/4 v3, 0x3

    .line 138
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 140
    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 112
    return-void

    .restart local v1    # "tv":Landroid/util/TypedValue;
    :cond_3
    move v2, v4

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    goto :goto_1

    :cond_5
    move v3, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    goto :goto_3
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string/jumbo v2, ": <rotate> tag requires a \'drawable\' attribute or "

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "child tag defining a drawable"

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 84
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 85
    .local v2, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v2, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 90
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-get0(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 93
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    return-void

    .line 94
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/RotateDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 96
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .line 148
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 149
    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 150
    .local v6, "st":Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float v3, v8, v9

    .line 151
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float v4, v8, v9

    .line 153
    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 154
    .local v5, "saveCount":I
    iget v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 144
    return-void

    .line 150
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .restart local v3    # "px":F
    goto :goto_0

    .line 151
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .restart local v4    # "py":F
    goto :goto_1
.end method

.method public getFromDegrees()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    return v0
.end method

.method public getToDegrees()F
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v1, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 75
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 76
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method public isPivotXRelative()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    return v0
.end method

.method public isPivotYRelative()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    return v0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 313
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v1, v2, v3

    .line 314
    .local v1, "value":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 315
    .local v0, "degrees":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v0, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 317
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 318
    const/4 v2, 0x1

    return v2
.end method

.method public setFromDegrees(F)V
    .locals 1
    .param p1, "fromDegrees"    # F

    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 166
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 218
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 220
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 217
    :cond_0
    return-void
.end method

.method public setPivotXRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eq v0, p1, :cond_0

    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 244
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 241
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 272
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 269
    :cond_0
    return-void
.end method

.method public setPivotYRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eq v0, p1, :cond_0

    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 293
    :cond_0
    return-void
.end method

.method public setToDegrees(F)V
    .locals 1
    .param p1, "toDegrees"    # F

    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 189
    :cond_0
    return-void
.end method
