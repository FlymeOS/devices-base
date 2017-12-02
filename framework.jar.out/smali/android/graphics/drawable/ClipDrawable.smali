.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final MAX_LEVEL:I = 0x2710

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 237
    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 82
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 133
    .local v0, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v0, :cond_0

    .line 134
    return-void

    .line 138
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-set0(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)[I

    .line 144
    iget v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    const/4 v2, 0x2

    .line 143
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 146
    iget v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 131
    return-void
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
    .line 123
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-get0(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-get0(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string/jumbo v2, ": <clip> tag requires a \'drawable\' attribute or "

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "child tag defining a drawable"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 103
    iget-object v2, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 104
    .local v2, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v2, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-get0(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    invoke-static {v2}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-get0(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 112
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    return-void

    .line 113
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/ClipDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 176
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 181
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 182
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v9

    .line 184
    .local v9, "level":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 185
    .local v1, "w":I
    const/4 v8, 0x0

    .line 186
    .local v8, "iw":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 187
    add-int/lit8 v0, v1, 0x0

    rsub-int v10, v9, 0x2710

    mul-int/2addr v0, v10

    div-int/lit16 v0, v0, 0x2710

    sub-int/2addr v1, v0

    .line 190
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 191
    .local v2, "h":I
    const/4 v7, 0x0

    .line 192
    .local v7, "ih":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 193
    add-int/lit8 v0, v2, 0x0

    rsub-int v10, v9, 0x2710

    mul-int/2addr v0, v10

    div-int/lit16 v0, v0, 0x2710

    sub-int/2addr v2, v0

    .line 196
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLayoutDirection()I

    move-result v5

    .line 197
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 199
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 202
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 160
    .local v2, "opacity":I
    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 161
    :cond_0
    return v4

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v1

    .line 165
    .local v1, "level":I
    const/16 v3, 0x2710

    if-lt v1, v3, :cond_2

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    return v3

    .line 170
    :cond_2
    const/4 v3, -0x3

    return v3
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
    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ClipDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 94
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 95
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    .line 153
    const/4 v0, 0x1

    return v0
.end method
