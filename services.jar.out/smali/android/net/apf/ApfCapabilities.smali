.class public Landroid/net/apf/ApfCapabilities;
.super Ljava/lang/Object;
.source "ApfCapabilities.java"


# instance fields
.field public final apfPacketFormat:I

.field public final apfVersionSupported:I

.field public final maximumApfProgramSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "apfVersionSupported"    # I
    .param p2, "maximumApfProgramSize"    # I
    .param p3, "apfPacketFormat"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    .line 44
    iput p2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    .line 45
    iput p3, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    const-string/jumbo v0, "%s{version: %d, maxSize: %d format: %d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/apf/ApfCapabilities;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
