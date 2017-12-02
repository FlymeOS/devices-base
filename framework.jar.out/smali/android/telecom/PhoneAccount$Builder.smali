.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mCapabilities:I

.field private mExtras:Landroid/os/Bundle;

.field private mGroupId:Ljava/lang/String;

.field private mHighlightColor:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mShortDescription:Ljava/lang/CharSequence;

.field private mSubscriptionAddress:Landroid/net/Uri;

.field private mSupportedAudioRoutes:I

.field private mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 226
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 232
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 233
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 251
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 252
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 253
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 254
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 255
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 259
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 260
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    .line 261
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedAudioRoutes()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 226
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 232
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 233
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 239
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 240
    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 238
    return-void
.end method


# virtual methods
.method public addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object p0

    .line 338
    :cond_1
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Landroid/telecom/PhoneAccount;
    .locals 15

    .prologue
    .line 426
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string/jumbo v0, "tel"

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    .line 430
    :cond_0
    new-instance v0, Landroid/telecom/PhoneAccount;

    .line 431
    iget-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 432
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 433
    iget-object v3, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 434
    iget v4, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 435
    iget-object v5, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 436
    iget v6, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 437
    iget-object v7, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 438
    iget-object v8, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 439
    iget-object v9, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 440
    iget-object v10, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    .line 441
    iget v11, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 442
    iget-boolean v12, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 443
    iget-object v13, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 430
    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 272
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 273
    return-object p0
.end method

.method public setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 294
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 295
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 370
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    .line 371
    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 404
    :goto_0
    return-object p0

    .line 402
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 315
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 316
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 304
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 305
    return-object p0
.end method

.method public setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 383
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 326
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 327
    return-object p0
.end method

.method public setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 283
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 284
    return-object p0
.end method

.method public setSupportedAudioRoutes(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "routes"    # I

    .prologue
    .line 415
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 416
    return-object p0
.end method

.method public setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 352
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    return-object p0

    .line 353
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uriScheme$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_0
.end method
