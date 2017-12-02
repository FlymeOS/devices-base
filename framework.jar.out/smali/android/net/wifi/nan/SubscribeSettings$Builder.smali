.class public final Landroid/net/wifi/nan/SubscribeSettings$Builder;
.super Ljava/lang/Object;
.source "SubscribeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mSubscribeCount:I

.field mSubscribeType:I

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
.method public build()Landroid/net/wifi/nan/SubscribeSettings;
    .locals 5

    .prologue
    .line 202
    new-instance v0, Landroid/net/wifi/nan/SubscribeSettings;

    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeType:I

    iget v2, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeCount:I

    iget v3, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mTtlSec:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/nan/SubscribeSettings;-><init>(IIILandroid/net/wifi/nan/SubscribeSettings;)V

    return-object v0
.end method

.method public setSubscribeCount(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 2
    .param p1, "subscribeCount"    # I

    .prologue
    .line 170
    if-gez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid subscribeCount - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeCount:I

    .line 174
    return-object p0
.end method

.method public setSubscribeType(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 3
    .param p1, "subscribeType"    # I

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

    const-string/jumbo v2, "Invalid subscribeType - "

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
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeType:I

    .line 154
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    .prologue
    .line 190
    if-gez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mTtlSec:I

    .line 194
    return-object p0
.end method
