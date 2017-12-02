.class public Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientPrefix:Ljava/lang/String;

.field private mDestinationPort:I

.field private mOriginatingNumbers:Ljava/util/List;
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
.method static synthetic -get0(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return v0
.end method

.method static synthetic -get2(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, "//VVM"

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 71
    sget-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    .line 68
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings;)V

    return-object v0
.end method

.method public setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 2
    .param p1, "clientPrefix"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client prefix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0
    .param p1, "destinationPort"    # I

    .prologue
    .line 110
    iput p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    .line 111
    return-object p0
.end method

.method public setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "originatingNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Originating numbers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 100
    return-object p0
.end method
