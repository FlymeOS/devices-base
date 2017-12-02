.class public Landroid/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mData:[B

.field private mMimeType:Ljava/lang/String;

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Landroid/drm/ProcessedData;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "data is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    .line 125
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getAccountId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "data: "

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    iget-object v2, p0, Landroid/drm/DrmRights;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private instantiate(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p1}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v2

    iput-object v2, p0, Landroid/drm/DrmRights;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    const-string/jumbo v3, "data: "

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    iget-object v3, p0, Landroid/drm/DrmRights;->mData:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
