.class Landroid/text/HtmlToSpannedConverter$Alignment;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alignment"
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public constructor <init>(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1338
    return-void
.end method
