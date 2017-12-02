.class Landroid/text/HtmlToSpannedConverter$Foreground;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private mForegroundColor:I


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Foreground;)I
    .locals 1

    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "foregroundColor"    # I

    .prologue
    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    .line 1306
    return-void
.end method
