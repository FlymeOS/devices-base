.class public Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;
.super Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.source "NoBandChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/NoBandChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoBandChannelCollection"
.end annotation


# instance fields
.field private mAllChannels:Z

.field private final mChannels:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/scanner/NoBandChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/NoBandChannelHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->this$0:Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    .line 72
    return-void
.end method


# virtual methods
.method public addBand(I)V
    .locals 1
    .param p1, "band"    # I

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    .line 82
    :cond_0
    return-void
.end method

.method public addChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 120
    return-void
.end method

.method public containsBand(I)Z
    .locals 1
    .param p1, "band"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    return v0

    .line 98
    :cond_0
    return v0
.end method

.method public containsChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
    .locals 4
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p2, "maxChannels"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 153
    :cond_0
    const/4 v2, 0x7

    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 154
    iput v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 155
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 151
    :cond_1
    return-void

    .line 157
    :cond_2
    iput v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 158
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 159
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 162
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 163
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aput-object v0, v2, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getContainingChannelsFromBand(I)Ljava/util/Set;
    .locals 1
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public getMissingChannelsFromBand(I)Ljava/util/Set;
    .locals 1
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public getSupplicantScanFreqs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public isAllChannels()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public partiallyContainsBand(I)Z
    .locals 1
    .param p1, "band"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
