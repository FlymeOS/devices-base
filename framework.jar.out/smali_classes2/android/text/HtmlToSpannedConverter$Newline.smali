.class Landroid/text/HtmlToSpannedConverter$Newline;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Newline"
.end annotation


# instance fields
.field private mNumNewlines:I


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Newline;)I
    .locals 1

    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numNewlines"    # I

    .prologue
    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    .line 1330
    return-void
.end method
