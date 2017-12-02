.class public final Landroid/view/inputmethod/InputContentInfo;
.super Ljava/lang/Object;
.source "InputContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputContentInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mDescription:Landroid/content/ClipDescription;

.field private final mLinkUri:Landroid/net/Uri;

.field private mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Landroid/view/inputmethod/InputContentInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputContentInfo$1;-><init>()V

    .line 230
    sput-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;
    .param p3, "linkUri"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    .line 75
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    .line 76
    iput-object p2, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    .line 77
    iput-object p3, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    .line 218
    sget-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    .line 219
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    .line 216
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InputContentInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z
    .locals 4
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "linkUri"    # Landroid/net/Uri;
    .param p3, "throwException"    # Z

    .prologue
    const/4 v3, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 106
    if-eqz p3, :cond_0

    .line 107
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "contentUri"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    return v3

    .line 111
    :cond_1
    if-nez p1, :cond_3

    .line 112
    if-eqz p3, :cond_2

    .line 113
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "description"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_2
    return v3

    .line 117
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string/jumbo v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 119
    if-eqz p3, :cond_4

    .line 120
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "contentUri must have content scheme"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_4
    return v3

    .line 124
    :cond_5
    if-eqz p2, :cond_6

    .line 125
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 127
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 128
    .restart local v1    # "scheme":Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_8

    .line 129
    new-instance v2, Ljava/security/InvalidParameterException;

    .line 130
    const-string/jumbo v3, "linkUri must have either http or https scheme"

    .line 129
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_8
    return v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public releasePermission()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v1, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public requestPermission()V
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->take()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V
    .locals 2
    .param p1, "token"    # Lcom/android/internal/inputmethod/IInputContentUriToken;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "URI token is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    .line 158
    return-void
.end method

.method public validate()Z
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    iget-object v2, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 205
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 206
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 208
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 204
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
