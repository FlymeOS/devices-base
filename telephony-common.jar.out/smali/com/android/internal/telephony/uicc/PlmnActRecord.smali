.class public Lcom/android/internal/telephony/uicc/PlmnActRecord;
.super Ljava/lang/Object;
.source "PlmnActRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/PlmnActRecord$1;
    }
.end annotation


# static fields
.field public static final ACCESS_TECH_CDMA2000_1XRTT:I = 0x10

.field public static final ACCESS_TECH_CDMA2000_HRPD:I = 0x20

.field public static final ACCESS_TECH_EUTRAN:I = 0x4000

.field public static final ACCESS_TECH_GSM:I = 0x80

.field public static final ACCESS_TECH_GSM_COMPACT:I = 0x40

.field public static final ACCESS_TECH_RESERVED:I = 0x3f0f

.field public static final ACCESS_TECH_UTRAN:I = 0x8000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/PlmnActRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODED_LENGTH:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "PlmnActRecord"

.field private static final VDBG:Z = true


# instance fields
.field public final accessTechs:I

.field public final plmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;-><init>()V

    .line 47
    sput-object v0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "accessTechs"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/internal/telephony/uicc/PlmnActRecord;)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "accessTechs"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string/jumbo v0, "PlmnActRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating PlmnActRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 67
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    .line 64
    return-void
.end method

.method private accessTechString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-nez v1, :cond_0

    .line 77
    const-string/jumbo v1, "NONE"

    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 82
    const-string/jumbo v1, "UTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2

    .line 85
    const-string/jumbo v1, "EUTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 88
    const-string/jumbo v1, "GSM|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 91
    const-string/jumbo v1, "GSM_COMPACT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 94
    const-string/jumbo v1, "CDMA2000_HRPD|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 97
    const-string/jumbo v1, "CDMA2000_1XRTT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x3f0f

    if-eqz v1, :cond_7

    .line 100
    const-string/jumbo v1, "UNKNOWN:%x|"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v3, v3, 0x3f0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    .locals 7
    .param p0, "recordBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 115
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 117
    :cond_0
    const-string/jumbo v5, "PlmnActRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Malformed PlmnActRecord, bytes: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 118
    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 117
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v4

    .line 116
    :cond_1
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_0

    .line 121
    array-length v3, p0

    div-int/lit8 v1, v3, 0x5

    .line 122
    .local v1, "numRecords":I
    const-string/jumbo v3, "PlmnActRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extracting Logs, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 126
    .local v2, "records":[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 127
    new-instance v3, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    mul-int/lit8 v4, v0, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>([BI)V

    aput-object v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "numRecords":I
    .end local v2    # "records":[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    :cond_2
    move-object v3, v4

    .line 118
    goto :goto_0

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "numRecords":I
    .restart local v2    # "records":[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string/jumbo v0, "{PLMN=%s,AccessTechs=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
