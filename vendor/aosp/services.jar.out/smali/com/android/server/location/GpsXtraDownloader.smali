.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "count":I
    const-string/jumbo v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "server1":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "server2":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 53
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 54
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_2
    const-string/jumbo v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    const-string/jumbo v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 64
    :goto_0
    if-nez v1, :cond_4

    .line 65
    const-string/jumbo v7, "GpsXtraDownloader"

    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 46
    :goto_1
    return-void

    .line 61
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v7, v8

    move v2, v1

    .line 71
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 72
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 75
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 76
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 105
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "GpsXtraDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Downloading XTRA data from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 111
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v4, "Accept"

    .line 112
    const-string/jumbo v5, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    .line 110
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v4, "x-wap-profile"

    .line 115
    const-string/jumbo v5, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    .line 113
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 119
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    .line 120
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "GpsXtraDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HTTP error downloading gps XTRA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    :cond_2
    return-object v7

    .line 124
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 128
    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    :cond_4
    return-object v4

    .line 125
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v2

    .line 126
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-boolean v4, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "GpsXtraDownloader"

    const-string/jumbo v5, "Error downloading gps XTRA: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :cond_5
    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    :cond_6
    return-object v7

    .line 127
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 128
    if-eqz v1, :cond_7

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 127
    :cond_7
    throw v4
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 84
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 85
    return-object v3

    .line 89
    .end local v0    # "result":[B
    :cond_0
    if-nez v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    .local v0, "result":[B
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 94
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 95
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 98
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    .line 101
    .end local v0    # "result":[B
    :cond_2
    return-object v0
.end method
