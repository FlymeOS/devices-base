.class public Landroid/content/res/flymetheme/FlymeThemeZipFile;
.super Ljava/lang/Object;
.source "FlymeThemeZipFile.java"


# static fields
.field private static final PROPERTY_KEY_USE_FLYME_ICON_STYLE:Ljava/lang/String; = "persist.sys.use.flyme.icon"


# instance fields
.field private mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

.field private mNeedLoadSystemFile:Z

.field private mNeedLoadThemeFile:Z

.field private mSystemDefZipfFile:Ljava/util/zip/ZipFile;

.field private mUseFlymeIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    const-string v0, "persist.sys.use.flyme.icon"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlymeThemeZipFile: mUseFlymeIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    return-void
.end method

.method private get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "FlymeThemeZipFile: get3rdPartRes: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.meizu.customizecenter/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "zipFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    if-eqz v5, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FlymeThemeZipFile: packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FlymeThemeZipFile: filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    const/16 v5, 0x280

    iput v5, p3, Landroid/util/TypedValue;->density:I

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_2
    :goto_2
    return-object v3

    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iput-object v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    goto :goto_1

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getSystemRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-nez v6, :cond_1

    const-string v6, "icons"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v6, "FlymeThemeZipFile: getSystemRes: start"

    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/customizecenter/theme/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "zipDefFilePath":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    if-eqz v6, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-filePath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    :try_start_1
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    goto/16 :goto_0
.end method

.method private replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old-------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    const-string v2, "440dpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xhdpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "drawable-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawable-640dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .end local v1    # "newPath":Ljava/lang/String;
    .end local p1    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .restart local p1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemDefZipfFile:Ljava/util/zip/ZipFile;

    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    :cond_1
    iput-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    iput-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadSystemFile:Z

    const-string v1, "persist.sys.use.flyme.icon"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean: mUseFlymeIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EMPTY"
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    return-void
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v1, 0x0

    .local v1, "iStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomizeTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseFlymeTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getSystemRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method
