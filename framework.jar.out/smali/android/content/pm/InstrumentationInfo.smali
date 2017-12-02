.class public Landroid/content/pm/InstrumentationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "InstrumentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstrumentationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public credentialProtectedDataDir:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public deviceProtectedDataDir:Ljava/lang/String;

.field public functionalTest:Z

.field public handleProfiling:Z

.field public nativeLibraryDir:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public targetPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Landroid/content/pm/InstrumentationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstrumentationInfo$1;-><init>()V

    .line 128
    sput-object v0, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstrumentationInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/InstrumentationInfo;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 88
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 92
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 93
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 98
    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 99
    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0

    :cond_1
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstrumentationInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyTo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 160
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstrumentationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, " "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "}"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method
