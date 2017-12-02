.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1

.field public static final UID_UNKNOWN:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public mode:I

.field public originatingUid:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1110
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 852
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 882
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 884
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 892
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 896
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 914
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 913
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 882
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 884
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 892
    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 896
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 924
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 926
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 928
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 918
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1071
    const-string/jumbo v0, "mode"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    const-string/jumbo v0, "installFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)V

    .line 1073
    const-string/jumbo v0, "installLocation"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1074
    const-string/jumbo v0, "sizeBytes"

    iget-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1075
    const-string/jumbo v0, "appPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1076
    const-string/jumbo v1, "appIcon"

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    const-string/jumbo v0, "appLabel"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1078
    const-string/jumbo v0, "originatingUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    const-string/jumbo v0, "originatingUid"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1080
    const-string/jumbo v0, "referrerUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    const-string/jumbo v0, "abiOverride"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1082
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    const-string/jumbo v0, "grantedRuntimePermissions"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1070
    return-void

    .line 1076
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowDowngrade(Z)V
    .locals 1
    .param p1, "allowDowngrade"    # Z

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1040
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 975
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 974
    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 982
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 981
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 966
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 965
    return-void
.end method

.method public setDontKillApp(Z)V
    .locals 1
    .param p1, "dontKillApp"    # Z

    .prologue
    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1061
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 1028
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1029
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1027
    return-void
.end method

.method public setInstallFlagsExternal()V
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1051
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1049
    return-void
.end method

.method public setInstallFlagsForcePermissionPrompt()V
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1055
    return-void
.end method

.method public setInstallFlagsInternal()V
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1035
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1033
    return-void
.end method

.method public setInstallLocation(I)V
    .locals 0
    .param p1, "installLocation"    # I

    .prologue
    .line 940
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 939
    return-void
.end method

.method public setOriginatingUid(I)V
    .locals 0
    .param p1, "originatingUid"    # I

    .prologue
    .line 1002
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 1001
    return-void
.end method

.method public setOriginatingUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "originatingUri"    # Landroid/net/Uri;

    .prologue
    .line 992
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 991
    return-void
.end method

.method public setReferrerUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "referrerUri"    # Landroid/net/Uri;

    .prologue
    .line 1012
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 1011
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "sizeBytes"    # J

    .prologue
    .line 953
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 952
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1094
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1098
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1100
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1102
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1104
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1093
    return-void
.end method
