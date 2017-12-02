.class public final Landroid/webkit/WebViewProviderInfo;
.super Ljava/lang/Object;
.source "WebViewProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewProviderInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/webkit/WebViewProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final availableByDefault:Z

.field public final description:Ljava/lang/String;

.field public final isFallback:Z

.field public final packageName:Ljava/lang/String;

.field public final signatures:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/webkit/WebViewProviderInfo$1;

    invoke-direct {v0}, Landroid/webkit/WebViewProviderInfo$1;-><init>()V

    .line 41
    sput-object v0, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "availableByDefault"    # Z
    .param p4, "isFallback"    # Z
    .param p5, "signatures"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 36
    iput-boolean p4, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 37
    iput-object p5, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v1, v2

    .line 70
    goto :goto_1
.end method
