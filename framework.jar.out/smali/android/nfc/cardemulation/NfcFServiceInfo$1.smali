.class final Landroid/nfc/cardemulation/NfcFServiceInfo$1;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/NfcFServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/cardemulation/NfcFServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 273
    sget-object v8, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 274
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "systemCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 277
    .local v4, "dynamicSystemCode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 280
    .end local v4    # "dynamicSystemCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "nfcid2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 282
    .local v6, "dynamicNfcid2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .end local v6    # "dynamicNfcid2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 286
    .local v7, "uid":I
    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-direct/range {v0 .. v7}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 293
    new-array v0, p1, [Landroid/nfc/cardemulation/NfcFServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    return-object v0
.end method
