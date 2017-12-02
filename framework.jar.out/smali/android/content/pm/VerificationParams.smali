.class public Landroid/content/pm/VerificationParams;
.super Ljava/lang/Object;
.source "VerificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VerificationParams$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_UID:I = -0x1

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "VerificationParams{"


# instance fields
.field private mInstallerUid:I

.field private final mOriginatingURI:Landroid/net/Uri;

.field private final mOriginatingUid:I

.field private final mReferrer:Landroid/net/Uri;

.field private final mVerificationURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Landroid/content/pm/VerificationParams$1;

    invoke-direct {v0}, Landroid/content/pm/VerificationParams$1;-><init>()V

    .line 201
    sput-object v0, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "verificationURI"    # Landroid/net/Uri;
    .param p2, "originatingURI"    # Landroid/net/Uri;
    .param p3, "referrer"    # Landroid/net/Uri;
    .param p4, "originatingUid"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    .line 67
    iput-object p2, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    .line 68
    iput-object p3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    .line 69
    iput p4, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    .line 195
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    .line 196
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerificationParams;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/VerificationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    if-ne p0, p1, :cond_0

    .line 107
    return v4

    .line 110
    :cond_0
    instance-of v1, p1, Landroid/content/pm/VerificationParams;

    if-nez v1, :cond_1

    .line 111
    return v3

    :cond_1
    move-object v0, p1

    .line 114
    nop

    nop

    .line 116
    .local v0, "other":Landroid/content/pm/VerificationParams;
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 117
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 118
    return v3

    .line 120
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    return v3

    .line 124
    :cond_3
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 125
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 126
    return v3

    .line 128
    :cond_4
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    return v3

    .line 132
    :cond_5
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v1, :cond_6

    .line 133
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 134
    return v3

    .line 136
    :cond_6
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 137
    return v3

    .line 140
    :cond_7
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    iget v2, v0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    if-eq v1, v2, :cond_8

    .line 141
    return v3

    .line 144
    :cond_8
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    iget v2, v0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    if-eq v1, v2, :cond_9

    .line 145
    return v3

    .line 148
    :cond_9
    return v4
.end method

.method public getInstallerUid()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return v0
.end method

.method public getOriginatingURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOriginatingUid()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    return v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerificationURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x3

    .line 156
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v1, :cond_2

    :goto_2
    mul-int/lit8 v1, v2, 0xb

    add-int/2addr v0, v1

    .line 158
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 159
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 161
    return v0

    .line 155
    .end local v0    # "hash":I
    :cond_0
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    .line 156
    .restart local v0    # "hash":I
    :cond_1
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_1

    .line 157
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public setInstallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 96
    iput p1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VerificationParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mVerificationURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v1, ",mOriginatingURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v1, ",mReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v1, ",mOriginatingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v1, ",mInstallerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 188
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
