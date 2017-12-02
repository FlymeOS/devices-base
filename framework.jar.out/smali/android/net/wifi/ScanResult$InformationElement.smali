.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final EID_BSS_LOAD:I = 0xb

.field public static final EID_ERP:I = 0x2a

.field public static final EID_EXTENDED_CAPS:I = 0x7f

.field public static final EID_EXTENDED_SUPPORTED_RATES:I = 0x32

.field public static final EID_HT_OPERATION:I = 0x3d

.field public static final EID_INTERWORKING:I = 0x6b

.field public static final EID_ROAMING_CONSORTIUM:I = 0x6f

.field public static final EID_RSN:I = 0x30

.field public static final EID_SSID:I = 0x0

.field public static final EID_SUPPORTED_RATES:I = 0x1

.field public static final EID_TIM:I = 0x5

.field public static final EID_VHT_OPERATION:I = 0xc0

.field public static final EID_VSA:I = 0xdd


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 1
    .param p1, "rhs"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 338
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 336
    return-void
.end method
