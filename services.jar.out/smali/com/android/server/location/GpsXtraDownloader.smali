.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    const-string/jumbo v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "count":I
    const-string/jumbo v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "server1":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "server2":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 60
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 61
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 64
    :cond_2
    const-string/jumbo v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 66
    const-string/jumbo v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 71
    :goto_0
    if-nez v1, :cond_4

    .line 72
    const-string/jumbo v7, "GpsXtraDownloader"

    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 53
    :goto_1
    return-void

    .line 68
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v7, v8

    move v2, v1

    .line 78
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

    .line 79
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 82
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 83
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
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Downloading XTRA data from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const/4 v4, 0x0

    .line 116
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 118
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v9, "Accept"

    .line 119
    const-string/jumbo v10, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    .line 117
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v9, "x-wap-profile"

    .line 122
    const-string/jumbo v10, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    .line 120
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget v9, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 127
    .local v8, "statusCode":I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_3

    .line 128
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP error downloading gps XTRA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    const/4 v9, 0x0

    .line 148
    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    :cond_2
    return-object v9

    .line 132
    :cond_3
    const/4 v10, 0x0

    const/4 v6, 0x0

    .local v6, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 133
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 136
    .local v2, "buffer":[B
    :cond_4
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_b

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 138
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    int-to-long v12, v9

    const-wide/32 v14, 0xf4240

    cmp-long v9, v12, v14

    if-lez v9, :cond_4

    .line 139
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v11, "XTRA file too large"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 144
    :cond_5
    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_0
    if-eqz v10, :cond_9

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catch_0
    move-exception v7

    .line 146
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v10, "Error downloading gps XTRA: "

    invoke-static {v9, v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :cond_7
    if-eqz v4, :cond_8

    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 152
    :cond_8
    const/4 v9, 0x0

    return-object v9

    .line 144
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_1
    move-exception v10

    goto :goto_0

    .line 140
    :cond_9
    const/4 v9, 0x0

    .line 148
    if-eqz v4, :cond_a

    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    :cond_a
    return-object v9

    .line 143
    :cond_b
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v9

    .line 144
    if-eqz v6, :cond_c

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :goto_1
    if-eqz v10, :cond_e

    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 147
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catchall_0
    move-exception v9

    .line 148
    if-eqz v4, :cond_d

    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_d
    throw v9

    .line 144
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_2
    move-exception v10

    goto :goto_1

    .line 148
    :cond_e
    if-eqz v4, :cond_f

    .line 149
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    :cond_f
    return-object v9

    .line 144
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v9

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v10

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_2
    if-eqz v6, :cond_10

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_10
    :goto_3
    if-eqz v10, :cond_12

    :try_start_a
    throw v10

    :catch_4
    move-exception v11

    if-nez v10, :cond_11

    move-object v10, v11

    goto :goto_3

    :cond_11
    if-eq v10, v11, :cond_10

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_12
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v9

    goto :goto_2
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 91
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 92
    return-object v3

    .line 96
    .end local v0    # "result":[B
    :cond_0
    if-nez v0, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    .local v0, "result":[B
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 105
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    .line 108
    .end local v0    # "result":[B
    :cond_2
    return-object v0
.end method
