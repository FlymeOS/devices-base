.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;,
        Landroid/webkit/WebViewFactory$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    return v0
.end method

.method static synthetic -wrap0()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lib32"    # Ljava/lang/String;
    .param p1, "lib64"    # Ljava/lang/String;
    .param p2, "relro32"    # Ljava/lang/String;
    .param p3, "relro64"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 428
    if-eqz p0, :cond_2

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 431
    .local v4, "abi":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    invoke-direct {v6, v4, p0}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;Z)V

    .line 444
    .local v6, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 445
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-nez v0, :cond_3

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 447
    const-string/jumbo v1, "Native library paths to the WebView RelRo process must not be null!"

    .line 446
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :catch_0
    move-exception v8

    .line 455
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 426
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 428
    .end local v4    # "abi":Ljava/lang/String;
    .end local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .restart local v4    # "abi":Ljava/lang/String;
    goto :goto_0

    .line 445
    .restart local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 449
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 450
    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    const/16 v5, 0x40d

    move-object v2, p1

    .line 449
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    .line 452
    .local v7, "pid":I
    if-gtz v7, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static fetchPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 107
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v2, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private static getChromiumProviderClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 222
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 223
    const/4 v5, 0x3

    .line 221
    invoke-virtual {v2, v4, v5}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 224
    .local v3, "webViewContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 225
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 224
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 226
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 227
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v4, "Class.forName()"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :try_start_1
    const-string/jumbo v4, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 232
    const-wide/16 v6, 0x10

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 229
    return-object v4

    .line 231
    :catchall_0
    move-exception v4

    .line 232
    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 231
    throw v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local v3    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v4, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "abiList"    # [Ljava/lang/String;
    .param p2, "nativeLibFileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 357
    const/4 v4, 0x0

    .local v4, "z":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .local v5, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    array-length v8, p1

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v0, p1, v6

    .line 359
    .local v0, "abi":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "entry":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 361
    .local v2, "e":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    if-nez v9, :cond_2

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "!/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 368
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 366
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 367
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    :goto_2
    new-instance v6, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v6, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 363
    :cond_1
    return-object v6

    .line 358
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_3
    if-eqz v7, :cond_8

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v7

    goto :goto_3

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v6

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_5
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_6
    if-eqz v7, :cond_7

    :try_start_8
    throw v7

    .line 366
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 369
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :cond_8
    const-string/jumbo v6, ""

    return-object v6

    .line 368
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    goto :goto_5

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .local v4, "z":Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 9

    .prologue
    .line 145
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 148
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 150
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 151
    .local v3, "uid":I
    if-eqz v3, :cond_1

    goto :goto_flyme_0

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 152
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 153
    const-string/jumbo v6, "For security reasons, WebView is not allowed in privileged processes"

    .line 152
    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 156
    :cond_2

    :goto_flyme_0

    :try_start_2
    const-string/jumbo v4, "WebViewFactory.getProvider()"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v2

    .line 160
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 161
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string/jumbo v4, "providerClass.newInstance()"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/webkit/WebViewDelegate;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 164
    new-instance v7, Landroid/webkit/WebViewDelegate;

    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    sput-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 166
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    const-wide/16 v6, 0x10

    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 175
    const-wide/16 v6, 0x10

    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    .line 166
    return-object v4

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v6, "error instantiating provider"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 171
    const-wide/16 v6, 0x10

    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 170
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 174
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catchall_2
    move-exception v4

    .line 175
    const-wide/16 v6, 0x10

    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 174
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 184
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    const-string/jumbo v5, " (code "

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    const-string/jumbo v5, ")"

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v3, "WebViewFactory.loadNativeLibrary()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadNativeLibrary()I

    .line 189
    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 191
    const-string/jumbo v3, "WebViewFactory.getChromiumProviderClass()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getChromiumProviderClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 198
    const-wide/16 v4, 0x10

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    return-object v3

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error loading provider"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :catchall_0
    move-exception v3

    .line 198
    const-wide/16 v4, 0x10

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 197
    throw v3
    :try_end_4
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_4 .. :try_end_4} :catch_1

    .line 200
    :catch_1
    move-exception v0

    .line 206
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_5
    const-string/jumbo v3, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v3

    return-object v3

    .line 207
    :catch_2
    move-exception v2

    .line 210
    .local v2, "e2":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "Chromium WebView package does not exist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 529
    const-string/jumbo v0, "webviewupdate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    return-object v1
.end method

.method private static getWebViewNativeLibraryPaths()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 374
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 375
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "NATIVE_LIB_FILE_NAME":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    .line 380
    .local v5, "primaryArchIs64bit":Z
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 382
    if-eqz v5, :cond_2

    .line 384
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 385
    .local v4, "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 403
    .local v3, "path32":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 407
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 408
    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 407
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 416
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 417
    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 416
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    return-object v6

    .line 388
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 389
    .restart local v4    # "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 391
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 393
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 394
    .restart local v4    # "path64":Ljava/lang/String;
    const-string/jumbo v3, ""

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 397
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_4
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 398
    .restart local v3    # "path32":Ljava/lang/String;
    const-string/jumbo v4, ""

    .restart local v4    # "path64":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWebViewPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 101
    const v1, 0x104004d

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadNativeLibrary()I
    .locals 8

    .prologue
    .line 498
    sget-boolean v4, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-nez v4, :cond_0

    .line 499
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "can\'t load with relro file; address space not reserved"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v4, 0x2

    return v4

    .line 504
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/webkit/IWebViewUpdateService;->waitForRelroCreationCompleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "args":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 513
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 514
    const-string/jumbo v6, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 515
    const-string/jumbo v7, "/data/misc/shared_relro/libwebviewchromium64.relro"

    .line 512
    invoke-static {v4, v5, v6, v7}, Landroid/webkit/WebViewFactory;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 516
    .local v3, "result":I
    if-eqz v3, :cond_1

    .line 517
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "failed to load with relro file, proceeding without"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :cond_1
    return v3

    .line 505
    .end local v0    # "args":[Ljava/lang/String;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "error waiting for relro creation, proceeding without"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v4, 0x3

    return v4

    .line 522
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 523
    .local v2, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "Failed to list WebView package libraries for loadNativeLibrary"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v4, 0x4

    return v4
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Landroid/webkit/WebViewFactory;->fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 138
    if-eqz p0, :cond_0

    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadNativeLibrary()I

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewUpdateInstalled()V
    .locals 21

    .prologue
    .line 300
    const/4 v5, 0x0

    .line 302
    .local v5, "nativeLibs":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "nativeLibs":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 304
    const-wide/16 v6, 0x0

    .line 306
    .local v6, "newVmSize":J
    const/4 v13, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v16, v13

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    aget-object v8, v5, v16

    .line 307
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v13, v16, 0x1

    move/from16 v16, v13

    goto :goto_0

    .line 309
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 311
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 314
    :cond_2
    const-string/jumbo v13, "!/"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 315
    const-string/jumbo v13, "!/"

    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, "split":[Ljava/lang/String;
    array-length v13, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 317
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/util/zip/ZipFile;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .local v12, "z":Ljava/util/zip/ZipFile;
    const/4 v13, 0x1

    :try_start_2
    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 319
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v13

    if-nez v13, :cond_6

    .line 320
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    .line 326
    if-eqz v12, :cond_3

    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_2
    if-eqz v14, :cond_0

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 324
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v11, v12

    .line 325
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_5
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "error reading APK file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "error sizing load for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 345
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 347
    .local v10, "t":Ljava/lang/Throwable;
    const-string/jumbo v13, "WebViewFactory"

    const-string/jumbo v14, "error preparing webview native library"

    invoke-static {v13, v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v6    # "newVmSize":J
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 299
    return-void

    .line 326
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "newVmSize":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v14

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_5
    if-eqz v14, :cond_4

    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_3
    move-exception v14

    goto :goto_5

    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v13

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    :goto_6
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v20, v14

    move-object v14, v13

    move-object/from16 v13, v20

    :goto_7
    if-eqz v11, :cond_8

    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_8
    if-eqz v14, :cond_a

    :try_start_a
    throw v14

    .line 324
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    if-nez v14, :cond_9

    move-object v14, v15

    goto :goto_8

    :cond_9
    if-eq v14, v15, :cond_8

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 340
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_b
    const-wide/16 v14, 0x2

    mul-long/2addr v14, v6

    const-wide/32 v16, 0x6400000

    :try_start_b
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 341
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Setting new address space to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v13, "persist.sys.webview.vmsize"

    .line 343
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 342
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 326
    .restart local v4    # "f":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    goto :goto_7

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v13

    move-object v11, v12

    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .local v11, "z":Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v13

    move-object v11, v12

    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    goto :goto_6
.end method

.method public static prepareWebViewInSystemServer()V
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "nativePaths":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    .end local v0    # "nativePaths":[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 271
    return-void

    .line 275
    .restart local v0    # "nativePaths":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "WebViewFactory"

    const-string/jumbo v3, "error preparing webview native library"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 290
    invoke-static {v1, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 293
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 295
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void
.end method

.method public static prepareWebViewInZygote()V
    .locals 6

    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v3, "webviewchromium_loader"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v3, "persist.sys.webview.vmsize"

    .line 248
    const-wide/32 v4, 0x6400000

    .line 247
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 249
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->nativeReserveAddressSpace(J)Z

    move-result v3

    sput-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    .line 251
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-eqz v3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reserving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 257
    const-string/jumbo v5, " bytes of address space failed"

    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 261
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error preparing native loader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
