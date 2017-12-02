.class Landroid/net/SntpClient$InvalidServerReplyException;
.super Ljava/lang/Exception;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidServerReplyException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method
