.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1221
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1222
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1223
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1224
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1225
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 1226
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 1220
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v3, 0x0

    .line 1191
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1192
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 1193
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 1194
    return v3

    .line 1196
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1197
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1198
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1199
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1201
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    .line 1200
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1202
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1203
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1204
    const/4 v2, 0x1

    return v2

    .line 1203
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1208
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1209
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 1210
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 1211
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 1212
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1213
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    .line 1212
    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1215
    :cond_0
    return-object v3

    .line 1217
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .prologue
    .line 47
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 48
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 49
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 54
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 56
    mul-int/lit8 v1, p1, 0x6

    .line 57
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 58
    return-object v0

    .line 61
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 62
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 63
    return-object v0

    .line 66
    .end local v1    # "fullLen":I
    :cond_1
    new-instance v2, Landroid/content/res/TypedArray;

    .line 67
    mul-int/lit8 v3, p1, 0x6

    new-array v3, v3, [I

    .line 68
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 66
    invoke-direct {v2, p0, v3, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    return-object v2
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 9
    .param p1, "scrap"    # [I

    .prologue
    const/4 v8, 0x0

    .line 1120
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1121
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1124
    :cond_0
    const/4 v2, 0x0

    .line 1126
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1127
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1128
    .local v0, "N":I
    const/4 v4, 0x0

    .end local v2    # "attrs":[I
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 1129
    mul-int/lit8 v5, v4, 0x6

    .line 1130
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1128
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1136
    :cond_2
    add-int/lit8 v6, v5, 0x0

    aput v8, v3, v6

    .line 1138
    add-int/lit8 v6, v5, 0x1

    aget v1, v3, v6

    .line 1139
    .local v1, "attr":I
    if-eqz v1, :cond_1

    .line 1145
    if-nez v2, :cond_3

    .line 1146
    if-eqz p1, :cond_4

    array-length v6, p1

    if-ne v6, v0, :cond_4

    .line 1147
    move-object v2, p1

    .line 1148
    .local v2, "attrs":[I
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1154
    .end local v2    # "attrs":[I
    :cond_3
    :goto_2
    aput v1, v2, v4

    goto :goto_1

    .line 1150
    :cond_4
    new-array v2, v0, [I

    .restart local v2    # "attrs":[I
    goto :goto_2

    .line 1157
    .end local v1    # "attr":I
    .end local v2    # "attrs":[I
    .end local v5    # "index":I
    :cond_5
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 310
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 314
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 315
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 316
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 317
    return p2

    .line 318
    :cond_1
    const/16 v4, 0x10

    if-lt v1, v4, :cond_3

    .line 319
    const/16 v4, 0x1f

    if-gt v1, v4, :cond_3

    .line 320
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 323
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 324
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 325
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    .line 330
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getChangingConfigurations()I
    .locals 8

    .prologue
    .line 1170
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1171
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1174
    :cond_0
    const/4 v1, 0x0

    .line 1176
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1177
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1178
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1179
    mul-int/lit8 v4, v3, 0x6

    .line 1180
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    aget v5, v2, v6

    .line 1181
    .local v5, "type":I
    if-nez v5, :cond_1

    .line 1178
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1185
    :cond_1
    add-int/lit8 v6, v4, 0x4

    aget v6, v2, v6

    .line 1184
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v1, v6

    goto :goto_1

    .line 1187
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_2
    return v1
.end method

.method public getColor(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 434
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 435
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_0
    move v0, p1

    .line 439
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 441
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 442
    .local v2, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v3, v2, v5

    .line 443
    .local v3, "type":I
    if-nez v3, :cond_1

    .line 444
    return p2

    .line 445
    :cond_1
    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    .line 446
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_2

    .line 447
    add-int/lit8 v5, p1, 0x1

    aget v5, v2, v5

    return v5

    .line 448
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 449
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 450
    .local v4, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 451
    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 452
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    iget-object v7, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 451
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 453
    .local v1, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    .line 455
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    return p2

    .line 456
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_4
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 457
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 458
    .restart local v4    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 459
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 463
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t convert value at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 464
    const-string/jumbo v7, " to color: type=0x"

    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 521
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 522
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 526
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 528
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 533
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 486
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 491
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 493
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    .line 498
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDimension(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 600
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 601
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    :cond_0
    move v0, p1

    .line 605
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 607
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 608
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 609
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 610
    return p2

    .line 611
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 613
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 612
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v4

    return v4

    .line 614
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 615
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 616
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 617
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 621
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    const-string/jumbo v6, " to dimension: type=0x"

    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelOffset(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 649
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 650
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_0
    move v0, p1

    .line 654
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 656
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 657
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 658
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 659
    return p2

    .line 660
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 662
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 661
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 663
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 664
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 665
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 666
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 666
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 671
    const-string/jumbo v6, " to dimension: type=0x"

    .line 670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 671
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelSize(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 699
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 700
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_0
    move v0, p1

    .line 704
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 706
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 707
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 708
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 709
    return p2

    .line 710
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 712
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 711
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 713
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 714
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 715
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 716
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 716
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 721
    const-string/jumbo v6, " to dimension: type=0x"

    .line 720
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 720
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 918
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 919
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 923
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 924
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 925
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 930
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 385
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 386
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 390
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 391
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 392
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 393
    return p2

    .line 394
    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 395
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    return v4

    .line 396
    :cond_2
    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    .line 397
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_3

    .line 398
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    return v4

    .line 401
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 402
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 404
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 405
    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 406
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    .line 411
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getFraction(IIIF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 821
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 822
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 825
    :cond_0
    move v0, p1

    .line 826
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 828
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 829
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 830
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 831
    return p4

    .line 832
    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 834
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    int-to-float v5, p2

    int-to-float v6, p3

    .line 833
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    return v4

    .line 835
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 836
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 837
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 838
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 842
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 843
    const-string/jumbo v6, " to fraction: type=0x"

    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 843
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 348
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 349
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 353
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 354
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 355
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 356
    return p2

    .line 357
    :cond_1
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    .line 358
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2

    .line 359
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    return v3

    .line 362
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 363
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 369
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInteger(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 552
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 553
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 556
    :cond_0
    move v0, p1

    .line 557
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 559
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 560
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 561
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 562
    return p2

    .line 563
    :cond_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    .line 564
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    .line 565
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    .line 566
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 567
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 568
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 569
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 569
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 573
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, " to integer: type=0x"

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 784
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 785
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 789
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 790
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 791
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 792
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 793
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 794
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 796
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 795
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    .line 799
    :cond_2
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 744
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 747
    :cond_0
    move v0, p1

    .line 748
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 750
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 751
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 752
    .local v2, "type":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    .line 753
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 754
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    .line 755
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 757
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 756
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 758
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 759
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 760
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 761
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 761
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 766
    const-string/jumbo v6, ": You must supply a "

    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 766
    const-string/jumbo v6, " attribute."

    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .prologue
    const/4 v5, 0x0

    .line 263
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 264
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 268
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 269
    .local v2, "data":[I
    add-int/lit8 v6, p1, 0x0

    aget v3, v2, v6

    .line 271
    .local v3, "type":I
    add-int/lit8 v6, p1, 0x4

    aget v6, v2, v6

    .line 270
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v0

    .line 272
    .local v0, "changingConfigs":I
    not-int v6, p2

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 273
    return-object v5

    .line 275
    :cond_1
    if-nez v3, :cond_2

    .line 276
    return-object v5

    .line 277
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 278
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 281
    :cond_3
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 282
    .local v4, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 283
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 284
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    return-object v5

    .line 288
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 231
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 232
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 236
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 237
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 238
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 239
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 240
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 241
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 242
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    .line 241
    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 245
    .end local v0    # "cookie":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1070
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "<internal>"

    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 863
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 864
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 868
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 869
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1

    .line 870
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 871
    .local v1, "resid":I
    if-eqz v1, :cond_1

    .line 872
    return v1

    .line 875
    .end local v1    # "resid":I
    :cond_1
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 193
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 197
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 198
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 199
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 200
    return-object v4

    .line 201
    :cond_1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 202
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 206
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    return-object v4

    .line 212
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 156
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 160
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 161
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 162
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 163
    const/4 v3, 0x0

    return-object v3

    .line 164
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 165
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 168
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 169
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 174
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 949
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 950
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 954
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 957
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 891
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 892
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 896
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 897
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 898
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    .line 900
    :cond_1
    return p2
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 987
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 988
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 992
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 972
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 1008
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 1012
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1013
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 1014
    .local v1, "type":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public hasValueOrEmpty(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1028
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 1033
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1034
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 1035
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 1036
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-ne v4, v2, :cond_2

    .line 1035
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 1036
    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1052
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 1053
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1057
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    return-object v0

    .line 1060
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1084
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1091
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1092
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1093
    iput-object v1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1095
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1083
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
