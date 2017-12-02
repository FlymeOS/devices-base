.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$Callback;,
        Landroid/graphics/drawable/Drawable$ConstantState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mLayoutDirection:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 180
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 183
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 184
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 185
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 177
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x2000

    const/4 v0, 0x0

    .line 1234
    if-nez p0, :cond_0

    .line 1235
    return-object v0

    .line 1238
    :cond_0
    invoke-static {v6, v7, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1240
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1241
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 1242
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1245
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1242
    return-object v0

    .line 1245
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1248
    return-object v0

    .line 1244
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 1245
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1244
    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    .line 1120
    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1122
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1124
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1122
    return-object v0

    .line 1120
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    goto :goto_0

    .line 1123
    :catchall_0
    move-exception v0

    .line 1124
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1123
    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    .line 1134
    if-nez p2, :cond_0

    .line 1135
    return-object v5

    .line 1144
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1153
    .local v3, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_1

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1154
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 1155
    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1156
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 1157
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 1158
    .local v2, "np":[B
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    .end local v2    # "np":[B
    .end local v3    # "pad":Landroid/graphics/Rect;
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1164
    .local v4, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    move-object v0, p0

    move-object v5, p3

    .line 1165
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1159
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v2    # "np":[B
    .restart local v3    # "pad":Landroid/graphics/Rect;
    :cond_2
    const/4 v2, 0x0

    .line 1160
    .local v2, "np":[B
    const/4 v3, 0x0

    .local v3, "pad":Landroid/graphics/Rect;
    goto :goto_0

    .line 1167
    .end local v2    # "np":[B
    .local v3, "pad":Landroid/graphics/Rect;
    :cond_3
    return-object v5
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    .line 1106
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1108
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1110
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1108
    return-object v0

    .line 1106
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    .line 1110
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1109
    throw v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1187
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 1191
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    .line 1192
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1196
    :cond_1
    if-eq v2, v4, :cond_2

    .line 1197
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1200
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1202
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 1203
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .prologue
    .line 1398
    if-eqz p2, :cond_0

    .line 1399
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0

    .line 1402
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 1432
    if-nez p1, :cond_0

    .line 1433
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 1435
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1516
    packed-switch p0, :pswitch_data_0

    .line 1523
    :pswitch_0
    return-object p1

    .line 1517
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1518
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1519
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1520
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1521
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1522
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1516
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .prologue
    .line 1491
    if-nez p0, :cond_1

    move v0, p1

    .line 1492
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0xa0

    .end local v0    # "densityDpi":I
    :cond_0
    return v0

    .line 1491
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method public static resolveOpacity(II)I
    .locals 3
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    const/4 v0, -0x3

    .line 913
    if-ne p0, p1, :cond_0

    .line 914
    return p0

    .line 916
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 917
    :cond_1
    return v2

    .line 919
    :cond_2
    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_4

    .line 920
    :cond_3
    return v0

    .line 922
    :cond_4
    if-eq p0, v1, :cond_5

    if-ne p1, v1, :cond_6

    .line 923
    :cond_5
    return v1

    .line 925
    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method static rethrowAsRuntimeException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1504
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1505
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1506
    throw v0
.end method

.method static scaleFromDensity(FII)F
    .locals 2
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    .line 1448
    int-to-float v0, p2

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method static scaleFromDensity(IIIZ)I
    .locals 4
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    .prologue
    .line 1471
    if-eqz p0, :cond_0

    if-ne p1, p2, :cond_1

    .line 1472
    :cond_0
    return p0

    .line 1475
    :cond_1
    mul-int v2, p0, p2

    int-to-float v2, v2

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1476
    .local v0, "result":F
    if-nez p3, :cond_2

    .line 1477
    float-to-int v2, v0

    return v2

    .line 1480
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1481
    .local v1, "rounded":I
    if-eqz v1, :cond_3

    .line 1482
    return v1

    .line 1483
    :cond_3
    if-lez p0, :cond_4

    .line 1484
    const/4 v2, 0x1

    return v2

    .line 1486
    :cond_4
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 852
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 654
    return-void
.end method

.method public clearMutated()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 532
    const/16 v0, 0xff

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    :cond_0
    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 1392
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 765
    return-object p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 684
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1000
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 987
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1027
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1028
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicHeight":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicHeight":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1013
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1014
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicWidth":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicWidth":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public abstract getOpacity()I
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 1051
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 1066
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1065
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1040
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1041
    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1257
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
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
    .line 1276
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1277
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1275
    return-void
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1289
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 434
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 1085
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 973
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 955
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 451
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 449
    :cond_0
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .prologue
    .line 834
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 206
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 210
    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, p2, :cond_4

    .line 212
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 216
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 203
    :cond_3
    return-void

    .line 211
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_3

    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 226
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v0, 0x0

    .line 407
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 406
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    .line 303
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 302
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 579
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 578
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 343
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 664
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 676
    return-void
.end method

.method public final setLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 497
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 498
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 499
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 785
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 786
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 787
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0

    .line 789
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 733
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 735
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 737
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 603
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 602
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 623
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 640
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 816
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 817
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 818
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 819
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 821
    :cond_0
    return v0

    .line 816
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 544
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 467
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 465
    :cond_0
    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    const/4 v1, 0x0

    .line 1411
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1412
    :cond_0
    return-object v1

    .line 1415
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1416
    .local v0, "color":I
    if-nez p1, :cond_2

    .line 1417
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 1420
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 1421
    invoke-virtual {p1, p3}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1422
    return-object p1
.end method
