.class public final Landroid/net/wifi/nan/PublishSettings$Builder;
.super Ljava/lang/Object;
.source "PublishSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/PublishSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mPublishCount:I

.field mPublishType:I

.field mTtlSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/PublishSettings;
    .locals 5

    .prologue
    .line 201
    new-instance v0, Landroid/net/wifi/nan/PublishSettings;

    iget v1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishType:I

    iget v2, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishCount:I

    iget v3, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mTtlSec:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/nan/PublishSettings;-><init>(IIILandroid/net/wifi/nan/PublishSettings;)V

    return-object v0
.end method

.method public setPublishCount(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 2
    .param p1, "publishCount"    # I

    .prologue
    .line 169
    if-gez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid publishCount - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishCount:I

    .line 173
    return-object p0
.end method

.method public setPublishType(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 3
    .param p1, "publishType"    # I

    .prologue
    .line 150
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid publishType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishType:I

    .line 154
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    .prologue
    .line 189
    if-gez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mTtlSec:I

    .line 193
    return-object p0
.end method
