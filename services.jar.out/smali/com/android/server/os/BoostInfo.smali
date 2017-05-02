.class Lcom/android/server/os/BoostInfo;
.super Ljava/lang/Object;
.source "BoostInfo.java"


# instance fields
.field private mBoostName:Ljava/lang/String;

.field private mConfigArrays:[Ljava/lang/String;

.field private mConfigString:Ljava/lang/String;

.field private mFinalArrays:[Ljava/lang/String;

.field private mTimeout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boostValue"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/os/BoostInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "boostValue"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private convertArrayFormat([Ljava/lang/String;)V
    .locals 5
    .param p1, "configArrays"    # [Ljava/lang/String;

    .prologue
    .line 50
    array-length v2, p1

    div-int/lit8 v1, v2, 0x3

    .line 51
    .local v1, "newArrayLength":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v0, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 54
    const-string/jumbo v4, " "

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 54
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string/jumbo v4, " "

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, p1, v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configArrays"    # [Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .prologue
    .line 78
    array-length v2, p1

    div-int/lit8 v1, v2, 0x3

    .line 79
    .local v1, "newArrayLength":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v0, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    const-string/jumbo v4, " "

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    const-string/jumbo v4, " "

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method getBoostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultBoostConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    return-object v0
.end method

.method getFinalBoostConfig()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public updateTimeout(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    iput-object v1, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/os/BoostInfo;->convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
