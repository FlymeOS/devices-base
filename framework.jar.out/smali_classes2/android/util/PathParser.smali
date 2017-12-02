.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$PathData;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/util/PathParser;->nCreateEmptyPathData()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;I)J
    .locals 2
    .param p0, "pathString"    # Ljava/lang/String;
    .param p1, "stringLength"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathDataFromString(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(J)J
    .locals 2
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathData(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nFinalize(J)V

    return-void
.end method

.method static synthetic -wrap4(JJ)V
    .locals 0
    .param p0, "outDataPtr"    # J
    .param p2, "fromDataPtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/util/PathParser;->nSetPathData(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Landroid/util/PathParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z
    .locals 4
    .param p0, "pathDataFrom"    # Landroid/util/PathParser$PathData;
    .param p1, "pathDataTo"    # Landroid/util/PathParser$PathData;

    .prologue
    .line 54
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCanMorph(JJ)Z

    move-result v0

    return v0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4
    .param p0, "pathString"    # Ljava/lang/String;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Path string can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 34
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v3, p0, v1}, Landroid/util/PathParser;->nParseStringForPath(JLjava/lang/String;I)V

    .line 35
    return-object v0
.end method

.method public static createPathFromPathData(Landroid/graphics/Path;Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p0, "outPath"    # Landroid/graphics/Path;
    .param p1, "data"    # Landroid/util/PathParser$PathData;

    .prologue
    .line 45
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCreatePathFromPathData(JJ)V

    .line 44
    return-void
.end method

.method public static interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z
    .locals 7
    .param p0, "outData"    # Landroid/util/PathParser$PathData;
    .param p1, "fromData"    # Landroid/util/PathParser$PathData;
    .param p2, "toData"    # Landroid/util/PathParser$PathData;
    .param p3, "fraction"    # F

    .prologue
    .line 115
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 116
    iget-wide v4, p2, Landroid/util/PathParser$PathData;->mNativePathData:J

    move v6, p3

    .line 115
    invoke-static/range {v0 .. v6}, Landroid/util/PathParser;->nInterpolatePathData(JJJF)Z

    move-result v0

    return v0
.end method

.method private static native nCanMorph(JJ)Z
.end method

.method private static native nCreateEmptyPathData()J
.end method

.method private static native nCreatePathData(J)J
.end method

.method private static native nCreatePathDataFromString(Ljava/lang/String;I)J
.end method

.method private static native nCreatePathFromPathData(JJ)V
.end method

.method private static native nFinalize(J)V
.end method

.method private static native nInterpolatePathData(JJJF)Z
.end method

.method private static native nParseStringForPath(JLjava/lang/String;I)V
.end method

.method private static native nSetPathData(JJ)V
.end method
