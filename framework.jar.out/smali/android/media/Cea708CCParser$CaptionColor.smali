.class public Landroid/media/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionColor"
.end annotation


# static fields
.field private static final COLOR_MAP:[I

.field public static final OPACITY_FLASH:I = 0x1

.field private static final OPACITY_MAP:[I

.field public static final OPACITY_SOLID:I = 0x0

.field public static final OPACITY_TRANSLUCENT:I = 0x2

.field public static final OPACITY_TRANSPARENT:I = 0x3


# instance fields
.field public final blue:I

.field public final green:I

.field public final opacity:I

.field public final red:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 838
    const/16 v0, 0xf

    const/16 v1, 0xf0

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    .line 839
    const/16 v0, 0xfe

    const/16 v1, 0x80

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    .line 832
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "opacity"    # I
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    .line 848
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    .line 849
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    .line 850
    iput p4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    .line 846
    return-void
.end method


# virtual methods
.method public getArgbValue()I
    .locals 5

    .prologue
    .line 855
    sget-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    iget v1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    aget v0, v0, v1

    sget-object v1, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    iget v2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    aget v1, v1, v2

    sget-object v2, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    iget v3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    aget v2, v2, v3

    sget-object v3, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    iget v4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    aget v3, v3, v4

    .line 854
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
