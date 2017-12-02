.class Landroid/text/HtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Font"
.end annotation


# instance fields
.field public mFace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "face"    # Ljava/lang/String;

    .prologue
    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    .line 1290
    return-void
.end method
