.class public Landroid/content/res/flymetheme/FlymeThemeResource;
.super Ljava/lang/Object;
.source "FlymeThemeResource.java"


# instance fields
.field private mColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/flymetheme/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/flymetheme/DimensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingLoad:Z

.field private mOwner:Landroid/content/res/ResourcesImpl;

.field private mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

.field private mPackageName:Ljava/lang/String;

.field private mZipManager:Landroid/content/res/flymetheme/MtpkManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/ResourcesImpl;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mDimensions:Ljava/util/Map;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 36
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v0}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 38
    new-instance v0, Landroid/content/res/flymetheme/PackageValueHelper;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/PackageValueHelper;-><init>(Landroid/content/res/flymetheme/FlymeThemeResource;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

    .line 39
    iput-object p2, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/ResourcesImpl;

    .line 40
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/MtpkManager;->setSystemThemeManager(Landroid/content/res/flymetheme/MtpkManager;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 35
    return-void
.end method

.method public static get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "iStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    .line 153
    .local v1, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1, p0, v2}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 156
    .end local v0    # "iStream":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public static getDefaultActivityIcon()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 201
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 202
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 203
    const-string/jumbo v2, "def_icon.png"

    .line 204
    .local v2, "resPath":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 207
    .end local v1    # "iStream":Ljava/io/InputStream;
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 209
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 210
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_1
    :goto_0
    return-object v3

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShortcutBackguard()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 182
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 183
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 184
    const-string/jumbo v2, "shortcut_background.png"

    .line 185
    .local v2, "resPath":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 188
    .end local v1    # "iStream":Ljava/io/InputStream;
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 191
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_1
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v0

    .line 46
    .local v0, "systemThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, v0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    return-object v1

    .line 49
    :cond_0
    return-object v2
.end method

.method public static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 162
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v5

    .line 163
    .local v5, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v5, :cond_0

    .line 164
    move-object v3, p0

    .line 165
    .local v3, "resPath":Ljava/lang/String;
    invoke-virtual {v5, p0, v6}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 168
    .end local v2    # "iStream":Ljava/io/InputStream;
    .end local v3    # "resPath":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 169
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v4    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v4

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private parseColorsFromXml(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 60
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 61
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 62
    .local v3, "reader":Lorg/xml/sax/XMLReader;
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 63
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .end local v3    # "reader":Lorg/xml/sax/XMLReader;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :cond_1
    :goto_0
    return-void

    .line 74
    .restart local v3    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Lorg/xml/sax/XMLReader;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz p1, :cond_1

    .line 72
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 74
    :catch_4
    move-exception v1

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz p1, :cond_1

    .line 72
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 74
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 71
    if-eqz p1, :cond_2

    .line 72
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 69
    :cond_2
    :goto_1
    throw v6

    .line 74
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public addColorValue(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # J
    .param p4, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/content/res/flymetheme/ColorInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/content/res/flymetheme/ColorInfo;-><init>(JLjava/lang/String;)V

    .line 89
    .local v0, "value":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz p4, :cond_0

    .line 90
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDimensionValue(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # I
    .param p3, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/content/res/flymetheme/DimensionInfo;

    invoke-direct {v0, p2, p3}, Landroid/content/res/flymetheme/DimensionInfo;-><init>(ILjava/lang/String;)V

    .line 105
    .local v0, "value":Landroid/content/res/flymetheme/DimensionInfo;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mDimensions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;
    .locals 8
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "resType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 250
    iget-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 252
    :cond_0
    move-object v0, p1

    .line 253
    .local v0, "overName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    if-ne v7, p2, :cond_5

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "flyme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 262
    .local v1, "retColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 263
    if-eq v7, p2, :cond_3

    if-ne v6, p2, :cond_4

    .line 264
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v2

    .line 265
    .local v2, "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-eqz v2, :cond_4

    .line 266
    invoke-virtual {v2, p1, v5}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .line 269
    .end local v2    # "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    :cond_4
    return-object v1

    .line 256
    .end local v1    # "retColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :cond_5
    if-ne v6, p2, :cond_1

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/flymetheme/ColorInfo;

    move-object v1, v3

    goto :goto_1
.end method

.method public getThemeFileStream(Ljava/lang/String;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resType"    # I
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 218
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/ResourcesImpl;

    if-nez v3, :cond_0

    .line 219
    return-object v4

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "iStream":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    if-ne v5, p2, :cond_2

    .line 224
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 246
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v1

    .line 226
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_2
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "iStream":Ljava/io/InputStream;
    goto :goto_0

    .line 228
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_3
    if-eq v5, p2, :cond_4

    const/4 v3, 0x1

    if-ne v3, p2, :cond_7

    .line 229
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "framework-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "filePath":Ljava/lang/String;
    if-ne v5, p2, :cond_5

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flyme-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_5
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 234
    .local v1, "iStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 235
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v2

    .line 236
    .local v2, "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v2, :cond_1

    .line 237
    if-ne v5, p2, :cond_6

    .line 238
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 240
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 244
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_7
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "iStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-nez v1, :cond_0

    .line 128
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 133
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 136
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 147
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 126
    return-void

    .line 141
    .local v0, "is":Ljava/io/InputStream;
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "theme_values.xml"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 143
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfig reload(), pkgName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, ", mZipManager = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/MtpkManager;->clean()V

    .line 116
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/MtpkManager;->setSystemThemeManager(Landroid/content/res/flymetheme/MtpkManager;)V

    .line 118
    :cond_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->clean()V

    .line 119
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 111
    return-void
.end method
