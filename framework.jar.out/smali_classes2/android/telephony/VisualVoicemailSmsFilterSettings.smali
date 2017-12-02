.class public Landroid/telephony/VisualVoicemailSmsFilterSettings;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailSmsFilterSettings$1;,
        Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLIENT_PREFIX:Ljava/lang/String; = "//VVM"

.field public static final DEFAULT_DESTINATION_PORT:I = -0x1

.field public static final DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESTINATION_PORT_ANY:I = -0x1

.field public static final DESTINATION_PORT_DATA_SMS:I = -0x2


# instance fields
.field public final clientPrefix:Ljava/lang/String;

.field public final destinationPort:I

.field public final originatingNumbers:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    .line 145
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;-><init>()V

    .line 144
    sput-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->-get0(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->-get2(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    .line 141
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->-get1(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 0
    .param p1, "builder"    # Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    iget v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
