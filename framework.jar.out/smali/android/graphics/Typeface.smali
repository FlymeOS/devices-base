.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 46
    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 64
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 70
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 389
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 391
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 392
    nop

    nop

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 393
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 394
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 395
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 397
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 398
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    .line 399
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    .line 400
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    .line 401
    nop

    nop

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    .line 397
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 44
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 289
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 294
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 288
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 141
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 142
    :cond_0
    const/4 p1, 0x0

    .line 144
    :cond_1
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "ni":J
    if-eqz p0, :cond_3

    .line 147
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    .line 148
    return-object p0

    .line 151
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 155
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 157
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 159
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    .line 160
    return-object v3

    .line 164
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 165
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 167
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 169
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    return-object v1
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v2

    .line 218
    .local v2, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 220
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 221
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v4, :cond_2

    .line 192
    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 193
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_0

    monitor-exit v5

    return-object v3

    .line 197
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 198
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/FontFamily;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 200
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 201
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 202
    return-object v3

    .end local v0    # "families":[Landroid/graphics/FontFamily;
    :cond_1
    monitor-exit v5

    .line 206
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Font asset not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 262
    array-length v2, p0

    new-array v1, v2, [J

    .line 263
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 264
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 277
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 278
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 279
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 282
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 245
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 246
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 247
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, v3}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    aput-object v1, v0, v3

    .line 249
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 252
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue

    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->getflymeTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_flyme_0

    .line 180
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 28

    .prologue
    .line 328
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v21

    .line 329
    .local v21, "systemFontConfigLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string/jumbo v25, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v8, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 332
    .local v18, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v16

    .line 334
    .local v16, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v7, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v15, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 340
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 341
    .local v13, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v19, :cond_0

    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 342
    :cond_0
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 345
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 346
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 348
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v22, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 351
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 352
    .restart local v13    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 353
    if-nez v19, :cond_4

    .line 356
    sget-object v23, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 362
    .local v23, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/graphics/Typeface;->putFlymeSystemFonts(Landroid/graphics/FontListParser$Family;Landroid/graphics/Typeface;Ljava/util/Map;)V

    .line 349
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 358
    :cond_4
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v17

    .line 359
    .local v17, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [Landroid/graphics/FontFamily;

    const/16 v25, 0x0

    aput-object v17, v14, v25

    .line 360
    .local v14, "families":[Landroid/graphics/FontFamily;
    invoke-static {v14}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v23

    .restart local v23    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 365
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    .end local v14    # "families":[Landroid/graphics/FontFamily;
    .end local v17    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 366
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .line 367
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v20, v6

    .line 368
    .local v20, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v24, v0

    .line 369
    .local v24, "weight":I
    const/16 v25, 0x190

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 370
    new-instance v20, Landroid/graphics/Typeface;

    .end local v20    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 372
    .restart local v20    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/graphics/Typeface;->putFlymeSystemFonts(Landroid/graphics/FontListParser$Alias;Landroid/graphics/Typeface;Ljava/util/Map;)V

    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 376
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v20    # "newFace":Landroid/graphics/Typeface;
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v24    # "weight":I
    :catch_0
    move-exception v11

    .line 377
    .local v11, "e":Ljava/lang/RuntimeException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    .line 374
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    .restart local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_1
    sput-object v22, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 379
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v9

    .line 380
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error opening "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 383
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 384
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "XML parse exception for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 381
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v10

    .line 382
    .local v10, "e":Ljava/io/IOException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 20
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v8, Landroid/graphics/FontFamily;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "font$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/FontListParser$Font;

    .line 301
    .local v17, "font":Landroid/graphics/FontListParser$Font;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 302
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_5

    .line 303
    const/4 v10, 0x0

    const/4 v15, 0x0

    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 305
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 306
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 307
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 311
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 308
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 309
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_4
    if-eqz v15, :cond_2

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 308
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 311
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_5

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 313
    :cond_5
    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    .line 314
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/FontListParser$Font;->weight:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    .line 313
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 318
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "font":Landroid/graphics/FontListParser$Font;
    :cond_6
    return-object v8

    .line 311
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "font":Landroid/graphics/FontListParser$Font;
    :catchall_1
    move-exception v3

    move-object v4, v10

    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v10

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 92
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 93
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    if-ne p0, p1, :cond_0

    return v1

    .line 423
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 425
    check-cast v0, Landroid/graphics/Typeface;

    .line 427
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 414
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 411
    return-void

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 415
    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 437
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 438
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 439
    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemTypeface(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static putFlymeSystemFonts(Landroid/graphics/FontListParser$Alias;Landroid/graphics/Typeface;Ljava/util/Map;)V
    .locals 4
    .param p0, "alias"    # Landroid/graphics/FontListParser$Alias;
    .param p1, "newFace"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Alias;",
            "Landroid/graphics/Typeface;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const-string/jumbo v0, "persist.sys.flyme.medium_font"

    .local v0, "PROPERTY_FLYME_MEDIUM_FONT":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isUseMediumFont":Z
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    const-string/jumbo v3, "sans-serif-medium"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static putFlymeSystemFonts(Landroid/graphics/FontListParser$Family;Landroid/graphics/Typeface;Ljava/util/Map;)V
    .locals 4
    .param p0, "f"    # Landroid/graphics/FontListParser$Family;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Family;",
            "Landroid/graphics/Typeface;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const-string/jumbo v0, "persist.sys.flyme.medium_font"

    .local v0, "PROPERTY_FLYME_MEDIUM_FONT":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isUseMediumFont":Z
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    const-string/jumbo v3, "sans-serif-medium"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
