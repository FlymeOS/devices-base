.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mBoundsChanged:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mExtent:I

.field private mHasSetAlpha:Z

.field private mHasSetColorFilter:Z

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 35
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .prologue
    .line 203
    iget-boolean v2, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v2, :cond_2

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 204
    :goto_0
    if-eqz p5, :cond_3

    .line 205
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 206
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 207
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 208
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    .line 209
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    .line 208
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .line 203
    :cond_2
    const/4 v0, 0x1

    .local v0, "changed":Z
    goto :goto_0

    .line 215
    .end local v0    # "changed":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 216
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 217
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 218
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 219
    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    add-int/2addr v4, p4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 218
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    :cond_4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .prologue
    .line 188
    if-eqz p3, :cond_2

    .line 189
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 194
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 186
    :cond_1
    return-void

    .line 191
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 264
    if-eqz p1, :cond_2

    .line 265
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 270
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 272
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 276
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 263
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    iget-boolean v13, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 121
    .local v13, "vertical":Z
    iget v8, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 122
    .local v8, "extent":I
    iget v10, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 124
    .local v10, "range":I
    const/4 v7, 0x1

    .line 125
    .local v7, "drawTrack":Z
    const/4 v6, 0x1

    .line 126
    .local v6, "drawThumb":Z
    if-lez v8, :cond_0

    if-gt v10, v8, :cond_1

    .line 127
    :cond_0
    if-eqz v13, :cond_2

    iget-boolean v7, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 128
    .local v7, "drawTrack":Z
    :goto_0
    const/4 v6, 0x0

    .line 131
    .end local v7    # "drawTrack":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 132
    .local v9, "r":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    return-void

    .line 127
    .end local v9    # "r":Landroid/graphics/Rect;
    .local v7, "drawTrack":Z
    :cond_2
    iget-boolean v7, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .local v7, "drawTrack":Z
    goto :goto_0

    .line 136
    .end local v7    # "drawTrack":Z
    .restart local v9    # "r":Landroid/graphics/Rect;
    :cond_3
    if-eqz v7, :cond_4

    .line 137
    invoke-direct {p0, p1, v9, v13}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 140
    :cond_4
    if-eqz v6, :cond_5

    .line 141
    if-eqz v13, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 142
    .local v11, "scrollBarLength":I
    :goto_1
    if-eqz v13, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 144
    .local v12, "thickness":I
    :goto_2
    invoke-static {v11, v12, v8, v10}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbLength(IIII)I

    move-result v4

    .line 147
    .local v4, "thumbLength":I
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 146
    invoke-static {v11, v4, v8, v10, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    move-result v3

    .local v3, "thumbOffset":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move v5, v13

    .line 149
    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 119
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbLength":I
    .end local v11    # "scrollBarLength":I
    .end local v12    # "thickness":I
    :cond_5
    return-void

    .line 141
    :cond_6
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    .restart local v11    # "scrollBarLength":I
    goto :goto_1

    .line 142
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 2
    .param p1, "vertical"    # Z

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p1, :cond_2

    .line 284
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_3
    :goto_1
    return v0

    .line 288
    :cond_4
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    .line 366
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 163
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 164
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 165
    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public mutate()Landroid/widget/ScrollBarDrawable;
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 295
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 304
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 307
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    .line 309
    :cond_4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 154
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 171
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 174
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 177
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 180
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 183
    :cond_3
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 372
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 371
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 314
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    .line 317
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 326
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 313
    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 66
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 338
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    .line 341
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 347
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 350
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 337
    :cond_3
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 245
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 254
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eq v0, p4, :cond_0

    .line 104
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 106
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 109
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-eq v0, p2, :cond_3

    .line 110
    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 111
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 112
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 114
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 102
    :cond_2
    return-void

    .line 109
    :cond_3
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    goto :goto_0
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, " extent="

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " V"

    .line 382
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    const-string/jumbo v0, " H"

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 377
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method
