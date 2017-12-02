.class public Landroid/app/assist/AssistContent;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistContent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/assist/AssistContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClipData:Landroid/content/ClipData;

.field private final mExtras:Landroid/os/Bundle;

.field private mIntent:Landroid/content/Intent;

.field private mIsAppProvidedIntent:Z

.field private mIsAppProvidedWebUri:Z

.field private mStructuredData:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Landroid/app/assist/AssistContent$1;

    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    .line 209
    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 17
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 17
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 164
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 151
    return-void

    :cond_4
    move v0, v2

    .line 164
    goto :goto_0

    :cond_5
    move v1, v2

    .line 166
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getStructuredData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAppProvidedIntent()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    return v0
.end method

.method public isAppProvidedWebUri()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    return v0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 85
    return-void
.end method

.method public setDefaultIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 38
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 39
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 40
    iput-object v1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 41
    if-eqz p1, :cond_1

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 36
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 59
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public setStructuredData(Ljava/lang/String;)V
    .locals 0
    .param p1, "structuredData"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setWebUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 123
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 121
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 205
    return-void
.end method

.method writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_0
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    :goto_1
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :goto_2
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    :goto_3
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 196
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 192
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    move v0, v2

    .line 194
    goto :goto_4

    :cond_5
    move v1, v2

    .line 196
    goto :goto_5
.end method
